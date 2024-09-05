<%@page import="kr.or.ddit.vo.CartVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String joinCd = (String)session.getAttribute("joinCode");
	String menu = (String)request.getAttribute("menu");
%>

<!-- header.jsp -->
<%@include file="include/headerAdmin.jsp" %>
  
<!-- aside1 -->
<%@include file="include/aside1Admin.jsp" %>




<!-- main -->


<% if (joinCd.equals("ntcInsert")) { %>
<%@include file="/views/notice/insert.jsp" %>
 

<% } else if ("ntcDetail".equals(joinCd)) { %>
	<%@include file="/views/notice/adminNtcDetail.jsp" %>

<% } else if ("ntcList".equals(joinCd)) { %>
	<%@include file="/views/notice/adminNtc.jsp" %>

<% } else if ("ntcUpdate".equals(joinCd)) { %>
	<%@include file="/views/notice/update.jsp" %>

<% } else if ("FaqList".equals(joinCd)) { %>
	<%@include file="/views/faq/list.jsp" %>
	
<% } else if ("pashList".equals(joinCd)) { %>
	<%@include file="/views/partnership/adminPash.jsp" %>

<% } else if ("pashDetail".equals(joinCd)) { %>
	<%@include file="/views/partnership/adminPashDetail.jsp" %>

<% } else if ("blackList".equals(joinCd)) { %>
	<%@include file="/views/admin/blackList.jsp" %>

<% } else if ("usList".equals(joinCd)) { %>
	<%@include file="/views/admin/userList.jsp" %>


<% } else if ("adminComList".equals(joinCd)) { %>
	<%@include file="/views/admin/companyList.jsp" %>

<% } else if ("couponList".equals(joinCd)) { %>
	<%@include file="/views/coupon/list.jsp" %>

<% } else if ("cateAdminList".equals(joinCd)) { %>
	<%@include file="/views/category/list.jsp" %>


<% } %>
    

    
    
<!-- footer.jsp -->
<%@include file="include/footerAdmin.jsp" %>


<script>
		
</script>
</body>
</html>