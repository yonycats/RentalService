<%@page import="kr.or.ddit.vo.UserVO"%>
<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
UserVO uv = (UserVO) session.getAttribute("userInfo");
%>

	<main class="col-sm-9 mypage-main">
	<div class="mypage-main-top">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 정보수정
			</p>
		</div>
		<div class="mypage-main-top-title">
			<h1>정보수정</h1>
		</div>
	</div>


		<form style="width: 100%" name="user" id="user"
			action="<%=request.getContextPath()%>/user/updateInfo.do" method="post"
			autocomplete="off">
			<h3
				style="font-size: 1.3em; margin-left: 5px; margin-top: 1px;">사이트
				이용정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table class="sign-table">
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" style="width: 70px"><label for="reg_mb_id">아이디<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="userId" id="reg_mb_id"
								class="frm_input" size="20" maxlength="20" required
								pattern="[a-zA-Z0-9_]{3,20}" value="<%=uv.getUserId() %>"><span id="disp"
								style="padding-left: 10px"></span><span id="msg_mb_id"></span> <span
								class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span></td>
						</tr>


						<tr>
							<th scope="row"><label for="reg_mb_password">비밀번호<span
									class="rq"> *</span></label></th>
							<td>
								<div id=password-box>
									<input type="password" name="userPass" id="reg_mb_password"
										class="frm_input" size="20" maxlength="20"
										pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%\^&amp;\*\(\)_\+\|]).{8,20}" />
									<!-- 												<button> -->
									<!-- 													<img id="reg_mb_password_btn" -->
									<!-- 														src="../views/images/password.png"> -->
									<!-- 												</button> -->
								</div> <span id="password_match_message" style="padding-left: 10px"></span><span
								id="msg_mb_password"></span> <span class="frm_info">특수문자(!,@,#,$,&,*,_),
									영 대/소문자, 숫자 포함 8자 이상</span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_password_re">비밀번호
									확인<span class="rq"> *</span>
							</label></th>
							<td><input type="password" name="mb_password_re"
								id="reg_mb_password_re" class="frm_input" size="20"
								maxlength="20" /></td>
						</tr>
					</tbody>
				</table>
			</div>

			<br>
			<h3 class="mart30"
				style="font-size: 1.3em; margin-left: 5px; margin-top: 1px;">개인정보
				입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="reg_mb_name">이름<span
									class="rq"> *</span></label></th>
							<td><input value="<%=uv.getUserName() %>" type="text" name="userName" id="reg_mb_name"
								class="frm_input" size="20" required pattern="[가-힣]{2,8}" /></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_tel">전화번호</label></th>
							<td><input type="text" name="mb_tel" value=""
								id="reg_mb_tel" class="frm_input" size="20" maxlength="20" /> <span
								id="msg_mb_tel"></span> <span class="frm_info">'02 - 000
									- 0000' 형식으로 입력</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_hp">휴대폰번호<span
									class="rq"> *</span></label></th>
							<td><input type="text" value="<%=uv.getUserTel() %>" name="userTel" id="reg_mb_hp"
								required="" class="frm_input required" size="20" maxlength="20"
								style="background-position: right top; background-repeat: no-repeat" />
								<span id="msg_mb_tel"></span> <span class="frm_info">'010
									- 0000 - 0000' 형식으로 입력</span> <span class="frm_info"> 
							</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_email">E-mail<span
									class="rq"> *</span></label></th>
							<td><input type="text" value="<%=uv.getUserEmail() %>" name="userEmail" id="reg_mb_email"
								required="" class="frm_input required" size="40" maxlength="100"
								style="background-position: right top; background-repeat: no-repeat" />
								<span id="msg_mb_email"></span> <span class="frm_info"> 
							</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_addr">주소<span
									class="rq"> *</span></label></th>
							<td><label for="reg_mb_zip" class="sound_only">우편번호</label>

								<input type="text" value="<%=uv.getUserZip() %>" name="userZip" id="reg_mb_zip" required=""
								class="frm_input required" size="8" maxlength="5"
								style="background-position: right top; background-repeat: no-repeat" />

								<button type="button" class="btn_lsmall" id="addrBtn"
									onclick="win_zip('user', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr_jibeon');">
									주소검색</button> <br /> <input value="<%=uv.getUserAddr() %>" type="text" name="userAddr"
								id="reg_mb_addr1" required=""
								class="frm_input required frm_address" size="60"
								style="background-position: right top; background-repeat: no-repeat" />
								<label for="reg_mb_addr1">기본주소</label><br /> <input type="text"
								name="userAddrDetail" value="<%=uv.getUserAddrDetail() %>" id="reg_mb_addr2"
								class="frm_input frm_address" size="60" /> <label
								for="reg_mb_addr2">상세주소</label><br />
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btn_signUp" style="margin:50px 0;">
				<input type="submit" value="정보수정" id="btn_submit"
					class="btn_large wset" accesskey="s" /> <a
					href="/item/mainPage.do" style="margin-left:20px;" class="btn_large bx-white">취소</a>
			</div>
		</form>

	</main>
	
	<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	$('#addrBtn').on('click', addrApi);

	function addrApi() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						document.getElementById('reg_mb_zip').value = data.zonecode;
						document.querySelector("#reg_mb_addr1").value = data.roadAddress;

					}
				}).open();
	}

	function valid(e) {

		e.preventDefault();

		let formData = $('form').serialize();
		console.log(formData);

	}
	
	</script>