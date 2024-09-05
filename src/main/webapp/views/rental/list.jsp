<%@page import="kr.or.ddit.vo.RentalDetailVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<style>
.rental {
margin-bottom: 150px;
}
.rentalBox {
	width: 550px;
	height: 170px;
}
.rentalImage {
	border: 2px solid #bfbfbf;;
	border-radius: 15px 15px 15px 15px;
	height: 170px;
}
#cartImage {
	border-radius: 15px 15px 15px 15px;
	height: 160px;
	width: 160px;
}
.rentalBoxName {
	margin-top: 38px;
    width: 350px; 
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis; 
    display: inline-block; 
}
.nameBeauty {
    width: 310px; 
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis; 

}
#rentalIng {
	 font-size: 15px;
	 height: 43px;
	 width: 120px;
	 margin-left: 30px;
	 position: absolute;
}
.rentalIngBox {
 	display: inline-block; 
/*  	margin-left: 20px;  */
/*  	margin-top: 30px;  */
}

</style>
	

<% 
	List<RentalDetailVO> rentalList = (List<RentalDetailVO>)request.getAttribute("rentalList");


%>
	

<div id="container"  class="col-sm-9 mypage-main">

	<div class="mypage-main-top">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내 렌탈 목록
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">내 렌탈 목록</h1>
		</div>

		<div class="rental">


				<div class="sort-options" style="margin-left: 50px; margin-bottom: 10px;">
					<button class="search-sort-btn" data-sort="ing" value="렌탈중">렌탈중</button>
					<button class="search-sort-btn" data-sort="end" value="렌탈종료">렌탈종료</button>
					<button class="search-sort-btn" data-sort="refund" value="렌탈취소">렌탈취소</button>
				</div>
				<div class="sort-options" style="margin-left: 30px; border-bottom: 1px solid #5c5c5c; width: 780px;">
				</div>
				<br>		

			<%
				int rentalListSize = rentalList.size();
				if (rentalListSize > 0) {
					for (RentalDetailVO rdv : rentalList) {
			%>
			
		<div id="rental-list">

			<div id="container" class="container-rental">
				<div id="rentalDetail">
					<div class="rentalImage">
						<a href="<%=request.getContextPath() %>/rental/detail.do?itemId=<%= rdv.getItemId() %>&ordId=<%= rdv.getOrdId() %>">
							<img id="cartImage" src="<%=request.getContextPath()%>/views/images/product/<%= rdv.getFileStreNm()%>" alt="상품이미지" />
						</a>
					</div>
					<div id="rentaldiv" class="col-xl-5 col-md-6 mb-4">
						<div class="card border-left-primary shadow h-100 py-4">
							<div class="card-body">
								<div class="row no-gutters align-items-center content-tx rentalBox">
									<span class="col mr-2 content-tx2 rentalBoxName">
										<div style="margin-left: 20px; width: 30px">
											<span>
												<a href="<%=request.getContextPath() %>/rental/detail.do?itemId=<%= rdv.getItemId() %>&ordId=<%= rdv.getOrdId() %>">									
	 												<div id="rentalIng" class="rentalIngBox" style="margin-left: 370px; margin-top: 80px;"><%=rdv.getOdStatus() %></div>
	 											</a>	
											</span>
											<a href="<%=request.getContextPath() %>/rental/detail.do?itemId=<%= rdv.getItemId() %>&ordId=<%= rdv.getOrdId() %>">	
												<div class="text-base font-weight-bold text-danger text-uppercase mb-1 content-tx1 content-tx3"><%=rdv.getOrdId() %></div>
											</a>
											<br>
											<a href="<%=request.getContextPath() %>/rental/detail.do?itemId=<%= rdv.getItemId() %>&ordId=<%= rdv.getOrdId() %>">	
												<div class="text-base font-weight-bold text-primary text-uppercase mb-1 content-tx1 content-tx3"><%=rdv.getItemMake() %> (<%=rdv.getItemModel() %>)</div>
											</a>
											<a href="<%=request.getContextPath() %>/rental/detail.do?itemId=<%= rdv.getItemId() %>&ordId=<%= rdv.getOrdId() %>">	
												<div class="h5 mb-0 font-weight-bold text-gray-800 content-tx1 nameBeauty"><%=rdv.getItemName() %></div>
											</a>
										</div>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<%
					} // for문
					
				} else {
			%>
			<div>
				<div colspan="5">현재 렌탈 중인 상품이 없습니다.</div>
			</div>
			<%
				} // if문
			%>
		</div>  <!-- rental-list -->

	</div>
