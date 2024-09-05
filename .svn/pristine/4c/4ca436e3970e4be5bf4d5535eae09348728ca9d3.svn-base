<%@page import="kr.or.ddit.vo.ReviewNameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ReviewNameVO rnv = (ReviewNameVO) request.getAttribute("rnv");
%>

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


<link href="<%=request.getContextPath()%>/views/css/reviewStyle.css"
	rel="stylesheet">
<%-- <script src="<%=request.getContextPath() %>/resources/js/myStyle.js"></script> --%>




<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 내 리뷰 <span>&emsp;>&emsp;</span> 내 리뷰 수정
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">내 리뷰 수정</h1>
		</div>

		<div class="container">
			<form action="<%=request.getContextPath()%>/review/update.do"
				method="POST">
				<!--     <form method="post" onsubmit="valid(event)"> -->

				<div>
					<label for="title">별점</label>
				</div>

				<fieldset class="rate">
					<input type="radio" id="rating10" name="revRating" value="10"><label
						for="rating10" title="5점"></label> <input type="radio"
						id="rating9" name="revRating" value="9"><label
						class="half" for="rating9" title="4.5점"></label> <input
						type="radio" id="rating8" name="revRating" value="8"><label
						for="rating8" title="4점"></label> <input type="radio" id="rating7"
						name="revRating" value="7"><label class="half"
						for="rating7" title="3.5점"></label> <input type="radio"
						id="rating6" name="revRating" value="6"><label
						for="rating6" title="3점"></label> <input type="radio" id="rating5"
						name="revRating" value="5"><label class="half"
						for="rating5" title="2.5점"></label> <input type="radio"
						id="rating4" name="revRating" value="4"><label
						for="rating4" title="2점"></label> <input type="radio" id="rating3"
						name="revRating" value="3"><label class="half"
						for="rating3" title="1.5점"></label> <input type="radio"
						id="rating2" name="revRating" value="2"><label
						for="rating2" title="1점"></label> <input type="radio" id="rating1"
						name="revRating" value="1"><label class="half"
						for="rating1" title="0.5점"></label>
				</fieldset>

				<div class="form-group">
					<label for="title">리뷰제목</label> <input type="text"
						class="form-control" placeholder="title" id="title"
						name="revTitle" value="<%=rnv.getRevTitle()%>">
				</div>

				<div class="form-group">
					<label for="content">리뷰 내용</label>
					<textarea id="summernote" class="form-control" rows="5"
						id="content" name="revImage"></textarea>
				</div>

				<button type="submit" class="btn btn-primary">수정하기</button>

			</form>
		</div>

		<script>

  $('#summernote').summernote({
    placeholder: '수정할 내용을 적어주세요 ^ㅡ^',
    tabsize: 2,
    height: 400
  });
  
  
  $("#summernote").summernote('code', '<%=rnv.getRevImage()%>');

			$("#summernote").on('click', function(e) {

				let content = $('#summernote').summernote('code');

			});
			function valid(e) { //이벤트 받은 매개변수는 이름 아무거나
			//	 	alert(e); //요소에 인라인방식으로 정의된 이벤트속성을 통해 연결된 함수에서 이벤트를 넘겨 받아야 함
				e.preventDefault(); //action위치로 이동하는 기능 중지
				//	 	alert("모든 입력값을 직렬화처리 후 전달예정입니다.");

				//제이쿼리의 serialize()가 입력양식요소들의 name속성을 가지고 자동으로 url인코딩 형식 정보를 제공 
				let formData = $('form').serialize(); //key1=value1&key2=value2&....&key9=value9 
				console.log(formData);

				$.ajax({
					type : 'post',
					url : '/review/update.do',
					data : formData, //url인코딩(%인코딩)
					success : function(res) {
						console.log("응답>>", res);
						if (res == 1) {
							if (confirm(""))
								location.href = "/review/mylist.do";
						}
					},
					error : function(xhr) {
						alert("상태 확인: " + xhr.status);
					}
				//	 	 	,dataType: '' 
				})

			}
		</script>

	</div>
</div>













<!-- 	리뷰 수정 -->
<%-- 	<form action="<%=request.getContextPath()%>/review/update.do" --%>
<!-- 		method="post"> -->
<!-- 		<input type="submit">수정</input> -->
<!-- 	</form> -->
<%-- 	<a href="<%=request.getContextPath()%>/review/detail.do">취소</a> --%>