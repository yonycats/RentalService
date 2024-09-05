<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String joinCd = (String)session.getAttribute("joinCode");
	String menu = (String)request.getAttribute("menu");
%>

<!-- header.jsp -->
<%@include file="include/header.jsp" %>

<!-- banner.jsp -->

<!-- main -->

    
    
<% if ("Order".equals(menu)) { %>
   <%@include file="/views/order/order.jsp"%>

    <% } %>

<!-- aside2 -->
<%@include file="include/aside2.jsp" %>

<!-- footer.jsp -->
<%-- <%@include file="include/footer.jsp" %> --%>

<script>
    // Your JavaScript code here
</script>
</body>
</html>
