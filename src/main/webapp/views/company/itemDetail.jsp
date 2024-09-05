<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/company/insertItem.do"
		method="post">
		<input type="submit">등록완료</input>
	</form>
	<a href="<%=request.getContextPath()%>/company/deleteItem.do">삭제</a>
	<a href="<%=request.getContextPath()%>/company/itemList.do">취소</a>
	
</body>
</html>