package rental.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import rental.service.IRentalService;
import rental.service.RentalServiceImpl;


@WebServlet("/rental/list.do")
public class RentalListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		 유저 정보 가져오기
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		
		
		IRentalService rentalService = RentalServiceImpl.getInstance();
		
		// 1-1. 유저가 빌린 렌탈 상품의 잔여기간 가져오기
		List<RentalDetailVO> rentalDateList = rentalService.selectListRentalDateSv(uv);
		
		// 1-2. 주문상세 테이블 - 유저가 빌린 렌탈 상품의 잔여기간이 0이하인 렌탈상품의 상태 렌탈종료로 변경하기
		int cnt = 0;
		
		for (RentalDetailVO rentalDetailVO : rentalDateList) {
			
			if (rentalDetailVO.getRestDate() < 1) {
				RentalDetailVO param = new RentalDetailVO();
				param.setOrdId(rentalDetailVO.getOrdId());
				
				cnt += rentalService.updateOrderStatusSv(param);
			}
		}
//		System.out.println("2. " + cnt);

		// 1-3. 유저넘버를 넣어서 유저가 렌탈한 상품 목록 불러오기
		List<RentalDetailVO> rentalList = rentalService.rentalListSv(uv);
		
		req.setAttribute("rentalList", rentalList);
		req.setAttribute("menu", "RentalList");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
	
}
