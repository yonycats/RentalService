<%@page import="kr.or.ddit.vo.UseInquiryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UseInquiryVO uiv = (UseInquiryVO)request.getAttribute("uiv");
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

<link href="<%=request.getContextPath() %>/views/css/reviewStyle.css"
	rel="stylesheet">
<style>
	.note-style{
		width: 50px;
	}
	.note-font{
		width: 90px;
	}
	.note-font button{
		width: 30px;
	}
	.note-fontname{
		width: 100px;
	}
	.note-fontname div{
		width: 50px;
	}
	.note-color{
		width: 50px;
	}
	.note-color button{
		width: 20px;
	}
	.note-para{
		width: 120px;
	}
	.note-para .btn-group{
		width: 30px;
	}
	.note-table{
		width: 40px;
	}
	.note-insert{
		width: 100px;
	}
	.note-insert button{
		width: 30px;
	}
	.note-view{
		width: 100px;
	}
	.note-view button{
		width: 30px;
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
			<h1 style="font-size: 30px;">문의 수정</h1>
		</div>

		<div class="container">
			<form action="<%=request.getContextPath() %>/useInquiry/update.do"
				method="POST">
				<input type="hidden" name="unqId" value="<%=uiv.getUnqId()%>"> 
				<div class="form-group">
					<label for="title">상품문의제목</label> <input type="text"
						class="form-control" placeholder="title" id="title"
						name="unqTitle" value="<%=uiv.getUnqTitle() %>">
				</div>

				<div class="form-group">
					<label for="title">문의내용</label> <input type="text"
						class="form-control" placeholder="title" id="title"
						name="unqContent" value="<%=uiv.getUnqContent() %>">
				</div>

				<div class="form-group">
					<label for="content">사진</label>
					<textarea id="summernote" class="form-control" rows="5"
						id="content" name="unqImage"></textarea>
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
  
  
  $("#summernote").summernote('code', '<%=uiv.getUnqImage() %>');
  
  
  $("#summernote").on('click', function(e){
	  
  let content = $('#summernote').summernote('code');
  
  
  });
  function valid(e){ //이벤트 받은 매개변수는 이름 아무거나
//	 	alert(e); //요소에 인라인방식으로 정의된 이벤트속성을 통해 연결된 함수에서 이벤트를 넘겨 받아야 함
		e.preventDefault(); //action위치로 이동하는 기능 중지
//	 	alert("모든 입력값을 직렬화처리 후 전달예정입니다.");
		
		//제이쿼리의 serialize()가 입력양식요소들의 name속성을 가지고 자동으로 url인코딩 형식 정보를 제공 
		let formData = $('form').serialize(); //key1=value1&key2=value2&....&key9=value9 
		console.log(formData);
		 
		$.ajax({
			type: 'post',
			url: '/useInquiry/update.do',
			data: formData, //url인코딩(%인코딩)
			success:function(res){
				 console.log("응답>>", res);
				 if(res == 1){
					 if(confirm("")) location.href = "/useInquiry/list.do";
				 }
			},
			error:function(xhr){
				alert("상태 확인: " + xhr.status);
			}
//	 	 	,dataType: '' 
		 })
		 
	 }

</script>
	</div>
</div>



