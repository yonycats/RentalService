<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.ItemInquiryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	List<ItemInquiryVO> itemInquiryList = (List<ItemInquiryVO>)request.getAttribute("itemInquiryList");

	String msg = session.getAttribute("msg") == null? ""
			: (String) session.getAttribute("msg");
	session.removeAttribute("msg");
%>    
<div style="min-height: 300px">
	<table border="1" style="width: 100%">
	<tbody class="itemInquiry">
		<tr>
<!-- 			<th>상품문의ID</th> -->
<!-- 			<th>회원번호</th> -->
<!-- 			<th>상품</th> -->
			<th class="title itemInquiry">제   목</th>
			<th class="content itemInquiry">내     용</th>
			<th class="content-date itemInquiry">작성날짜</th>
			<th class="content-detail itemInquiry">상세보기</th>
		</tr>

<%
	int itemInquirySize = itemInquiryList.size();
	if(itemInquirySize > 0) {
		for(ItemInquiryVO iiv : itemInquiryList) {
%>
		<tr>
<%-- 			<td><%=iiv.getInqId() %></td> --%>
<%-- 			<td><%=iiv.getUserNo() %></td> --%>
<%-- 			<td><%=iiv.getItemId() %></td> --%>
			<td><%=iiv.getInqTitle() %></td>
			<td><%=iiv.getInqContent() %></td>
			<td><%=iiv.getInqDate().substring(0,10) %></td>
			<td><a href="<%=request.getContextPath() %>/itemInquiry/detail.do?inqId=<%=iiv.getInqId()%>">[상세보기]</a></td>
		</tr>
<%
		}
	}
%>
	<tr align="center">
	<td colspan="8"><a href="<%=request.getContextPath()%>/itemInquiry/insert.do">문의 등록</a>
<%-- 	<td colspan="8"><a href="<%=request.getContextPath()%>/itemInquiry/insert.do?itemId=<%=iiv.getItemId()%>">문의 등록</a> --%>
	</tr>
</tbody>
</table>
</div>
