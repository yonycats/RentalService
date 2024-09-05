package rental.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import rental.service.IRentalService;
import rental.service.RentalServiceImpl;

@WebServlet("/rental/sortList.do")
public class RentalSortListController extends HttpServlet {

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
		// ++ 선택한 렌탈 상태에 따라서 해당 상품만 출력되게 하기
		RentalDetailVO rdv = new RentalDetailVO();
		String odStatus = req.getParameter("status");
		String userNo = String.valueOf(uv.getUserNo());
		rdv.setUserNo(userNo);
		rdv.setOdStatus(odStatus);
		
		List<RentalDetailVO> rentalSortList = rentalService.rentalSortListSv(rdv);
		System.out.println("rentalSortList >> " + rentalSortList.toString());
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		Gson gson = new Gson();
		out.print(gson.toJson(rentalSortList));
		out.flush();
		
	}
	
}
