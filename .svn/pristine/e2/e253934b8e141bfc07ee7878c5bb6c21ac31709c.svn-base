<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<link href="<%=request.getContextPath() %>/views/css/reviewStyle.css" rel="stylesheet">
<%-- <script src="<%=request.getContextPath() %>/resources/js/myStyle.js"></script> --%>

</head>





<body>
  <div class="container">
    <form action="<%=request.getContextPath() %>/itemInquiry/insert.do" method="POST">
			
			
<%-- 		<input type="hidden" name="itemId" value="<%=request.getAttribute("")%>"> --%>
      
		<div class="form-group">
        <label for="title">문의제목</label>
        <input type="text" class="form-control" placeholder="title" id="title" name="inqTitle">
      </div>
      
		<div class="form-group">
        <label for="title">문의내용</label>
        <input type="text" class="form-control" placeholder="title" id="title" name="inqContent">
      </div>
    
      <div class="form-group">
        <label for="content">사진첨부</label>
        <textarea id="summernote" class="form-control" rows="5" id="content" name="inqImage"></textarea>
      </div>
      
      <button type="submit" class="btn btn-primary">글쓰기 등록</button>
	
    </form>
  </div>
  
<script>
  $('#summernote').summernote({
    placeholder: '사진을 첨부해주세요.',
    tabsize: 2,
    height: 400
  });

</script>




</body>
</html>















<!-- <body> -->
<!-- 	리뷰 작성 -->
<%-- 	<form action="<%=request.getContextPath()%>/review/insert.do" --%>
<!-- 		method="post"> -->
<!-- 		<input type="submit">리뷰 저장</input> -->
<!-- 	</form> -->
<%-- 	<a href="<%=request.getContextPath()%>/review/list.do">취소</a> --%>
<!-- </body> -->