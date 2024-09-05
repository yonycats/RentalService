<%@page import="kr.or.ddit.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>
<style>
.tkdtpqhrl {
	padding: 1px 15px;
	font-size: 15px;
	display: inline-block;
	text-align: center;
	border-radius: 15px;
}

#table-reviews tr {
	display: table-row;
	vertical-align: inherit;
	unicode-bidi: isolate;
	border-color: inheri;
}

#table-reviews td {
	color: #666;
	word-break: break-all;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
	font-size: 15px;
}

#table-reviews {
	border-top: 1px solid #c0c0c0;
	border-bottom: 1px solid #c0c0c0;
	border-top: 1px solid #c0c0c0;
}

#title_cell {
	height: 50px;
}

.table-reviews {
	width: 100%;
}

.table-content td {
	padding: 5px;
}


</style>


<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내 리뷰
			</p>
		</div>

		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">리뷰 목록</h1>
		</div>
		<table border="1" class="table-reviews">
			<tbody class="review">
				<tr id="title_cell">
					<th class="title review">제 목</th>
					<th class="content review">내 용</th>
					<th class="star review">별 점</th>
					<th class="content-date review">작성일</th>
					<th class="content-detail review">상세보기</th>
				</tr>

				<%
					int reviewSize = reviewList.size();
					if (reviewSize > 0) {
					for (ReviewVO rv : reviewList) {
				%>
				<tr class="table-content">
					<td><%=rv.getRevTitle()%></td>
					<td><%=rv.getRevImage()%></td>
					<td>
						<%
							String star = rv.getRevRating();
						double ratingDouble = Double.parseDouble(star);
						int ratingInt = (int) ratingDouble;
						for (int i = 0; i < 5; i++) {
							if (i < ratingInt) {
								out.print("<img src='" + request.getContextPath() + "/views/images/기타/fullStar.png' alt='fullStar'>");
							} else if (ratingDouble != ratingInt) {
								out.print("<img src='" + request.getContextPath() + "/views/images/기타/halfStar.png' alt='halfStar'>");
							} else {
								out.print("<img src='" + request.getContextPath() + "/views/images/기타/emptyStar.png' alt='emptyStar'>");
							}
						}
						%>
					</td>
					<td><%=rv.getRevDate().substring(0, 10)%></td>
					<td><a
						href="<%=request.getContextPath()%>/review/detail.do?revId=<%=rv.getRevId()%>"
						class="tkdtpqhrl"
						style="background-color: #333; border: 1px solid #333; color: white; padding: 5">상세보기</a></td>
				</tr>
				<%
					}
				}
				%>

			</tbody>
		</table>
	</div>
</div>
