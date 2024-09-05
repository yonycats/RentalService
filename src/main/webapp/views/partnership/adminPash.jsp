<%@page import="kr.or.ddit.vo.PartnershipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	List<PartnershipVO> pashList = (List<PartnershipVO>)request.getAttribute("pashList");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");


%>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<div id="container" class="col-sm-12 mypage-main">

   <div class="mypage-main-top">
      <div class="mypage-main-top-title"
         style="margin-bottom: 50px; font-size: 60px;">
         <h2>제휴문의</h2>
      </div>

<body>
<div class="container">
<!--   <h2>공지사항</h2> -->
  <table class="table table-hover">
    <thead>
		<tr>
			<th>제휴문의 번호</th>
			<th>제목</th>
			<th>I D</th>
			<th>작성자</th>
<!-- 			<th>내용</th> -->
			<th>등록일</th>
			<th>승인</th>
<!-- 			<th>첨부파일</th> -->
		</tr>
	 </thead>
   <tbody>
<% 
	int pashSize = pashList.size();
	if(pashSize > 0){
		for(PartnershipVO pv: pashList) {
%>
		<tr>
			<td><%out.print(pv.getPashId()); %></td>
			<td><a href="<%=request.getContextPath() %>/partnership/detail.do?pashId=<%=pv.getPashId() %>"><%=pv.getPashTitle() %></a></td>
<%-- 			<td><%=nv.getNtcTitle() %></td> --%>
			<td><%=pv.getComId() %></td>
			<td><%=pv.getPashName() %></td>
<%-- 			<td><%=pv.getPashContent() %></td> --%>
			<td><%=pv.getPashDate() %></td>
			<td>
			<%
			if(pv.getPashYn().equals("Y")){
				%>
			<span style="color:cornflowerblue;">승인완료</span>
			<% 
			}
			%>
			<%
			if(pv.getPashYn().equals("N")){
				%>
			<span style="color:darkorange;">처리중</span>
			<% 
			}
			%>
			</td>

		</tr>
<%
		}
	}else{
%>
		<tr>
			<td colspan="6">게시글이 존재하지 않습니다.</td>
		</tr>
<%
	}
%>		
	
	

	</table><br><br>
<%
	if(msg.equals("SUCCESS")){
%>
<script>
	swal("승인", "제휴승인이 완료되었습니다.", 'success');
</script>
<%
	}
%>

<%
	 if(msg.equals("FAIL")){
%>
<script>
	swal("거절", "제휴승인이 거절되었습니다.", "error");
</script>
<%
	}
%>
</div>
</body>
