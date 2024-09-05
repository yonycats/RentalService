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

    
    <main id="container" class="col-sm-12 mypage-main">

   <div class="mypage-main-top" style="margin-top: 100px">
      <div class="mypage-main-top-title"
         style="margin-bottom: 50px; font-size:60px;">
         <h1>공지사항</h1>
      </div>


<div class="container">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>공지사항 번호</th>
        <th>제목</th>
        <th>작성자</th>
<!--         <th>내용</th> -->
        <th>등록일</th>
      </tr>
    </thead>
    <tbody>
<% 
	int ntcSize = ntcList.size();
	if(ntcSize > 0){
		for(NoticeVO nv: ntcList) {
%>
      <tr>
        <td><%out.print(nv.getNtcId());%></td>
        <td><a href="<%=request.getContextPath() %>/notice/detail.do?ntcId=<%=nv.getNtcId()%>"><%=nv.getNtcTitle() %></a></td>
        <td><%=nv.getNtcWriter() %></td>
<%--         <td><%=nv.getNtcContent() %></td> --%>
        <td><%=nv.getNtcDate() %></td>
      </tr>
      
<%
		}
	}else{
%>

		<tr>
			<td colspan="4">게시글이 존재하지 않습니다.</td>
		</tr>

<%
	}
%>	
<!--     <tr align="center"> -->
<%-- 		<td colspan="6"><a href="<%=request.getContextPath() %>/notice/insert.do">[게시글 등록]</a></td> --%>
<!-- 	</tr> -->

	</table>
	<br><br>
<%
	if(msg.equals("SUCCESS")){
%> 

<script>
	alert("정상적으로 처리되었습니다.");
 </script> 

<%
	}
%>
    </tbody>
</div>
 </div>
  