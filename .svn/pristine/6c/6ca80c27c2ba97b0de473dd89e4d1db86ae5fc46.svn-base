package company.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import company.service.CompanyService;
import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.ItemVO;

@WebServlet("/company/itemList.do")
public class ItemListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int currentPage = 1; //현재 페이지
		currentPage = req.getParameter("page") == null ? 1 : Integer.parseInt(req.getParameter("page"));
		
		CompanyService companyService = CompanyService.getInstance();
		
		//전체 글 갯수
		HttpSession session = req.getSession();
		CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
		List<ItemVO> ivList = companyService.getItemInfo(cv.getComId());
		int totalCount = ivList.size();

		//화면에 표시될 페이지의 수
		int perPage = 10;
		
		//한 페이지 당 출력할 글 갯수
		int perList = 5;
		
		//◆전체 페이지 수 = 전체 글 갯수(totalCount) / 페이지 당 글 갯수(perList)
		int totalPage = (int)Math.ceil((double)totalCount / (double)perList);  
		System.out.println("totalPage" + totalPage);
		
		//◆페이지 별 게시글 범위(start ~ end) 구하기
		int start = (currentPage - 1) * perList + 1;
		int end = start + perList - 1;
		if(end > totalCount) end = totalCount; // *전체 글 갯수 초과 값 조절
		
		
		//◆페이지 범위(startPage ~ endPage) 구하기
		int startPage = ((currentPage - 1) / perPage * perPage) + 1;
		
		//endPage = startPage + perPage - 1;
		int endPage = startPage + perPage - 1;
		if(endPage > totalPage) endPage = totalPage;
		
		String comId = cv.getComId();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comId", comId);
		map.put("start", start);
		map.put("end", end);
//		
//		//범위 별 게시물 가져오기
		List<ItemVO> list = companyService.getItemInfoPasing(map);
		System.out.println("list" + list);

		//request에 결과데이터를 담아서 페이지로 전달
		session.setAttribute("ivList", ivList);
		req.setAttribute("menu", "comItemList");
		req.setAttribute("list", list);
		req.setAttribute("str", start); //게시글 순번 적용시 전체 게시물에 순차적인 넘버링을 적용하기 위해 사용(str + index)
		req.setAttribute("sPage", startPage);
		req.setAttribute("ePage", endPage);
		req.setAttribute("ttPage", totalPage);
		req.setAttribute("cPage", currentPage); //페이지번호 활성화 조건으로 사용
		req.getRequestDispatcher("/views/indexCompany.jsp?page="+currentPage).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}
