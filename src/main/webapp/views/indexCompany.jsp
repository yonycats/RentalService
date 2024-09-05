<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String joinCd = (String)session.getAttribute("joinCode");
	String menu = (String)request.getAttribute("menu");
%>

<!-- header.jsp -->
<%@include file="include/header.jsp"%>

<!-- 푸터 해결용 banner.jsp -->

<!-- aside1 -->
<%@include file="include/aside1Company.jsp"%>


<!-- main -->

    <% if (menu.equals("checkInfo")) { %>
        <%@include file="/views/company/checkInfo.jsp"%>
        
    <% } else if (menu.equals("updateInfo")) { %>
        <%@include file="/views/company/updateInfo.jsp"%>
        
    <% } else if (menu.equals("comItemList")) { %>
   		<%@include file="/views/company/itemList.jsp"%> 
        
    <% } else if (menu.equals("insertItem")) { %>
   		<%@include file="/views/company/insertItem.jsp"%> 
        
    <% } else if (menu.equals("updateItem")) { %>
   		<%@include file="/views/company/updateItem.jsp"%> 




<%} %>

<!-- aside2 -->
<%@include file="include/aside2.jsp"%>

<!-- footer.jsp -->
<%@include file="include/footer.jsp"%>


<script>
	
</script>
</body>
</html>