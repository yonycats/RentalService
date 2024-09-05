<%@page import="kr.or.ddit.vo.ReviewVO"%>
<%@page import="kr.or.ddit.vo.ReviewNameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<%
ReviewNameVO rnv = (ReviewNameVO) request.getAttribute("rnv");
%>

<style>
.btn_review_detail {
	font-weight: 500;
	padding: 18px 25px;
	font-size: 17px;
	text-align: right;
}

#detail-table tr {
	display: table-row;
	vertical-align: inherit;
	unicode-bidi: isolate;
	border-color: inheri
}

#detail-table td {
	color: #666;
	word-break: break-all;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
}

#detail-table {
	width: 100%;
	border-top: 1px solid #c0c0c0;
	border-bottom: 1px solid #c0c0c0;
	border-top: 1px solid #c0c0c0;
}

.w140 {
	background-color: #f8f8f8;
}

#detail-table {
	width: 100%
}

#detail-table td:first-child {
	width: 15%;
	padding: 15px 20px;
	background-color: #f8f8f8;
	font-weight: 500;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
}

#detail-table td:nth-child(3) {
	width: 15%;
	padding: 15px 20px;
	background-color: #f8f8f8;
	font-weight: 500;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
}

#detail-table td:nth-child(2) {
	padding: 15px 0 15px 15px;
}

#detail-table td:nth-child(4) {
	padding: 15px 0 15px 15px;
}

.review_detail_btn {
	padding: 10px 12px;
	font-size: 17px;
	display: inline-block;
	text-align: center;
	border-radius: 15px;
}
</style>

<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 리뷰
				목록 <span>&emsp;>&emsp;</span> 내 리뷰
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">리뷰 상세</h1>
		</div>



		<table border="1" id="detail-table">
			<colgroup>
				<col class="w140" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<td><label><span>리뷰번호</span></label></td>
					<td><%=rnv.getRevId()%></td>
					<td><label><span>제품명</span></label></td>
					<td><%=rnv.getItemName()%></td>
				</tr>
				<tr>
					<td><label><span>별점</span></label></td>
					<td colspan="3">
						<%--                         out.print("<img src='<%=request.getContextPath()%>/views/images/기타/halfStar.png' alt='halfStar'>"); --%>
						<%
							String ratingStr = rnv.getRevRating();
						double ratingDouble = Double.parseDouble(ratingStr);
						int ratingInt = Integer.parseInt(ratingStr);
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
				</tr>
				<tr>
					<td><label><span>리뷰제목</span></label></td>
					<td colspan="3"><%=rnv.getRevTitle()%></td>
				</tr>
				<tr>
					<td><label><span>리뷰내용</span></label></td>
					<td colspan="3"><%=rnv.getRevImage()%></td>
				</tr>
			</tbody>
		</table>

		<div class="btn_review_detail">
			<a
				href="<%=request.getContextPath()%>/review/update.do?revId=<%=rnv.getRevId()%>"
				class="review_detail_btn"
				style="background-color: #333; border: 1px solid #333; color: white; margin-right: 5px;">⠀수정⠀</a>
			<a
				href="<%=request.getContextPath()%>/review/delete.do?revId=<%=rnv.getRevId()%>"
				class="review_detail_btn"
				style="background-color: #333; border: 1px solid #333; color: white;">⠀삭제⠀</a>
		</div>
	</div>
</div>