</div>



        

<script>
    $(document).on('click', '.search-sort-btn', function() {
        var sortType = $(this).data('sort');
        var status = $(this).attr('value');
        var contextPath = "<%=request.getContextPath()%>";
        
        console.log(status);

		   
        	//렌털 종료 정보를 받아오는  ajax
        	$.ajax({
		       url: contextPath + "/rental/sortList.do", // 서버의 URL
		       type: 'GET',
		       data: { 
		           status: status
		       },
		       success: function(response) {
		           $('#rental-list').empty(); // 기존 제품 목록을 비웁니다.
		           
		           console.log(response);
		           let rst = "";
		           
		           $.each(response, function(){
		        	   console.log(this.itemId);
		           
		           rst += `<div id="container" class="container-rental">`;
		           rst += 	`<div id="rentalDetail">`;
		           rst += 		`<div class="rentalImage">`;
		           rst += 			"<a href='<%=request.getContextPath() %>/rental/detail.do?itemId=" + this.itemId + "&ordId=" + this.ordId + "'>";
		           rst += 				"<img id='cartImage' src='<%=request.getContextPath()%>/views/images/product/" + this.fileStreNm + "' alt='상품이미지' />";
		           rst += 			`</a>`;
				   rst += 		`</div>`;
				   rst += 		`<div id="rentaldiv" class="col-xl-5 col-md-6 mb-4">`;
				   rst += 			`<div class="card border-left-primary shadow h-100 py-4">`;
				   rst += 				`<div class="card-body">`;
				   rst += 					`<div class="row no-gutters align-items-center content-tx rentalBox">`;
				   rst += 						`<span class="col mr-2 content-tx2 rentalBoxName">`;
				   rst += 							`<div style="margin-left: 20px; width: 30px">`;
				   rst += 								`<span>`;
				   rst += 									"<a href='<%=request.getContextPath() %>/rental/detail.do?itemId=" + this.itemId + "&ordId=" + this.ordId + "'>";					
				   rst += 										`<div id="rentalIng" class="rentalIngBox" style="margin-left: 370px; margin-top: 80px;">`;
				   rst += 											this.odStatus;
				   rst += 										`</div>`;
				   rst += 									`</a>`;
				   rst += 								`</span>`;
				   rst += 								"<a href='<%=request.getContextPath() %>/rental/detail.do?itemId=" + this.itemId + "&ordId=" + this.ordId + "'>";
				   rst += 									`<div class="text-base font-weight-bold text-danger text-uppercase mb-1 content-tx1 content-tx3">`;
				   rst +=										this.ordId;
				   rst +=		 							`</div>`;
				   rst += 								`</a>`;
				   rst += 								`<br>`;
				   rst += 								"<a href='<%=request.getContextPath() %>/rental/detail.do?itemId=" + this.itemId + "&ordId=" + this.ordId + "'>";
				   rst += 									`<div class="text-base font-weight-bold text-primary text-uppercase mb-1 content-tx1 content-tx3">`;
				   rst += 										this.itemMake + "(" + this.itemModel + ")";
				   rst +=  									`</div>`;
				   rst += 								`</a>`;
				   rst += 								"<a href='<%=request.getContextPath() %>/rental/detail.do?itemId=" + this.itemId + "&ordId=" + this.ordId + "'>";	
				   rst += 									`<div class="h5 mb-0 font-weight-bold text-gray-800 content-tx1 nameBeauty">`;
				   rst += 										this.itemName;
				   rst += 									`</div>`;
				   rst += 								`</a>`;
				   rst += 							`</div>`;
				   rst += 						`</span>`;
				   rst += 					`</div>`;
				   rst += 				`</div>`;
				   rst += 			`</div>`;
				   rst += 		`</div>`;
				   rst += 	`</div>`;
				   rst += `</div>`;
		           

		        });
                $('#rental-list').append(rst);
            },
            error: function(xhr, status, error) {
                console.error('정렬 요청 중 오류 발생:', error);
            }
        });
    });
</script>

