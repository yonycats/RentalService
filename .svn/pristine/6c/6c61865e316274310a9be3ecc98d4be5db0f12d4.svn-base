<%@page import="kr.or.ddit.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<%

	NoticeVO nv = (NoticeVO)request.getAttribute("nv");

%>
<!-- <main class="mypage-main-top" > -->
<!--       <div class="mypage-main-top-title" -->
<!--          style="margin-bottom: 50px; font-size: 15px;"> -->
         <h1>공지사항</h1>
     <br>	
<div class="container">
  <table class="table table-striped" style="display:fixed">
    <thead style="display:fixed">
      <tr>
        <th width="10%">공지사항 번호</th>
        <td ><%=nv.getNtcId() %></td>
        <th >등록일</th>
        <td ><%=nv.getNtcDate() %></td>
      </tr>
    </thead>
    <tbody>
      <tr>
       <th >제목</th>
       <td style="padding-right: 120px;"><%=nv.getNtcTitle() %></td>
       <th>작성자</th>
       <td><%=nv.getNtcWriter() %></td>
      </tr>
      <tr>
        <th>내용</th>
        <td colspan="3" style="padding-bottom: 300px;"><%=nv.getNtcContent() %></td>
      </tr>
    </tbody>
  </table>
</div>
	<tr align="center">
	<td colspan="2">
		<button><a href="<%=request.getContextPath() %>/notice/list.do">목록</a></button>
		<button><a href="<%=request.getContextPath() %>/notice/update.do?ntcId=<%=nv.getNtcId()%>">수정</a></button>
		<button><a href="<%=request.getContextPath() %>/notice/delete.do?ntcId=<%=nv.getNtcId()%>">삭제</a></button>
	</td>
	</tr>
 </div>
 </div>
<br><br>
