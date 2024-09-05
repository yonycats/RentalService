<%@page import="kr.or.ddit.vo.PartnershipVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%

	PartnershipVO pv = (PartnershipVO)request.getAttribute("pv");

%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div class="mypage-main-top" >
      <div class="mypage-main-top-title"
         style="font-size: 13px;">
         <h1>제휴문의</h1>
     <br>	

	<form action="<%=request.getContextPath() %>/partnership/approve.do" method="post">
	<input type="hidden" value="<%=pv.getPashId()%>" name="pashId">
	<div class="container">
  <table class="table table-striped">
    
	
	<div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>제휴 번호</th>
        <td><%=pv.getPashId() %></td>
        <th>등록일</th>
        <td><%=pv.getPashDate() %></td>
      </tr>
    </thead>
    <tbody>
      <tr>
       <th>회사명</th>
       <td style="padding-right: 120px;"><%=pv.getComId() %></td>
       <th>담당자</th>
       <td><%=pv.getPashName() %></td>
      </tr>
      <tr>
       <th>이메일</th>
       <td colspan="5"><%=pv.getPashEmail() %></td>
      <tr>
        <th colspan="5">내용</th>
      </tr>
      <tr>
        <td colspan="5" style="padding-bottom: 300px;"><%=pv.getPashContent() %></td>
      </tr>
    </tbody>
    <tr align="center">
	<td colspan="7">
		<button type="submit" name="btn1" class="btn btn-success btn-xs btn-sm" value="거절">승인</button>
		<button type="submit" name="btn2" class="btn btn-danger btn-xs btn-sm" value="거절">거절</button>
		<button type="submit" class="btn btn-info btn-xs btn-sm"><a href="<%=request.getContextPath() %>/partnership/list.do">목록</a></button>
	</td>
	</tr>
  </table>
</div>
</table>
</div>
<br><br>

