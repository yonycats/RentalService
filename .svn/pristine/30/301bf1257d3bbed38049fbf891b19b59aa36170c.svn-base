<%@page import="kr.or.ddit.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	
	List<CategoryVO> cateList = (List<CategoryVO>)request.getAttribute("cateList");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");


%>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
 th { text-align: center; padding: 10px; } 

</style>


<form action="/category/insert.do" method="post">
  <table class="table table-hover">
    <thead>
		<tr align="center">
			<th>카테고리 이름</th>		
			<th>
			<input type="text" name="cateId" required>
			<input type="button" value="등록" onclick="submitForm2()">
			</th>
		</tr>
	 </thead>
    <tbody>
<% 
	int categorySize = cateList.size();
	if(categorySize > 0){
		for(CategoryVO cv: cateList) {
%>
		<tr align="center">
			<td><%=cv.getCateId()%></td>
			
			<td>                 
           		 <input type="button" value="삭제" onclick="submitForm('<%=cv.getCateId()%>')">
            </td>

		</tr>
<%
		}
	}else{
%>
		<tr>
			<td colspan="2">카테고리가 존재하지 않습니다.</td>
		</tr>
<%
	}
%>		

<!-- 	<tr align="center"> -->
<!-- 		<td colspan="2"> -->
<!-- 			<input type="button" value="등록" onclick="submitForm2()">			 -->
<!-- 		</td> -->
		
<!-- 	</tr> -->
<script>
var contextPath = '<%=request.getContextPath()%>';
function submitForm(cateId) {
    var form = document.querySelector('form');
    if (cateId.trim() !== '') {
//         alert('카테고리가 삭제되었습니다.');
    	swal({
    	    title: "카테고리 삭제 완료!",
    	    icon: "warning",
    	    timer: 1000, 
    	    buttons: false
    	}).then(function() {
    	    form.action = '<%=request.getContextPath()%>/category/list.do?cateId=' + encodeURIComponent(cateId);
    	    form.submit();
    	});
    }
}


function submitForm2() {
    var form = document.querySelector('form');
    var cateNameInput = document.querySelector('input[name="cateId"]');
    if (cateNameInput.value.trim() !== '') {
//     	alert('카테고리가 등록되었습니다.');
    	 swal({
             title: "카테고리 등록 완료!",
             icon: "success",
             timer: 1000, 
             buttons: false
         }).then(function() {
             form.action = '<%=request.getContextPath()%>/category/insert.do';
             form.submit();
         });
    } else {
        alert('카테고리 이름을 입력해주세요.');
    }
}

</script>
</table>
</form>
