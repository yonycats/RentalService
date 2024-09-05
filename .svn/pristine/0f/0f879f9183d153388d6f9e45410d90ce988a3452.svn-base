<%@page import="kr.or.ddit.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UserVO uv = (UserVO) session.getAttribute("userInfo");
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
			<h2 style="font-size: 20px; margin-top: 25px; float: left;">개인
				정보</h2>
			<ul>
				<li><a href="<%=request.getContextPath() %>/user/checkPass.do" class="update-button"
					style="background-color: #333; border: 1px solid #333; color: white;">회원정보수정</a>
				</li>
					<li><button class="update-button" id="user_signout"
					style="background-color: #333; border: 1px solid #333; color: white;">회원탈퇴</button>
				</li>
			</ul>
		</div>
		<table id="mypage-main-info">
			<tbody>
				<tr>
					<th scope="row">이름</th>
					<td><%=uv.getUserName() %></td>
					<th scope="row">아이디</th>
					<td><%=uv.getUserId() %></td>
				</tr>
				<tr>
					<th scope="row">휴대폰번호</th>
					<td><%=uv.getUserTel() %></td>
					<th scope="row">E-Mail</th>
					<td><%=uv.getUserEmail() %></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td><%=uv.getUserAddr() %></td>
					<th scope="row">우편번호</th>
					<td><%=uv.getUserZip() %></td>
				</tr>
				<tr>
					<th scope="row">상세주소</th>
					<td><%=uv.getUserAddrDetail() %></td>
					<th scope="row"></th>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="deleteConfirmationModalLabel">삭제 확인</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>정말 삭제하시겠습니까? 삭제하면 복구되지 않아요.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
				<a href="/RentalService/user/deleteInfo.do?userId=<%=uv.getUserId() %>" class="btn btn-danger">네</a>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function () {
	// 삭제 버튼 클릭 시 모달 창 표시
	$("#user_signout").click(function () {
		$("#deleteConfirmationModal").modal("show");
	});
});
</script>