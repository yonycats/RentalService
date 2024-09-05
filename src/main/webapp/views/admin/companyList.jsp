<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	List<CompanyVO> companyList = (List<CompanyVO>)request.getAttribute("companyList");

%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div class="container">
<!--   <h2>공지사항</h2> -->
  <table class="table table-hover">
    <thead>
		<tr>
			<th>CompanyId</th>
			<th>회사명</th>
			<th>대표자명</th>
			<th>회사기본주소</th>
			<th>회사상세주소</th>
			<th>회사우편번호</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>담당자명</th>
			<th>담당자전화번호</th>
			<th>제휴승인여부</th>
<!-- 			<th>첨부파일</th> -->
		</tr>
 	</thead>
  <tbody>
		
<% 
	int comListSize = companyList.size();
	if(comListSize > 0){
		for(CompanyVO cv: companyList) {
%>
		<tr>
			<td><%out.print(cv.getComId()); %></td>
			<td><%=cv.getComName()%></a></td>
			<td><%=cv.getComCeo() %></td>
			<td><%=cv.getComAddr() %></td>
			<td><%=cv.getComAddrDetail() %></td>
			<td><%=cv.getComZip() %></td>
			<td><%=cv.getComTel() %></td>
			<td><%=cv.getComEmail() %></td>
			<td><%=cv.getComResname() %></td>
			<td><%=cv.getComRestel() %></td>
			<td>
			<%
			if(cv.getComAuth().equals("Y")){
				%>
			<span style="color:cornflowerblue;">승인완료</span>
			<%
			}
			%>
			<%
			if(cv.getComAuth().equals("N")){
			%>
			<span style="color:darkorange;">처리중</span>
			<%
			}
			%>
			</td>
			

		</tr>
<%
		}
	}else{
%>
		<tr>
			<td colspan="13">기업회원이 존재하지 않습니다.</td>
		</tr>
<%
	}
%>	
</table>
