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

    
    
<% if ("mainPage".equals(joinCd)) { %>
	<%@include file="include/mainCarousel.jsp" %>
    <%@include file="item/mainPage.jsp"%>
    
<% } else if ("categoryItemList".equals(joinCd)) { %>
    <%@include file="item/categoryDetail.jsp"%>
    
<% } else if ("detailPage".equals(joinCd)) { %>
    <%@include file="item/detail.jsp"%>
    
<% } else if ("login".equals(joinCd)) { %>
    <%@include file="user/login.jsp"%>
    
<% } else if ("searchPage".equals(joinCd)) { %>
    <%@include file="item/searchPage.jsp"%>
    
<% } else if ("Order".equals(menu)) { %>
   <%@include file="/views/order/order.jsp"%>
    
<% } else if ("FaqList".equals(joinCd)) { %>
   <%@include file="/views/faq/list.jsp" %>
   
<% } else if ("signUp".equals(joinCd)) { %>
   <%@include file="/views/user/signUp.jsp" %>
   
<% } else if ("findId".equals(joinCd)) { %>
   <%@include file="/views/user/findId.jsp" %>
   
<% } else if ("findPass".equals(joinCd)) { %>
   <%@include file="/views/user/findPass.jsp" %>

<% } else if ("pashInsert".equals(joinCd)) { %>
   <%@include file="/views/partnership/insert.jsp" %>

<% } else if ("ntcList".equals(joinCd)) { %>
	<%@include file="/views/notice/list.jsp" %>

<% } else if ("ntcDetail".equals(joinCd)) { %>
	<%@include file="/views/notice/detail.jsp" %>

<% } else if ("pashList".equals(joinCd)) { %>
	<%@include file="/views/partnership/list.jsp" %>

<% } else if ("pashDetail".equals(joinCd)) { %>
	<%@include file="/views/partnership/detail.jsp" %>
	
<% } else if ("checkPass".equals(joinCd)) { %>
	<%@include file="/views/company/checkPass.jsp"%>
	
<% } else if ("checkDelete".equals(joinCd)) { %>
	<%@include file="/views/company/checkDelete.jsp"%>
	
<% } else if ("recentItem".equals(joinCd)) { %>
	<%@include file="/views/recentItem/list.jsp"%>

<% } else if ("useInquiryList".equals(joinCd)) { %>
	<%@include file="/views/inquiryUse/mainUseInquiryList.jsp"%>

<% } else if ("checkPassUser".equals(joinCd)) { %>
	<%@include file="/views/user/checkPass.jsp"%>

<% } else if ("useInquiryInsert".equals(joinCd)) { %>
	<%@include file="/views/inquiryUse/useInquiryInsert.jsp"%>

<% } else if ("mainDetail".equals(joinCd)) { %>
<%@include file="/views/inquiryUse/mainUseInquiryDetail.jsp"%>








<% } %>

<!-- aside2 -->
<%@include file="include/aside2.jsp" %>

<!-- footer.jsp -->
<%@include file="include/footer.jsp" %>

<script>
    // Your JavaScript code here]
    
</script>
</body>
</html>
