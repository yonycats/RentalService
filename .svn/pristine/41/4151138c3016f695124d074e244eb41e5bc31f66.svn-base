<%@page import="kr.or.ddit.vo.UseInquiryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	List<UseInquiryVO> useInquiryList = (List<UseInquiryVO>) request.getAttribute("useInquiryList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>


<style>
.inq_btn {
	padding: 10px 12px;
	font-size: 17px;
	display: inline-block;
	text-align: center;
	border-radius: 15px;
	float: right;
	margin: 10px 10px 0 0;
}

#table-inquery tr {
	display: table-row;
	vertical-align: inherit;
	unicode-bidi: isolate;
	border-color: inheri;
}

#table-inquery td {
	color: #666;
	word-break: break-all;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: center;
	font-size: 15px;
}

#table-inquery {
	text-align: center;
	border-top: 1px solid #c0c0c0;
	border-bottom: 1px solid #c0c0c0;
	border-top: 1px solid #c0c0c0;
}

/* .w140 { */
/*    background-color: #f8f8f8; */
/* } */
#inq_title_cell {
	height: 50px;
}

.table-inquery {
	width: 100%;
}

.inquery-content td {
	padding: 5px;
}

#use_inq_list {
	min-height: 400px;
	overflow: auto;
	position: relative;
}

#product_inq_list {
	min-height: 400px;
	overflow: auto;
	position: relative;
}

#ansdml_btn {
	height: 80px;
	overflow: auto;
}

.table-inquiry th {
	text-align: center;
	align-items: center;
}
</style>




<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내
				문의
			</p>
		</div>

		<div id="use_inq_list">
			<div class="mypage-main-top-title" style="margin-bottom: 50px;">
				<h1 style="font-size: 30px;">사용문의 목록</h1>
			</div>

			<table border="1" class="table-inquery">
				<tbody class="inquery_user" style="text-align: center;">
					<tr id="inq_title_cell">
						<th style="text-align: center;font-size: 17px;font-weight: 500" class="inqTitle">문의제목</th>
						<th style="text-align: center;font-size: 17px;font-weight: 500" class="inqContent">문의내용</th>
						<th style="text-align: center;font-size: 17px;font-weight: 500" class="inqDate">작성날짜</th>
						<th style="text-align: center;font-size: 17px;font-weight: 500" class="inqDetail">상세보기</th>
					</tr>

					<%
						int useInquirySize = useInquiryList.size();
					if (useInquirySize > 0) {
						for (UseInquiryVO uiv : useInquiryList) {
					%>
					<tr class="inquery-content">
						<td style="font-size: 14px"><%=uiv.getUnqTitle()%></td>
						<td style="font-size: 14px"><%=uiv.getUnqContent()%></td>
						<td style="font-size: 14px"><%=uiv.getUnqDate().substring(0,10)%></td>
						<td style="display: flex;justify-content: center; border-top: none;border-left: none;"><a
							href="<%=request.getContextPath()%>/useInquiry/detail.do?unqId=<%=uiv.getUnqId()%>"
							class="inq_btn"
							style="margin: 0;font-size: 14px">[상세보기]</a></td>
					</tr>

					<%
						}
					}
					%>
				
			</table>
		</div>






		<div class="product_inq_list">
			<div class="mypage-main-top-title" id="tkdvnaansdml"
				style="margin-bottom: 50px;">
				<h1 style="font-size: 30px;">상품문의 목록</h1>
			</div>

				<c:import
					url="http://localhost:8888/RentalService/itemInquiry/mylist.do">
					<c:param name="userNo" value="${userInfo.userNo}"></c:param>
				</c:import>

		</div>




	</div>
</div>
