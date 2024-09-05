<%@page import="kr.or.ddit.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>


<div style="min-height: 300px">
		<table border="1" style="width: 100%">
			<tbody class="review">
				<tr>
					<!-- 			<th>ID</th> -->
					<!-- 			<th>상품번호</th> -->
					<!-- 			<th>주문번호</th> -->
					<th class="star review">별 점</th>
					<th class="title review">제 목</th>
					<th class="content review">내 용</th>
					<th class="content-date review">작성일</th>
					<th class="content-detail review">상세보기</th>
				</tr>

				<%
					int reviewSize = reviewList.size();
				if (reviewSize > 0) {
					for (ReviewVO rv : reviewList) {
				%>
				<tr>
					<%-- 			<td><%=rv.getRevId() %></td> --%>
					<%-- 			<td><%=rv.getItemId() %></td> --%>
					<%-- 			<td><%=rv.getOrdId() %></td> --%>
					<td><%=rv.getRevRating()%></td>
					<td><%=rv.getRevTitle()%></td>
					<td><%=rv.getRevImage()%></td>
					<td><%=rv.getRevDate()%></td>
					<%-- 			<td><a href="<%=request.getContextPath() %>/review/delete.do?revId=<%=rv.getRevId()%>">[삭제]</a></td> --%>
					<td><a
						href="<%=request.getContextPath()%>/review/detail.do?revId=<%=rv.getRevId()%>">[상세보기]</a></td>
				</tr>
				<%
					}
				}
				%>
				
<!-- 				<tr align="center"> -->
<!-- 					<td colspan="8"><a -->
<%-- 						href="<%=request.getContextPath()%>/review/insert.do">[리뷰 등록]</a></td> --%>
<!-- 				</tr> -->

			</tbody>
		</table>
</div>



















<%-- 	<a href="<%=request.getContextPath()%>/review/insert.do">글쓰기</a> --%>
<%-- 	<a href="<%=request.getContextPath()%>/review/detail.do">리뷰 상세</a> --%>