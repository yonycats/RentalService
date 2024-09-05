<%@page import="kr.or.ddit.vo.UseInquiryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UseInquiryVO uiv = (UseInquiryVO) request.getAttribute("uiv");
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


<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">사용문의 상세</h1>
		</div>

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
		<div class="btn_useInq" style="padding-right: 0px">
			<a
				href="<%=request.getContextPath()%>/useInquiry/update.do?unqId=<%=uiv.getUnqId()%>"
				class="inq_detail_btn"
				style="background-color: #333; border: 1px solid #333; color: white;margin-right: 10px ">⠀수정⠀</a>
			<a
				href="<%=request.getContextPath()%>/useInquiry/delete.do?unqId=<%=uiv.getUnqId()%>"
				class="inq_detail_btn"
				style="background-color: #333; border: 1px solid #333; color: white;">⠀삭제⠀</a>
		</div>
	</div>
</div>
