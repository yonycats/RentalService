<%@page import="kr.or.ddit.vo.CartVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String joinCd = (String)session.getAttribute("joinCode");
	String menu = (String)request.getAttribute("menu");
%>

<!-- header.jsp -->
<%@include file="include/header.jsp"%>

<!-- 푸터 해결용 banner.jsp -->
<%-- <%@include file="include/carousel.jsp"%> --%>

<!-- aside1 -->
<%@include file="include/aside1.jsp"%>


<!-- main -->
<% if (menu.equals("SelectCartList")) { %>
    <%@include file="/views/cart/list.jsp"%>
    
<% } else if (menu.equals("RentalDetail")) { %>
    <%@include file="/views/rental/detail.jsp"%>
    
<% } else if (menu.equals("RentalList")) { %>
    <%@include file="/views/rental/list.jsp"%>
    
<% } else if (menu.equals("checkInfo")) { %>
    <%@include file="/views/user/checkInfo.jsp"%>

<% } else if (menu.equals("cardList")) { %>
    <%@include file="/views/card/list.jsp"%>
    
<% } else if (menu.equals("cardInsert")) { %>
    <%@include file="/views/card/insert.jsp"%> 

<% } else if (menu.equals("myReview")) { %>
    <%@include file="/views/review/myList.jsp"%> 

<% } else if (menu.equals("reviewInsert")) { %>
    <%@include file="/views/review/insert.jsp"%> 

<% } else if (menu.equals("useInquiryList")) { %>
    <%@include file="/views/inquiryUse/useInquiryList.jsp"%> 

<% } else if (menu.equals("useInquiryInsert")) { %>
    <%@include file="/views/inquiryUse/useInquiryInsert.jsp"%> 

<% } else if (menu.equals("reviewDetail")) { %>
    <%@include file="/views/review/detail.jsp"%> 

<% } else if (menu.equals("reviewUpdate")) { %>
    <%@include file="/views/review/update.jsp"%> 
    
<% } else if (menu.equals("useInquiryDetail")) { %>
    <%@include file="/views/inquiryUse/useInquiryDetail.jsp"%> 

<% } else if (menu.equals("useInquiryUpdate")) { %>
    <%@include file="/views/inquiryUse/useInquiryUpdate.jsp"%> 

<% } else if (menu.equals("couponList")) { %>
    <%@include file="/views/coupon/list.jsp"%> 

<% } else if (menu.equals("wishList")) { %>
    <%@include file="/views/wish/list.jsp"%> 

<% } else if (menu.equals("updateInfo")) { %>
    <%@include file="/views/user/updateInfo.jsp"%> 

<% } else if (menu.equals("checkComInfo")) { %>
    <%@include file="/views/company/checkInfo.jsp"%> 

<% } else if (menu.equals("InquiryDetail")) { %>
    <%@include file="/views/inquiry/itemInquiryDetail.jsp"%> 

<% } else if (menu.equals("itemInquiryUpdate")) { %>
    <%@include file="/views/inquiry/itemInquiryUpdate.jsp"%> 

    
<%} %>



<!-- aside2 -->
<%@include file="include/aside2.jsp"%>

<!-- footer.jsp -->
<%@include file="include/footer.jsp"%>


