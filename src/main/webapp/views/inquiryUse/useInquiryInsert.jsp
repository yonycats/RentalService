<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<link href="<%=request.getContextPath() %>/views/css/reviewStyle.css"
	rel="stylesheet">

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


<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">문의 작성하기</h1>
		</div>

		<div class="container">
			<form action="<%=request.getContextPath() %>/useInquiry/insert.do"
				method="POST">


				<%-- 		<input type="hidden" name="itemId" value="<%=request.getAttribute("")%>"> --%>

				<div class="form-group">
					<label for="title">문의제목</label> <input type="text"
						class="form-control" placeholder="title" id="title"
						name="unqTitle">
				</div>

				<div class="form-group">
					<label for="title">문의내용</label> <input type="text"
						class="form-control" placeholder="title" id="title"
						name="unqContent">
				</div>

				<div class="form-group">
					<label for="content">사진첨부</label>
					<textarea id="summernote" class="form-control" rows="5"
						id="content" name="unqImage"></textarea>
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


	</div>


</div>
