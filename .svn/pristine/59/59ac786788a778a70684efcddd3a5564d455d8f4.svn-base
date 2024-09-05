<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<style>
.center-text {
	text-align: center;
}
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
	<div class="container">
		<form class="form-signin" method="post" action="<%=request.getContextPath()%>/admin/login.do"
			method="post">
			

			<h2 class="form-signin-heading">Login</h2>
			<p>
				<label for="userId" class="sr-only">Id</label> <input type="text"
					id="userId" name="userId" class="form-control" placeholder="UserId"
					required autofocus>
			</p>
			<p>
				<label for="password" class="sr-only">Password</label> <input
					type="password" id="userPass" name="userPass" class="form-control"
					placeholder="Password" required>
			</p>
			<button class="btn btn-lg btn-primary btn-block" type="submit"
				id="sign" action="<%=request.getContextPath()%>/user/login.do">로그인</button>

		</form>
</body>
</html>