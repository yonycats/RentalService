<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	기업 회원가입 페이지
	<a href="<%=request.getContextPath()%>/user/signUp.do">사용자회원가입 페이지로</a>
	<form action="<%=request.getContextPath()%>/company/signUp.do" method="post">
		<input type="submit">가입신청</input>
	</form>
	<a href="<%=request.getContextPath()%>/item/mainPage.do">취소</a>
</body>
</html>