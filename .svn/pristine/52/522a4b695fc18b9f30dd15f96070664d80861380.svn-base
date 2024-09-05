<%@page import="kr.or.ddit.vo.PartnershipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	PartnershipVO pv = (PartnershipVO)request.getAttribute("pv");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제휴 승인</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/partnership/approve.do" method="post" enctype="form-data">


<%
	if(msg.equals("SUCCESS")){
%>
<script>
	alert("승인되었습니다.");
</script>
<%
	}
%>

</form>
</body>
</html>