<%@page import="kr.or.ddit.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	List<NoticeVO> ntcList =(List<NoticeVO>)request.getAttribute("ntcList");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");
	

%>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	 <table class="table table-hover">
    <thead>
		<tr>
			<th>ntcId</th>
			<th>제목</th>
			<th>작성자</th>
<!-- 			<th>내용</th> -->
			<th>등록일</th>
<!-- 			<th>첨부파일</th> -->
		</tr>
	 </thead>
   <tbody>
<% 
	int ntcSize = ntcList.size();
	if(ntcSize > 0){
		for(NoticeVO nv: ntcList) {
%>
		<tr>
			<td><%out.print(nv.getNtcId()); %></td>
			<td><a href="<%=request.getContextPath() %>/notice/detail.do?ntcId=<%=nv.getNtcId()%>"><%=nv.getNtcTitle() %></a></td>
<%-- 			<td><%=nv.getNtcTitle() %></td> --%>
			<td><%=nv.getNtcWriter() %></td>
<%-- 			<td><%=nv.getNtcContent() %></td> --%>
			<td><%=nv.getNtcDate() %></td>

		</tr>
<%
		}
	}else{
%>
		<tr>
			<td colspan="5">게시글이 존재하지 않습니다.</td>
		</tr>
<%
	}
%>		
	<tr align="center">
		<td colspan="6"><button><a href="<%=request.getContextPath() %>/notice/insert.do">게시글 등록</a></button></td>
	</tr>

	</table>
<%
	if(msg.equals("SUCCESS")){
%>
<script>
	swal("등록 완료!", "공지사항 게시글이 등록되었습니다.", 'success');
</script>
<%
	}
%>
<%
	if(msg.equals("FAIL")){
%>
<script>
	swal("삭제 완료!", "공지사항 게시글이 삭제되었습니다.", 'warning');
</script>
<%
	}
%>
<%
	if(msg.equals("UPDATE")){
%>
<script>
	swal("수정 완료!", "공지사항 게시글이 수정되었습니다.", 'info');
</script>
<%
	}
%>