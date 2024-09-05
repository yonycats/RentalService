<%@page import="company.service.CompanyService"%>
<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	CompanyVO cv2;
	if(session.getAttribute("userInfo")!=null){
		cv2 = (CompanyVO)session.getAttribute("userInfo");
	}else{
		CompanyService companyService = CompanyService.getInstance();
		String comId = "COM00001";
		cv2= companyService.getComInfo(comId);
		session.setAttribute("userInfo", cv2);
	}
%>


<main style="min-height: 800px">
	<div class="container-fluid" style="display: flex;justify-content: center; border: none;">
		<div style="width: 80%;display: flex">
			<div class="col-sm-3 mypage-aside" style="height: 100%; margin-top: 50px;">
				<aside>
					<div class="aside-hd">
						<p class="eng">MY PAGE</p>
						<p class="kor">마이페이지</p>
					</div>
					<div class="aside-name"><%=cv2.getComResname() %></div>
					<dl class="aside-cs">
						<dt class="menu-item" data-submenu="info">
							<a href="<%=request.getContextPath()%>/user/checkInfo.do"> 정보 조회 </a>
						</dt>
						<dt class="menu-item" data-submenu="product">
							<a href="<%=request.getContextPath()%>/company/itemList.do"> 상품 관리 </a>
						</dt>
					</dl>
				</aside>
			</div>