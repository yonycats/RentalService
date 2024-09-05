<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<script>
	$(document).ready(function() {
		$('#select_email').show(); // 초깃값 설정
		$('#select_hint').hide(); // 초깃값 설정

		$("input[name='select']").change(function() {
			// 회원 선택 시.
			if ($("input[name='select']:checked").val() == '이메일로 찾기') {
				$('#select_hint').hide();
				$('#select_email').show();
			}
			// 기업 선택 시.
			else if ($("input[name='select']:checked").val() == '힌트로 찾기') {
				$('#select_email').hide();
				$('#select_hint').show();
			}
		});
	});
</script>
<body>
	<main
		style="text-align: center; display: flex; justify-content: center; flex-direction: column; align-items: center;">
		<h1>아이디 찾기</h1>

		<!-- 로그인 라디오 버튼 -->
		<form>
			<label style="margin: 15px;"><input type="radio"
				name="select" value="이메일로 찾기" checked> 이메일로 찾기</label> <label
				style="margin: 15px;"><input type="radio" name="select"
				value="힌트로 찾기"> 힌트로 찾기</label>
		</form>

		<!-- 결제 수단에 따른 폼들 -->
		<div style="width: 60%">
			<div id="select_email">
				<div id="findEmail" class="form-container">
					<table class="findId-table">
						<h3 style="margin: 10px">이메일로 찾기</h3>
						<colgroup>
							<col class="w140">
							<col>
						</colgroup>
						<tbody>
							<form>
								<tr>
									<th scope="row" style="width: 70px;"><label for="findHint">성함<span
											class="rq"> *</span></label></th>
									<td><input type="text" name="findPass_name"
										id="findPass_name" required="" class="frm_input required"
										size="40" maxlength="100"
										style="background-position: right top; background-repeat: no-repeat" /></td>
								</tr>
								<tr>
									<th scope="row"><label for="findEmail">이메일<span
											class="rq"> *</span></label></th>
									<td><input type="text" name="findEmail" id="find_Email"
										required="" class="frm_input required" size="40"
										maxlength="100"
										style="background-position: right top; background-repeat: no-repeat" />
										<input style="margin-left: 10px" type="button"
										id="send_id_btn" class="btn_find" value="인증번호 요청"></td>
								</tr>
								<tr>
									<th scope="row"><label for="findEmail">인증번호 작성<span
											class="rq"> *</span></label></th>
									<td style="display: flex;"><input type="text"
										name="findEmail" id="input_id_button" required=""
										class="frm_input required" size="40" maxlength="100"
										style="background-position: right top; background-repeat: no-repeat" />
										<input style="margin-left: 10px" type="button"
										id="match_id_button" value="인증" class="btn_find"></td>
								</tr>
							</form>
						</tbody>
					</table>
					<tr>
						<br>
						<div id="show_id" style="display: none">
							회원님의 ID는 <span id="display_id"></span>입니다.
						</div>
						<br>
					</tr>
				</div>
			</div>
		</div>
		<div id="select_hint" style="width: 60%">
			<div id="findEmail" class="form-container">
				<table class="findId-table">
					<h3>힌트로 찾기</h3>
					<colgroup>
						<col class="w140">
						<col>
					</colgroup>
					<tbody>
						<form>
							<tr>
								<th scope="row"><label for="findHint">성함<span
										class="rq"> *</span></label></th>
								<td><input type="text" name="findPass_name"
									id="findPass_name" required="" class="frm_input required"
									size="40" maxlength="100"
									style="background-position: right top; background-repeat: no-repeat" /></td>
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
								<th scope="row"><label for="findHint">답변 입력<span
										class="rq"> *</span></label></th>
								<td><input type="text" name="userAns" id="input_id_button"
									required="" class="frm_input required" size="40"
									maxlength="100"
									style="background-position: right top; background-repeat: no-repeat" />
									<input style="margin-left: 10px" type="button" id="match_hint_button" value="입력"
									class="btn_find"></td>
							</tr>
						</form>
					</tbody>
				</table>
			</div>
			<tr>
				<br>
				<div id="show_id_hint" style="display: none">
					회원님의 ID는 <span id="display_id_hint"></span>입니다.
				</div>
				<br>
			</tr>
		</div>

	</main>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>	
	let vld_num;
	  $('#send_id_btn').on("click", function(){
	      vld_num = Math.floor(Math.random()*899999)+100000
	   $.ajax({
	      type:'get',
	      url:'<%=request.getContextPath()%>/user/mailsender.do',
		  data : {
			"name" : $('#findPass_name').val(),
			"email" : $('#find_Email').val(),
			"num" : vld_num
				},
				success : function(res) {
					console.log(res)
					if (res == 1) {
						$('invalid-feedback').html("인증성공!").css('color', 'gold');
							alert("인증번호 발송!");
					} else {
						$('invalid-feedback').html("인증실패..").css('color', 'red');
						alert("인증번호 발송 실패..ToT");
						}
					},
						error : function(xhr) {
						alert(`상태확인 ${xhr.status}`);
						console.log(xhr);
					}
				});
			});

		$('#match_id_button').on('click', function(val) {
			console.log("val : ", $('#input_id_button').val());
			console.log("vld_num : ", vld_num);
			if ($('#input_id_button').val() == vld_num) {
				alert("인증에 성공했습니다");

				// 인증 성공 시 아이디 나타내기
				$('#display_id').text('tara513');
				$('#show_id').show();

			} else {
				alert("인증에 실패했습니다");
			}
		});

		// 힌트랑 이름이랑 맞았을 때
		$('#match_hint_button').on('click', function(val) {
			console.log("val : ", $('#input_hint_button').val());
			console.log("vld_num : ", vld_num);
			if ($('#input_hint_button').val() == vld_num) {
				alert("인증에 성공했습니다");

				// 인증 성공 시 아이디 나타내기
				$('#display_id_hint').text('tara513');
				$('#show_id_hint').show();

			} else {
				alert("인증에 실패했습니다");
			}
		});
		
		$.ajax({
			type: 'post',
			url: '<%=request.getContextPath()%>/user/findId.do',
			data : {
				userName : $("input[name=findPass_name]").val(),
				userQut : $("input[name=userQut]").val(),
				userAns : $("input[name=userAns])").val()
			},
			dataType : 'json',
			success : function(res) {
				if (res.userName == 'null' || res.userQut == 'null'
						|| res.userAns == 'null') {
					alert("존재하지 않는 회원입니다");
				}
			}

		});
	</script>
</body>
</html>