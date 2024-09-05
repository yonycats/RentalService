<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<link href="<%=request.getContextPath() %>/views/css/reviewStyle.css" rel="stylesheet">
<%-- <script src="<%=request.getContextPath() %>/resources/js/myStyle.js"></script> --%>

<style>
	.btn-group:nth-child(1){
		width: 49px;
	}
	.btn-group:nth-child(2){
		width: 100px;
	}
	.btn-group:nth-child(3){
		width: 110px;
	}
	.btn-group:nth-child(4){
		width: 60px;
	}
	.btn-group:nth-child(4) div{
		width: 60px;
	}
	.btn-group:nth-child(5){
		width: 120px;
	}
	.btn-group:nth-child(5) div{
		width: 50px;
	}
	.btn-group:nth-child(6){
		width: 49px;
	}
	.btn-group:nth-child(7){
		width: 100px;
	}
	.btn-group:nth-child(8){
		width: 100px;
	}
</style>

<div id="container"  class="col-sm-9 mypage-main">

   <div class="mypage-main-top" style="margin-bottom: 150px;">
      <div class="mypage-main-top-nav">
         <p>
            HOME <span>&emsp;>&emsp;</span> 마이페이지
         </p>
      </div>
      <div class="mypage-main-top-title" style="margin-bottom: 50px;">
         <h1 style="font-size: 30px;">리뷰 작성</h1>
      </div>

<div class="container">
    <form action="<%=request.getContextPath() %>/review/insert.do" method="POST">

	<div>
		<label for="title">별점</label>
	</div>
    
 <fieldset class="rate">
    <input type="radio" id="rating10" name="revRating" value="5"><label for="rating10" title="5점"></label>
    <input type="radio" id="rating9" name="revRating" value="4.5"><label class="half" for="rating9" title="4.5점"></label>
    <input type="radio" id="rating8" name="revRating" value="4"><label for="rating8" title="4점"></label>
    <input type="radio" id="rating7" name="revRating" value="3.5"><label class="half" for="rating7" title="3.5점"></label>
    <input type="radio" id="rating6" name="revRating" value="3"><label for="rating6" title="3점"></label>
    <input type="radio" id="rating5" name="revRating" value="2.5"><label class="half" for="rating5" title="2.5점"></label>
    <input type="radio" id="rating4" name="revRating" value="2"><label for="rating4" title="2점"></label>
    <input type="radio" id="rating3" name="revRating" value="1.5"><label class="half" for="rating3" title="1.5점"></label>
    <input type="radio" id="rating2" name="revRating" value="1"><label for="rating2" title="1점"></label>
    <input type="radio" id="rating1" name="revRating" value="0.5"><label class="half" for="rating1" title="0.5점"></label>
 </fieldset>

	  <div class="form-group">
        <label for="title">리뷰제목</label>
        <input type="text" class="form-control" placeholder="title" id="title" name="revTitle">
      </div>
    
      <div class="form-group">
        <label for="content">리뷰 내용</label>
        <textarea id="summernote" class="form-control" rows="5" id="content" name="revImage"></textarea>
      </div>
      
      <button type="submit" class="btn btn-primary">글쓰기 등록</button>
	
    </form>
  </div>
  
<script>
  $('#summernote').summernote({
    placeholder: '사용후기를 적어주세요 ^ㅡ^',
    tabsize: 2,
    height: 400
  });

</script>

</div>


   </div>






  
















<!-- <body> -->
<!-- 	리뷰 작성 -->
<%-- 	<form action="<%=request.getContextPath()%>/review/insert.do" --%>
<!-- 		method="post"> -->
<!-- 		<input type="submit">리뷰 저장</input> -->
<!-- 	</form> -->
<%-- 	<a href="<%=request.getContextPath()%>/review/list.do">취소</a> --%>
<!-- </body> -->