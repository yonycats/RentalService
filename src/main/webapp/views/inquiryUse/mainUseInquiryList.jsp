<%@page import="kr.or.ddit.vo.UseInquiryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	List<UseInquiryVO> useInquiryList = (List<UseInquiryVO>) request.getAttribute("useInquiryList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<main id="container" class="col-sm-12" style="padding-top: 50px">

   <div class="mypage-main-top">
      <div class="mypage-main-top-title"
         style="margin-bottom: 50px; font-size:60px;">
         <h1>사용문의</h1>
      </div>
      
<div class="container">

		<table class="table table-hover">
    <thead>
			<tr>
				<th>문의번호</th>
				<th>문의제목</th>
<!-- 				<th>문의내용</th> -->
				<th>작성날짜</th>
				<th>상세보기</th>
			</tr>
 </thead>
   <tbody>
			<%
				int useInquirySize = useInquiryList.size();
			if (useInquirySize > 0) {
				for (UseInquiryVO uiv : useInquiryList) {
			%>
			<tr>
				<td><%=uiv.getUnqId()%></td>
				<td><%=uiv.getUnqTitle()%></td>
<%-- 				<td><%=uiv.getUnqContent()%></td> --%>
				<td><%=uiv.getUnqDate().substring(0,10)%></td>
				<td><button><a
					href="<%=request.getContextPath()%>/useInquiry/mainDetail.do?unqId=<%=uiv.getUnqId()%>">상세보기</a></button></td>
			</tr>
			<%
				}
			}
			%>
		</table>

	</div>
</div>
