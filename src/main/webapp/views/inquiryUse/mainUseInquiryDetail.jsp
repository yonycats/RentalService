<%@page import="kr.or.ddit.vo.UseInquiryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UseInquiryVO uiv = (UseInquiryVO) request.getAttribute("useInquiryDetail");
%>

<style>
.btn_useInq {
	font-weight: 500;
	padding: 18px 25px;
	font-size: 17px;
	text-align: right;
}

#detail_inq_table tr {
	display: table-row;
	vertical-align: inherit;
	unicode-bidi: isolate;
	border-color: inheri
}

#detail_inq_table td {
	color: #666;
	word-break: break-all;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
	padding-left: 15px;
}

#detail_inq_table {
	width: 100%;
	border-top: 1px solid #c0c0c0;
	border-bottom: 1px solid #c0c0c0;
	border-top: 1px solid #c0c0c0;
}

#detail_inq_table {
	width: 100%
}

#detail_inq_table td:first-child {
	width: 15%;
	padding: 15px 20px;
	background-color: #f8f8f8;
	font-weight: 500;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: center;
}

.inq_detail_btn {
	padding: 10px 12px;
	font-size: 17px;
	display: inline-block;
	text-align: center;
	border-radius: 15px;
}
</style>

<main class="mypage-main-top"
	style="margin-top: 220px; display: flex; justify-content: center;">
	<div class="mypage-main-top-title"
		style="margin-bottom: 50px; font-size: 15px; display: flex; justify-content: center; align-items: center; flex-direction: column; width: 80%">
		<h1>사용 문의</h1>
		<br>
		<div id="container" class="col-sm-9 mypage-main" style="width: 60%">

			<table border="1" id="detail_inq_table">
				<tr>
					<td>상품문의번호</td>
					<td><%=uiv.getUnqId()%></td>
					<th
						style="width: 15%; padding: 15px 20px; background-color: #f8f8f8; font-weight: 500; font-size: 15px; border-bottom: 1px solid #e2e2e2; text-align: center;">작성일자</th>
					<td><%=uiv.getUnqDate().substring(0, 10)%></td>
				</tr>
				<tr>
					<td>문의제목</td>
					<td colspan="3"><%=uiv.getUnqTitle()%></td>
				</tr>
				<tr>
					<td colspan="4">문의내용</td>
				</tr>
				<tr>
					<td colspan="4" style="height: 300px;background-color: white;text-align: left; vertical-align: top;" ><%=uiv.getUnqContent()%></td>
				</tr>
			</table>
		</div>
	</div>