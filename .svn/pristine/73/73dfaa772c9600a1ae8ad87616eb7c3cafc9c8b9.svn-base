<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@page import="kr.or.ddit.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UserVO uv = (UserVO) session.getAttribute("userInfo");
%>

<main class="container">
	<div id="mb-confirm">
		<h1 class="tac">회원 비밀번호 확인</h1>
		<p>
			<strong>비밀번호를 한번 더 입력해주세요.</strong> 회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더
			확인합니다.
		</p>
		<form name="fmemberconfirm"
			action="<%=request.getContextPath()%>/user/checkPass.do"
			method="post">
			<input type="hidden" name="mb-id" value="<%=uv.getUserId()%>" />
			<fieldset>
				회원아이디 <span id="mb-confirm-id"><%=uv.getUserId()%></span> <label
					for="confirm-mb-password">비밀번호</label> <input type="password"
					name="mb-password" id="confirm-mb-password" required
					class="required frm-input" size="15" minlength="8"
					style="background-position: right top; background-repeat: no-repeat" />
				<button type="button" id="user-pass-check" class="btn-lsmall"
					style="font-size: 14px; font-weight: normal !important; margin-left: 5px; height:">확인</button>
			</fieldset>
		</form>
		<div class="btn-confirm">
			<a href="<%=request.getContextPath()%>/user/checkInfo.do"
				class="btn-medium grey"
				style="padding: 10px 15px; font-size: 13px; font-weight: normal; color: white;">메인으로
				돌아가기</a>
		</div>
	</div>
</main>
<script>
		$('#user-pass-check').on('click', function() {
			var userId = "<%=uv.getUserId()%>";
			var userPass = $('#confirm-mb-password').val();
            $.ajax({
                url: "<%=request.getContextPath()%>/user/checkDelete.do", // 서버의 URL
                type: 'POST',
                data: { userId: userId,
                		userPass: userPass	
                },
                dataType : 'json',
                success: function(data) {
					if(data.msg == 'success'){
						window.location.href = "<%=request.getContextPath()%>/user/deleteInfo.do";
										} else {
											alert('로그인실패')
										}

									},
									error : function(xhr, status, error) {
										console.error('정렬 요청 중 오류 발생:', error);
									}
								});
					})

	$(document).keydown(function(event) {
		if (event.key === 'Enter') {
			event.preventDefault();
			$('#pass-check').click();
		}
	});
</script>



