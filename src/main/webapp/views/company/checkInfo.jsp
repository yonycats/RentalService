<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
%>

<div class="col-sm-9 mypage-main">
	<div class="mypage-main-top">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 정보 조회
			</p>
		</div>
		<div class="mypage-main-top-title">
			<h1>정보 조회</h1>
		</div>
	</div>
	<div class="mypage-main-middle">
		<div id="mypage-main-update">
			<h2 style="font-size: 20px; margin-top: 25px; float: left;">회사
				정보</h2>
			<ul>
				<li><a href="<%=request.getContextPath() %>/company/checkPass.do" class="update-button"
					style="background-color: #333; border: 1px solid #333; color: white;">회원정보수정</a>
				</li>
				<li><a href="<%=request.getContextPath() %>/company/checkDelete.do" class="update-button"
					style="background-color: #333; border: 1px solid #333; color: white;">회원탈퇴</a>
				</li>
			</ul>
		</div>
		<table id="mypage-main-info">
			<tbody>
				<tr>
					<th scope="row">대표 성함</th>
					<td><%=cv.getComCeo()%></td>
					<th scope="row">사업자 번호</th>
					<td><%=cv.getComNo()%></td>
				</tr>
				<tr>
					<th scope="row">회사 이름</th>
					<td><%=cv.getComName()%></td>
					<th scope="row">회사 연락처</th>
					<td><%=cv.getComTel()%></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td><%=cv.getComAddr()%></td>
					<th scope="row"
						style="background-color: white; border-bottom: 1px solid #e2e2e2"></th>
					<td></td>
				</tr>
				<tr>
					<th scope="row">상세주소</th>
					<td><%=cv.getComAddrDetail()%></td>
					<th scope="row">우편번호</th>
					<td><%=cv.getComZip()%></td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td><%=cv.getComEmail()%></td>
					<th scope="row"
						style="background-color: white; border-bottom: 1px solid #e2e2e2"></th>
					<td></td>
				</tr>
			</tbody>
		</table>

		<h2 style="font-size: 20px; margin: 40px 0 10px 0; float: left;">담당자 정보</h2>
		<table id="mypage-main-info">
			<tbody>
				<tr>
					<th scope="row">담당자명</th>
					<td><%=cv.getComResname()%></td>
					<th scope="row">담당자 연락처</th>
					<td><%=cv.getComRestel()%></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>