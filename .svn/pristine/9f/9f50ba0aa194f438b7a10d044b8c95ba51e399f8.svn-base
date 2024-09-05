<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String key = (String) request.getAttribute("key");
	String filename = (String) request.getAttribute("fileName");
%>

<main class="container">
	<h1 id="h1"
		style="padding-top: 10px; font-size: 3em; margin-top: 20px; margin-bottom: 20px; margin-left: 15px;">회원가입</h1>

	<form id="radio_select_form" style="border: none">
		<label><input type="radio" name="select" value="일반 회원가입" id="select_user" checked> 일반 회원가입</label>
		<label><input type="radio" name="select"
			value="기업 회원가입" id="select_company"> 기업 회원가입</label>
	</form>


	<!-- 로그인 라디오 버튼 -->

	<div id="user" ">

		<h2
			style="font-size: 1.6em; margin-top: 10px; margin-left: 20px; margin-bottom: 25px;">
		</h2>
		<!-- 회원 폼 -->


		<form name="user" id="user-form"
			action="<%=request.getContextPath()%>/user/signUp.do" method="post"
			autocomplete="off">
			<h3
				style="font-size: 1.3em; margin-left: 5px; margin-top: 0px; ">사이트
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
								pattern="[a-zA-Z0-9_]{3,20}"><span id="disp"
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
				style="font-size: 1.3em; margin-left: 5px; margin-top: 1px; ">개인정보
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
							<td><input type="text" name="userName" id="reg_mb_name"
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
							<td><input type="text" name="userTel" id="reg_mb_hp"
								required="" class="frm_input required" size="20" maxlength="20"
								style="background-position: right top; background-repeat: no-repeat" />
								<span id="msg_mb_tel"></span> <span class="frm_info">'010
									- 0000 - 0000' 형식으로 입력</span> </td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_email">E-mail<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="userEmail" id="reg_mb_email"
								required="" class="frm_input required" size="40" maxlength="100"
								style="background-position: right top; background-repeat: no-repeat" />
								<span id="msg_mb_email"></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_addr">주소<span
									class="rq"> *</span></label></th>
							<td><label for="reg_mb_zip" class="sound_only">우편번호</label>

								<input type="text" name="userZip" id="reg_mb_zip" required=""
								class="frm_input required" size="8" maxlength="5"
								style="background-position: right top; background-repeat: no-repeat" />

								<button type="button" class="btn_lsmall" id="addrBtn"
									onclick="win_zip('user', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr_jibeon');">
									주소검색</button> <br /> <input type="text" name="userAddr"
								id="reg_mb_addr1" required=""
								class="frm_input required frm_address" size="60"
								style="background-position: right top; background-repeat: no-repeat" />
								<label for="reg_mb_addr1">기본주소</label><br /> <input type="text"
								name="userAddrDetail" value="" id="reg_mb_addr2"
								class="frm_input frm_address" size="60" /> <label
								for="reg_mb_addr2">상세주소</label><br />
						</tr>
						<tr>
							<th scope="row"><label>본인확인 질문<span class="rq">
										*</span></label></th>
							<td><select name="userQut" id="id_question"
								class="frm_input">
									<option value="option">-- 선택 --</option>
									<option value="q1">가장 좋아하는 동물은?</option>
									<option value="q2">어린 시절 별명은?</option>
									<option value="q3">가장 좋아하는 스포츠는?</option>
									<option value="q4">첫 직장명은?</option>
									<option value="q5">가장 좋아하는 책 제목은?</option>
									<option value="q6">가장 기억에 남는 여행지는?</option>
									<option value="q7">가장 좋아하는 음식은?</option>
									<option value="q8">가장 좋아하는 색깔은?</option>
									<option value="q9">가장 좋아하는 영화는?</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row"><label>본인확인 답변<span class="rq">
										*</span></label></th>
							<td><input type="text" id="id_answer" class="frm_input"
								name="userAns" /></td>
						</tr>
						<tr>
							<th scope="row"><label for="reg_mb_tel">보안절차</label></th>
							<td>
								<div id="captcha_box">
									<div>
										<img id="captcha_img"
											src="<%=request.getContextPath()%>/views/images/captcha/<%=filename%>.jpg"
											alt="" />
									</div>
									<div id="captcha-box-right">
										<p style="line-height: 2em">
											프로그램을 이용한 자동 가입방지를 위해서 <br /> 보안 절차를 거치고 있습니다. <br /> 왼쪽
											이미지를 보이는 대로 입력해주세요.
										</p>
										<div id="captcha_text">
											<input id="user-captcha" type="text" name="user-captcha" class="frm_input"">
											<button id="user-reload" type="button" style="height: 40px" class="btn">새로고침</button>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btn_signUp" style="margin:50px 0;">
				<input type="button" value="회원가입" id="userSign_btn_submit"
					class="btn_large wset" accesskey="s" /> <a
					href="/item/mainPage.do" style="margin-left:20px;" class="btn_large bx-white">취소</a>
			</div>
		</form>

	</div>

	<div id="company">
		<h2
			style="font-size: 1.6em; margin-top: 20px; margin-left: 20px; margin-bottom: 25px;">
		</h2>
		<!-- 기업 폼 -->


		<form name="company" id="company-form"
			action="<%=request.getContextPath()%>/company/signUp.do"
			method="post" autocomplete="off">
			<h3 style="font-size: 1.3em; margin-left: 5px; margin-top: 1px;">사이트 이용정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="com_id">아이디<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comId" id="com_id"
								class="frm_input" size="20" maxlength="20" required
								pattern="[a-zA-Z0-9]{3,15}"><span id="disp_com"
								style="padding-left: 10px"></span><span id="com_id"></span> <span
								class="frm_info">* ID예시: COM00001 (대문자로 입력해주세요)</span></td>
						</tr>


						<tr>
							<th scope="row"><label for="com_pass">비밀번호<span
									class="rq"> *</span></label></th>
							<td>
								<div id=password-box>
									<input type="password" name="comPass" id="com_pass"
										class="frm_input" size="20" maxlength="20"
										pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%\^&amp;\*\(\)_\+\|]).{8,20}" />
								</div> <span id="password_match_message_com"
								style="padding-left: 10px"></span><span id="com_pass"></span> <span
								class="frm_info">특수문자(!,@,#,$,&,*,_), 영 대/소문자, 숫자 포함 8자
									이상</span>
							</td>
						</tr>

						<tr>
							<th scope="row"><label for="com_pass_re">비밀번호 확인<span
									class="rq"> *</span>
							</label></th>
							<td><input type="password" name="com_pass_re"
								id="com_pass_re" class="frm_input" size="20" maxlength="20" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<h3 class="mart30" style="font-size: 1.3em; margin-left: 5px; margin-top: 1px; ">기업정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="com_name">상호명<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comName" id="com_name"
								class="frm_input" size="20" required /></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_ceo">대표자명<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comCeo" id="com_ceo"
								class="frm_input" size="20" required pattern="[가-힣]{2,8}" /></td>
						</tr>

						<tr>
							<th scope="row"><label for="com_no">사업자번호<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comNo" value="" id="com_no"
								class="frm_input" size="20" maxlength="20" /> <span id="com_no"></span>
								<span class="frm_info"></span></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_addr">사업장 주소<span
									class="rq"> *</span></label></th>
							<td><label for="com_zip" class="sound_only">우편번호</label> <input
								type="text" name="comZip" id="com_zip" required=""
								class="frm_input required" size="8" maxlength="5"
								style="background-position: right top; background-repeat: no-repeat" />

								<button type="button" class="btn_lsmall" id="addrBtnCom"
									onclick="win_zip('company', 'com_zip', 'com_addr', 'com_addr2', 'com_addr3', 'com_addr_jibeon');">
									주소검색</button> <br /> <input type="text" name="comAddr" id="com_addr"
								required="" class="frm_input required frm_address" size="60"
								style="background-position: right top; background-repeat: no-repeat" />
								<label for="com_addr">기본주소</label><br /> <input type="text"
								name="comAddrDetail" value="" id="com_addr_detail"
								class="frm_input frm_address" size="60" /> <label
								for="com_addr_detail">상세주소</label><br />
						</tr>
						<tr>
							<th scope="row"><label for="com_tel">전화번호<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comTel" value="" id="com_tel"
								class="frm_input" size="20" maxlength="20" /> <span
								id="com_tel"></span> <span class="frm_info">'02 - 000 -
									0000' 형식으로 입력</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_email">E-mail<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comEmail" id="com_email"
								required="" class="frm_input required" size="40" maxlength="100"
								style="background-position: right top; background-repeat: no-repeat" />
								<span id="com_emailing"></span> <span class="frm_info"> 
							</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_resName">담당자명<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comResname" id="com_resName"
								class="frm_input" size="20" required pattern="[가-힣]{2,8}" /></td>
						</tr>

						<tr>
							<th scope="row"><label for="com_resTel">담당자 연락처<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comRestel" id="com_resTel"
								class="frm_input" size="20" maxlength="20" /> <span id="com_no"></span>
								<span class="frm_info"></span></td>
						</tr>						

						<tr>
							<th scope="row"><label for="reg_mb_tel">보안절차</label></th>
							<td>
								<div id="captcha_box">
									<div>
										<img id="captcha_img"
											src="<%=request.getContextPath()%>/views/images/captcha/<%=filename%>.jpg"
											alt="" />
									</div>
									<div id="captcha-box-right">
										<p style="line-height: 2em;">
											프로그램을 이용한 자동 가입방지를 위해서 <br /> 보안 절차를 거치고 있습니다. <br /> 왼쪽
											이미지를 보이는 대로 입력해주세요.
										</p>
										<div id="captcha_text">
											<input id="company-captcha" type="text" name="company-captcha" class="frm_input""/>
											<button id="company-reload" type="button" style="" class="btn">새로고침</button>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btn_signUp" style="margin:50px 0;">
				<input type="button" value="회원가입" id="companySign_btn_submit" 
					class="btn_large wset" accesskey="s" /> <a href="/item/mainPage.do" style="margin-left:20px;" class="btn_large bx-white">취소</a>
			</div>
		</form>

	</div>
</div>




<%-- 	<form action="<%=request.getContextPath()%>/user/signUp.do" --%>
<!-- 		method="post"> -->
<!-- 		<input type="submit">가입신청</input> -->
<!-- 	</form> -->
<%-- 	<a href="<%=request.getContextPath()%>/item/mainPage.do">취소</a> --%>



<script>
	$(document).ready(function() {
		var header = $(".navbar");
		var headerHeight = header.outerHeight();
		var headerTop = header.offset().top;
		var mainColumn = $("main");

		$(window).scroll(function() {
			if ($(window).scrollTop() > headerTop) {
				header.addClass("fixed-header");
				mainColumn.css("padding-top", headerHeight);
			} else {
				header.removeClass("fixed-header");
				mainColumn.css("padding-top", 0);
			}
		});
	});

	document.querySelectorAll(".fixed-widget a").forEach(function(anchor) {
		anchor.addEventListener("click", function(event) {
			event.preventDefault();
			window.scrollTo({
				top : 0,
				behavior : "smooth",
			});
		});
	});
</script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$('#reg_mb_password_re').on(
			'keyup',
			function() {

				if ($('#reg_mb_password_re').val() == $('#reg_mb_password')
						.val()) {

					$('#password_match_message').text('비밀번호가 일치합니다.').css(
							'color', 'green');

				} else {

					$('#password_match_message').text('비밀번호가 일치하지 않습니다.').css(
							'color', 'red');
				}
			});

	$('#reg_mb_id').on(
			'keyup',
			function() {
				$.ajax({
					url : '/RentalService/views/css/idChk.jsp?reg_mb_id='
							+ $('#reg_mb_id').val(),
					success : function(res) {
						if (res.rst == "ok") {
							$('#disp').text(res.msg).css('color', 'green');

						} else {
							$('#disp').text(res.msg).css('color', 'red');

						}
					},
					error : function(xhr) {
						alert("상태 : " + xhr.status);
					},
					dataType : 'json'
				});

			});

	//////////////////////////////////////////////////////////////////////////////////

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

<script>
	$('#com_pass_re').on(
			'keyup',
			function() {

				if ($('#com_pass_re').val() == $('#com_pass').val()) {

					$('#password_match_message_com').text('비밀번호가 일치합니다.').css(
							'color', 'green');

				} else {

					$('#password_match_message_com').text('비밀번호가 일치하지 않습니다.')
							.css('color', 'red');
				}
			});

	$('#com_id').on(
			'keyup',
			function() {
				$.ajax({
					url : '/RentalService/views/css/idChk.jsp?com_id='
							+ $('#com_id').val(),
					success : function(res) {
						if (res.rst == "ok") {
							$('#disp_com').text(res.msg).css('color', 'green');

						} else {
							$('#disp_com').text(res.msg).css('color', 'red');

						}
					},
					error : function(xhr) {
						alert("상태 : " + xhr.status);
					},
					dataType : 'json'
				});

			});

	//////////////////////////////////////////////////////////////////////////////////

	$('#addrBtnCom').on('click', addrApi);

	function addrApi() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById('com_zip').value = data.zonecode;
				document.querySelector("#com_addr").value = data.roadAddress;

			}
		}).open();
	}

	function valid(e) {

		e.preventDefault();

		let formData = $('form').serialize();
		console.log(formData);

	}

	$(document).ready(function() {
		$('#user').show(); // 초깃값 설정
		$('#company').hide(); // 초깃값 설정

		$("input[name='select']").change(function() {
			// 회원 선택 시.
			if ($("input[name='select']:checked").val() == '일반 회원가입') {
				$('#company').hide();
				$('#user').show();
			}
			// 기업 선택 시.
			else if ($("input[name='select']:checked").val() == '기업 회원가입') {
				$('#user').hide();
				$('#company').show();
			}

		});
	});
	
	$("#companySign_btn_submit").click(function(event){
	    var key = "<%=key%>";
	    var captcha = $('#company-captcha').val();
	   
	    $.ajax({
	        url:"<%=request.getContextPath()%>/company/valueCheck.do",
	        type: "POST", 
	        data: {
	            key: key,
	            captcha: captcha
	        },
	        dataType : 'json',
	        success:function(data){
	            if(data.msg == 'success'){
	            	console.log('성공');
	            	document.querySelector("#company-form").submit();  
	            }
	            else {
	                event.preventDefault(); 
	                alert('보안인증 실패');
	            }
	        },
	        error:function(){
	            event.preventDefault();  
	            alert("error");
	        }
	    });
	});
	
	$("#userSign_btn_submit").click(function(event){
	    var key = "<%=key%>";
	    var captcha = $('#user-captcha').val();
	   
	    $.ajax({
	        url:"<%=request.getContextPath()%>/user/valueCheck.do",
	        type: "POST", 
	        data: {
	            key: key,
	            captcha: captcha
	        },
	        dataType : 'json',
	        success:function(data){
	            if(data.msg == 'success'){
	            	console.log('성공');
	            	document.querySelector("#user-form").submit();  
	            }
	            else {
	                event.preventDefault(); 
	                alert('보안인증 실패');
	            }
	        },
	        error:function(){
	            event.preventDefault();  
	            alert("error");
	        }
	    });
	});
	

</script>

