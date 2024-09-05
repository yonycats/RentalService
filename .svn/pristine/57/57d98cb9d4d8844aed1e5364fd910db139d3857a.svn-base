<%@page import="kr.or.ddit.vo.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	List<UserVO> usList = (List<UserVO>)request.getAttribute("usList");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");

%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<form action="/admin/blackListUpdate.do" method="post">
	<table class="table table-hover">
    <thead>
		<tr>
			<th>UserID</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>상세주소</th>
			<th>우편번호</th>
			<th>반품횟수</th>
<!-- 			<th>첨부파일</th> -->
		</tr>
	</thead>
   <tbody>
<% 
	int usListSize = usList.size();
	if(usListSize > 0){
		for(UserVO uv: usList) {
%>
		<tr>
			<td><%out.print(uv.getUserId()); %></td>
			<td><%=uv.getUserName()%></a></td>
			<td><%=uv.getUserEmail() %></td>
			<td><%=uv.getUserTel() %></td>
			<td><%=uv.getUserAddr() %></td>
			<td><%=uv.getUserAddrDetail() %></td>
			<td><%=uv.getUserZip() %></td>
			<td><%=uv.getUserCnt() %></td>
			<td>                 
           		 <input type="checkbox" name="userId" value="<%= uv.getUserId() %>">
            </td>

		</tr>
<%
		}
	}else{
%>
		<tr>
			<td colspan="9">게시글이 존재하지 않습니다.</td>
		</tr>
<%
	}
%>		
<%
	if(msg.equals("SUCCESS")){
%>
<script>
	swal("블랙리스트 등록 완료", "", 'success');
</script>
<%
	}
%>
	<tr align="center">
<%-- 		<td colspan="8"><a href="<%=request.getContextPath() %>/admin/blackList.do">[블랙리스트 등록]</a></td> --%>
		<td colspan="9">
			<input type="button" value="블랙리스트 등록" onclick="submitForm()">
			<input type="button" value="블랙리스트 목록" onclick="submitForm2()">
		</td>
		
	</tr>
<script>
function submitForm() {
	
    var form = document.querySelector('form');
    form.method = 'post';
    form.action = '<%=request.getContextPath()%>/admin/blackListUpdate.do';
    form.submit();
}

function submitForm2() {
    var form = document.querySelector('form');
    form.action = '<%=request.getContextPath()%>/admin/blackList.do';
    form.submit();
}
</script>

	</table>
</form>
