<%@page import="kr.or.ddit.vo.RentalDetailVO"%>
<%@page import="kr.or.ddit.vo.CardVO"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.UserVO"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>
.rentalName {
	width: 500px;
}
.rentalBoxName {
    width: 620px; 
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis; 
    display: inline-block; 
}
.detailButton {
	width: 110px;
	height: 40px;
}

</style>


<%
	RentalDetailVO rdv = (RentalDetailVO) request.getAttribute("rdv");
	RentalDetailVO rdvDate = (RentalDetailVO) request.getAttribute("rdvDate");
	
	double pct = Double.parseDouble(rdvDate.getUsedPercent());
	
	if (pct >= 100) {
		pct = 100;
	}
%>


					
<div id="container"  class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내 렌탈 목록 <span>&emsp;>&emsp;</span> 내 렌탈 상품 보기
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">내 렌탈 상품 보기</h1>
		</div>
		
		
		
			<form id="SendPayForm_id" method="POST">
				
				<!-- 1번 테이블 -->
				<div class="pop_cont" style="width: 90%; margin: auto;">
					<table border="1" class="info_tbl col-sm-9"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px; width: 800px;  margin-top: 50px;">
						<colgroup>
							<col width="100%">
						</colgroup>
						<tbody>
							<tr style="display: none;">
							</tr>

							<tr class="">
								<td colspan="3" style="height: 40px;">
									<span style="width: 150px; float: left;">&nbsp;&nbsp;&nbsp;주문번호 : </span>
									<span class="rentalBoxName" style="float: left;"><%=rdv.getOrdId() %></span>
								</td>
							</tr>

							<tr class="">
								<td colspan="3" style="height: 40px;">
									<span style="width: 150px; float: left;">&nbsp;&nbsp;&nbsp;상품명 : </span>
									<span class="rentalBoxName" style="float: left;"><%=rdv.getItemName() %></span>
								</td>
							</tr>
							
							
							<tr class="">
								<td colspan="3" style="height: 40px;">
									<span style="width: 150px; float: left;">&nbsp;&nbsp;&nbsp;상품상세 : </span>
									<span class="rentalBoxName" style="float: left;"><%=rdv.getItemAttr() %></span>
								</td>
							</tr>
							

							<tr>
								<td rowspan="4">
								
									<div style="width: 500px;">
										<div style="text-align: center;">
										<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=rdv.getItemId()%>">
											<img id="orderImage"
											src="<%=request.getContextPath()%>/views/images/product/<%=rdv.getFileStreNm()%>"
											alt="상품이미지" style="width: 500px; height: 500px; margin-left: 150;"/>
										</a>
										</div>
									</div>
									
								</td>
							</tr>


						</tbody>
					</table>
				</div>
				
				
				
				
				<br><br><br>
				
				
				<!-- 2번 테이블 -->
				<div class="pop_cont" style="width: 90%; margin: auto;">
					<table border="1px solid black" class="info_tbl col-sm-9"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px; width: 800px;">
						<colgroup>
							<col width="15%">
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tbody>
							<tr style="display: none;">
							</tr>

<!-- 							<tr class=""> -->
<!-- 								<td colspan="3" class=""></td> -->
<!-- 							</tr> -->

							<tr style="height: 80px;">
								<td style="width: 20px;">
									&nbsp;&nbsp;&nbsp;렌탈기간
								</td>
								<td style="width: 80px; text-align: center;">
									시작일 / <%=rdvDate.getRentSta() %> <br>종료일 / <%=rdvDate.getRentEnd() %>
									
								</td>
								<td rowspan="" class="">
										<div class="progress" style="height: 30px; margin-top: 17px;">
  											<div class="progress-bar progress-bar-striped active" role="progressbar"
										  aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" 
										  style="color: black; width:<%=pct %>%;">
										    <p style="margin-top: 4px; font-size: 22px; font-weight: 600;">
										    	<%=pct %>%
										    </p>
										  </div>
										</div>
								</td>
							</tr>

							<tr style="height: 50px;">
								<td style="width: 20px;">
									&nbsp;&nbsp;&nbsp;렌탈비 
								</td>
								<td style="width: 20px; text-align: center;">
 									월
									<fmt:formatNumber type="number" value="<%=rdv.getRentPrice() %>"/>원
<%-- 									<%=rdv.getRentPrice() %> --%>
								</td>
								<td rowspan="4" class="">
									<div style="text-align: center;">
										<div>
											<button type="button" class="btn btn-primary detailButton" style="background-color: #4277be;"
												onclick="f_refund('<%=rdv.getOrdId() %>', '<%=rdv.getItemId() %>', '<%=rdv.getPayCardId() %>', '<%=rdv.getRentPrice() %>')">
												반품 신청하기
											</button>
										</div>
										
										<div style="height: 5px;"></div>
										
										<div>
											<button type="button" class="btn btn-primary detailButton" style="background-color: #4277be;"
												onclick=" location.href = '<%=request.getContextPath() %>/review/insert.do?ordId=<%=rdv.getOrdId() %>&itemId=<%=rdv.getItemId() %>' ";>
												리뷰쓰기
											</button>
										</div>
									</div>
								</td>
							</tr>
							<tr style="height: 50px;">
								<td style="width: 20px;">
									&nbsp;&nbsp;&nbsp;AS기간
								</td>
								<td style="width: 20px; text-align: center;">
									<%=rdv.getItemAs() %>
								</td>
							</tr>
							<tr style="height: 50px;">
								<td style="width: 20px;">
									&nbsp;&nbsp;&nbsp;렌탈사
								</td>
								<td style="width: 20px; text-align: center;">
									&nbsp;&nbsp;&nbsp;<%=rdv.getComName() %>
								</td>
							</tr>
							
							<tr style="height: 50px;">
								<td style="width: 20px;">
									&nbsp;&nbsp;&nbsp;렌탈사번호
								</td>
								<td style="width: 20px; text-align: center;">
									&nbsp;&nbsp;&nbsp;<%=rdv.getComTel() %>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
				
				
				
				
			</form>


<script>
function f_refund(p_ordId, p_itemId, p_cardId, p_price) {
	let ordId = p_ordId;
	let itemId = p_itemId;
	let cardId = p_cardId;
	let price = p_price;
	console.log(ordId, itemId, cardId, price);
	
	console.log("사용한 날짜 : ", <%=rdvDate.getTotalDate() %> - <%=rdvDate.getRestDate() %>);
	
	let result = confirm("결제한지 7일 이내의 상품만 렌탈취소가 가능합니다.\n정말 취소하시겠습니까?");
	
	if (result) {
		
		if ( (<%=rdvDate.getTotalDate() %> - <%=rdvDate.getRestDate() %>) <= 7 ) {
		
		$.ajax({
			type: 'post',
			url: '<%=request.getContextPath() %>/refund/insert.do',
			data: {
				ordId : ordId,
				itemId : itemId,
				cardId : cardId,
				price : price
				},
			success:function(res){
				 console.log("응답>>", res);
				 if(res == 2){
					 alert("반품처리가 성공하였습니다.\n내 렌탈 상품 리스트로 이동합니다.");
					 location.href = '<%=request.getContextPath() %>/rental/list.do';
				 }
			},
			error:function(xhr){
				alert("선택하신 항목이 올바르지 않습니다.");
				alert("상태 확인: " + xhr.status);
			}
	// 	 	,dataType: '' 
		 })
			
		} else {
			alert("결제한지 7일이 경과했습니다.\n렌탈사에 문의하세요.");
		}
	} else {
		alert("취소되었습니다.");
	}
}


</script>


