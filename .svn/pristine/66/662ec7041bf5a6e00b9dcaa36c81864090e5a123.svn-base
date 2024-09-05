<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<main
		style="text-align: center; display: flex; justify-content: center; flex-direction: column; align-items: center;">
		<h1>비밀번호 찾기</h1>
		<div style="width: 60%">
			<div id="select_email">
				<div id="findEmail" class="form-container">
					<table class="findPass-table">
						<colgroup>
							<col class="w140">
							<col>
						</colgroup>
						<tbody>
							<form>
							<tr>
								<th scope="row" style="width: 70px;"><label for="findEmail">성함<span
										class="rq"> *</span></label></th>
								<td><input type="text" name="find_pass_name"
									id="find_pass_name" required="" class="frm_input required"
									size="40" maxlength="100"
									style="background-position: right top; background-repeat: no-repeat" /></td>
							</tr>
							<tr>
								<th scope="row"><label for="findEmail">아이디<span
										class="rq"> *</span></label></th>
								<td><input type="text" name="find_pass_id"
									id="find_pass_id" required="" class="frm_input required"
									size="40" maxlength="100"
									style="background-position: right top; background-repeat: no-repeat" />
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="findEmail">이메일<span
										class="rq"> *</span></label></th>
								<td><input type="text" name="find_pass_email"
									id="find_pass_email" required="" class="frm_input required"
									size="40" maxlength="100"
									style="background-position: right top; background-repeat: no-repeat" />
									<input style="margin-left: 10px" type="button"
									id="send_pass_btn" class="btn_find" value="인증번호 요청"
									class="btn_find"></td>
							</tr>
							</form>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
      
    $('#send_pass_btn').click(function() {
        $.ajax({
                    type: 'post',
                    url: '<%=request.getContextPath()%>/user/findPass.do',
                 data : {
                    userName : $("#find_pass_name").val(),
                    userId : $("#find_pass_id").val(),
                    to :$('#find_pass_email').val()
                 },
                 dataType : 'json',
                 success : function(res) {
                    console.log("응답>>", res.to);
                    if (res.userName == 'null' || res.userId == 'null' || res.to == 'null') {
                       alert("찾는 정보가 없습니다.");
                    } else/*  if(res.userName == 'userName' || res.userId == 'userId' || res.to == 'to') */ {
                       alert('이메일로 비밀번호를 전송했습니다.');
                       location.href = "<%=request.getContextPath()%>/user/login.do";
											}
										},
										error : function(xhr) {
											alert('실패');
										}

									})

						});
	</script>
</body>
</html>