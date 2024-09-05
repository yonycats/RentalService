<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.ItemInquiryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<ItemInquiryVO> itemInquiryList = (List<ItemInquiryVO>) request.getAttribute("itemInquiryList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.inq_myList_btn {
	padding: 10px 12px;
	font-size: 17px;
	display: inline-block;
	text-align: center;
	border-radius: 15px;
	float: right;
	margin: 10px 10px 0 0;
}
}

#myList_inq tr {
	display: table-row;
	vertical-align: inherit;
	unicode-bidi: isolate;
	border-color: inheri;
}

#myList_inq td {
	color: #666;
	word-break: break-all;
	font-size: 15px;
	border-bottom: 1px solid #e2e2e2;
	text-align: left;
	font-size: 15px;
}

#myList_inq {
	border-top: 1px solid #c0c0c0;
	border-bottom: 1px solid #c0c0c0;
	border-top: 1px solid #c0c0c0;
}

/* .w140 { */
/*    background-color: #f8f8f8; */
/* } */
#myList_title_cell {
	height: 50px;
}

.myList_inq {
	width: 100%;
}

.inq_content td {
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


</head>
<body>
	<table border="1" style="width: 100%" class="myList_inq">
		<tbody class="itemInquiry">
			<tr id="myList_title_cell">
				<th style="text-align: center;font-size: 17px;font-weight: 500; width: 258px;" class="title itemInquiry">제 목</th>
				<th style="text-align: center;font-size: 17px;font-weight: 500; width: 348px;" class="content itemInquiry">내 용</th>
				<th style="text-align: center;font-size: 17px;font-weight: 500; width: 94px;" class="content-date itemInquiry">작성날짜</th>
				<th style="text-align: center;font-size: 17px;font-weight: 500; width: 110px;" class="content-detail itemInquiry">상세보기</th>
			</tr>

			<%
				int itemInquirySize = itemInquiryList.size();
			if (itemInquirySize > 0) {
				for (ItemInquiryVO iiv : itemInquiryList) {
			%>
			<tr class="inq_content">
				<td style="font-size: 14px"><%=iiv.getInqTitle()%></td>
				<td style="font-size: 14px"><%=iiv.getInqContent()%></td>
				<td style="font-size: 14px"><%=iiv.getInqDate().substring(0,10)%></td>
				<td style="display: flex;justify-content: center; border-top: none;border-left: none;margin: 0;padding: 0"><a
					href="<%=request.getContextPath()%>/itemInquiry/detail.do?inqId=<%=iiv.getInqId()%>"
					class="inq_myList_btn" style="margin: 0;font-size: 14px"
					>[상세보기]</a></td>
			</tr>
			<%
				}
			}
			%>
			<tr align="center">
			</tr>
		</tbody>
	</table>
</body>
</html>