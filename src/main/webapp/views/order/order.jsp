<%@page import="kr.or.ddit.vo.CardVO"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.UserVO"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.textAlign {
	text-align: center;
}
.moneyMark {
	background-color: #ffdada; 
	font-weight: 600; 
	border-radius: 10px 10px 10px 10px;
}

</style>

<script type="text/javascript">
	let price = 0;
	let CouponPrice = 0;
	let CardPrice = 0;

	$(document).ready(function() {
		$("input:radio[name=itemPrice]").click(function() {
			price = $('input[name=itemPrice]:checked').val();
			
			let result1 = Math.round(price / 100) * 100
			
			// 금액에 천단위로 , 넣기
			const option = {
				  maximumFractionDigits: 4
			};
			const cn1 =  result1.toLocaleString('ko-KR', option);
			$('#itemPrice').text(cn1);
			
// 			// hidden itemId에 상품 ID 넣기
			let selItemid = $('input[name=itemPrice]:checked').data('itemid');
			document.getElementById('selItemId').value = selItemid;
		})

	});

	function f_couponSelect() {
		// 쿠폰 value 가져오기
		let selectCoupon = document.getElementById("couponSelect");
		let couponValue = selectCoupon.options[selectCoupon.selectedIndex].value;

		//     let priceCoupon = price - (price * (couponValue/100));
		CouponPrice = 0;
		CouponPrice = price - (price * (couponValue / 100));

		let result2 = Math.round(CouponPrice / 100) * 100
		
		// 금액에 천단위로 , 넣기
		const option = {
			  maximumFractionDigits: 4
		};
		const cn2 =  result2.toLocaleString('ko-KR', option);
		$('#itemPrice').text(cn2);
		
		// hidden odAmount에 총 가격 넣기
		document.getElementById('selOdAmount').value = cn2;

	}

	function f_cardSelect() {
		
		if($('#couponSelect > option:selected').val() < 0 ) {
		    alert("쿠폰 사용 유무를 먼저 선택해주세요.");
		    $('select').find('option:first').attr('selected', 'selected');
		    
		    // 리턴하기 전에 해당 칸 선택 안되도록 첫번째 인덱스로 변경하기
			$('#cardSelect').find('option:first').prop('selected', true);
		    return;
		}
		
		// 카드 value 가져오기
		let selectCard = document.getElementById("cardSelect");
		let cardValue = selectCard.options[selectCard.selectedIndex].value;

		//     let priceCard = price - (price * (cardValue/100));
		CardPrice = 0;
		CardPrice = CouponPrice - (price * (cardValue / 100));

		let result3 = Math.round(CardPrice / 100) * 100
		
		// 금액에 천단위로 , 넣기
		const option = {
			  maximumFractionDigits: 4
		};
		const cn3 =  result3.toLocaleString('ko-KR', option);
		$('#itemPrice').text(cn3);

		// hidden odAmount에 총 가격 넣기
		document.getElementById('selOdAmount').value = cn3;
		
		// hidden cardId에 선택한 카드ID 넣기 - 사용자 속성 data값으로 넣기
	    let user_card = $("#cardSelect option:selected");
	    let user_cardid = user_card.attr('data-cardid');    
		
		document.getElementById('selCardId').value = user_cardid;

	}

	function selectReset(event) {
		// 가격 선택시 쿠폰과 카드 사용 유무 초기화하기
		
		// 내용이 빈칸으로 변함 -> 기각
// 		$('#couponSelect').val("");
// 		$('#cardSelect').val("");

		// 가격 선택시 select의 첫번째 인덱스로 변경하기
		let formObj = $('#SendPayForm_id');
		formObj.find("select").find('option:first').prop('selected', true);
		
		// hidden rentDate에 선택한 렌탈 기간 넣기 - value값 사용불가, label값으로 넣기
		const radioId = event.target.id;
		const query = 'label[for="'+ radioId + '"]'
		const text = document.querySelector(query).innerText;
		
		document.getElementById('rentDate').value = text;
	}

	
</script>




<%
	UserVO uv = (UserVO) request.getAttribute("uvResult");
	List<ItemVO> itemList = (List<ItemVO>) request.getAttribute("itemList");
	List<CardVO> cardList = (List<CardVO>) request.getAttribute("cardList");
%>


<div id="container" class="col-sm-12 mypage-main">

	<div class="mypage-main-top" style="margin-top: 200px;">
		<div class="mypage-main-top-title"
			style="margin-bottom: 50px; font-size: 30px;">
			<h1>결제 페이지</h1>
		</div>

		<body>

			<div class="pop_cont" style="width: 60%; margin: auto;">
				<form id="SendPayForm_id" method="POST" onsubmit="payment(event)">
					
					<!-- hidden 값 -->
					<input type="hidden" id="rentDate" name="rentDate" value="">
					<input type="hidden" id="selCardId" name="cardId" value="">
					<input type="hidden" id="seluserNo" name="userNo" value="<%= uv.getUserNo()%>">
					<input type="hidden" id="selOdAmount" name="odAmount" value="">
					<input type="hidden" id="selItemId" name="itemId" value="">


					<%
						int itemSize = itemList.size();
					if (itemSize >= 0) {
						for (ItemVO iv : itemList) {
					%>



					<table border="1" class="info_tbl col-sm-12"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px;">
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tbody>
							<tr style="display: none;">
							</tr>

							<tr class="">
								<td colspan="3" class=""></td>
							</tr>

							<tr>
								<td rowspan="5" class="td0">
									<div style="width: 300px; height: 300px">
										<%-- 		       <a href="<%=request.getContextPath() %>/item/detail.do?ItemId=<%= iv.getItemId() %>">  --%>
										<%-- 		      		<img id="cartImage" src="<%=request.getContextPath()%>/views/images/product/<%= iv.getStreFileNm() %>" alt="상품이미지" /> --%>
										<!-- 		      	</a> -->
										<a
											href="<%=request.getContextPath()%>/item/detail.do?ItemId=<%=iv.getItemId()%>">
											<img id="orderImage"
											src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm()%>"
											alt="상품이미지" style="width: 300px; height: 300px" />
										</a>
									</div>
								</td>
							</tr>

							<tr class="td0">
								<td class="">상품명 :</td>
								<td class="td02"><input style="height: 30px; width: 750px;"
									name="itemName" value="<%=iv.getItemName()%>"
									readonly="readonly"></td>
							</tr>
							<tr>
								<td colspan="2" class="textAlign">
								<input type="radio" id="date1" name="itemPrice" data-itemid="<%=iv.getItemId() %>" onclick="selectReset(event)" value="<%=iv.getItemM60()%>">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렌탈기간(60개월)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label for="date1" style="color: white;">60</label>
									<span style="font-size: 20px;">
										<mark class="moneyMark">
											&nbsp;&nbsp;&nbsp;&nbsp;월&nbsp;&nbsp;<fmt:formatNumber type="number" value="<%=iv.getItemM60()%>"/>&nbsp;원&nbsp;&nbsp;&nbsp;&nbsp;
										</mark></span></td>
							</tr>
							<tr>
								<td colspan="2" class="textAlign">
								<input type="radio" id="date2" name="itemPrice" data-itemid="<%=iv.getItemId() %>" onclick="selectReset(event)" value="<%=iv.getItemM36()%>">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렌탈기간(36개월)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label for="date2" style="color: white;">36</label>
									<span style="font-size: 20px;">
										<mark class="moneyMark">
											&nbsp;&nbsp;&nbsp;&nbsp;월&nbsp;&nbsp;<fmt:formatNumber type="number" value="<%=iv.getItemM36()%>"/>&nbsp;원&nbsp;&nbsp;&nbsp;&nbsp;
										</mark></span></td>
							</tr>
							<tr>
								<td colspan="2" class="textAlign">
								<input type="radio" id="date3" name="itemPrice" data-itemid="<%=iv.getItemId() %>" onclick="selectReset(event)" value="<%=iv.getItemM12()%>">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렌탈기간(12개월)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label for="date3" style="color: white;">12</label>
									<span style="font-size: 20px;">
										<mark class="moneyMark">
											&nbsp;&nbsp;&nbsp;&nbsp;월&nbsp;&nbsp;<fmt:formatNumber type="number" value="<%=iv.getItemM12()%>"/>&nbsp;원&nbsp;&nbsp;&nbsp;&nbsp;
										</mark></span></td>
							</tr>

						</tbody>
					</table>


					<%
						} // for문

					} // if문
					%>


					<br> <br> <br>

					<table border="1" class="info_tbl col-sm-12"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px;">
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tbody style="height: 500px;">
							<tr style="display: none;">
							</tr>

							<tr>
								<th class="td01 textAlign" style="font-size: 15px; padding-left: 150px;">주문인</th>
								<td class="td02 textAlign"><input style="height: 30px; width: 700px;"
									name="nointerest" value="<%=uv.getUserName()%>"
									readonly="readonly"></td>
							</tr>
							<tr>
								<th class="td01 textAlign" style="font-size: 15px; padding-left: 140px;">전화번호</th>
								<td class="td02 textAlign"><input style="height: 30px; width: 700px;"
									name="nointerest" value="<%=uv.getUserTel()%>"
									readonly="readonly"></td>
							</tr>
							<tr>
								<th class="td01 textAlign" style="font-size: 15px; padding-left: 140px;">우편번호</th>
								<td class="td02 textAlign"><input style="height: 30px; width: 700px;"
									name="nointerest" value="<%=uv.getUserZip()%>"
									class="readonly" size="50" readonly="readonly"></td>
							</tr>
							<tr>
								<th class="td01 textAlign" style="font-size: 15px; padding-left: 150px;">주소</th>
								<td class="td02 textAlign"><input style="height: 30px; width: 700px;"
									name="nointerest" value="<%=uv.getUserAddr()%>"
									readonly="readonly"><br></td>
							</tr>
							<tr>
								<th class="td01 textAlign" style="font-size: 15px; padding-left: 140px;">상세주소</th>
								<td class="td02 textAlign"><input style="height: 30px; width: 700px;"
									name="nointerest" value="<%=uv.getUserAddrDetail()%>"
									readonly="readonly"><br></td>
							</tr>


						</tbody>
					</table>

					<br> <br> <br>

					<table border="1" class="info_tbl col-sm-12"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px;">
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tbody style="height: 60px;">
							<tr style="display: none;">
							</tr>

							<tr>
								<th class="td01 contentMarginLeft" style="font-size: 15px; height: 100px; padding-left: 150px;">쿠폰선택</th>
								<td colspan="2" class="td02 textAlign">
								<select id="couponSelect"
									onchange="f_couponSelect()" style="width: 650px; height: 30px;">
										<option value="-10" selected>쿠폰을 선택해주세요</option>
										<option value="0" selected>선택없음</option>
										<option value="10">* 가입축하 * 렌탈 10% 할인쿠폰</option>

								</select></td>
							</tr>


							<tr>
								<th class="td01 contentMarginLeft" style="font-size: 15px; height: 100px; padding-left: 150px;">카드선택</th>
								<td colspan="2" class="td02 textAlign">
								<select id="cardSelect"
									onchange="f_cardSelect()" style="width: 650px; height: 30px;">
										<option value="0" selected>카드를 선택해주세요</option>

										<%
											int cardSize = cardList.size();
										if (cardSize > 0) {
											for (CardVO cv : cardList) {
										%>
										<option id="cardSel" value="<%=cv.getCardDisc()%>" data-cardid="<%=cv.getCardId() %>" >
										*<%=cv.getCardDisc()%>% 할인*&nbsp;&nbsp;[<%=cv.getCardCom()%>]&nbsp;<%=cv.getCardNo()%>
										</option>
										<%
											} // for문

										} // if문
										%>
								</select></td>
							</tr>

						</tbody>
					</table>

					<br> <br> <br>

					<table border="1" class="info_tbl col-sm-12"
						style="font-size: 15px; border-top: 3px solid #6898ff; margin-bottom: 60px;">
						<colgroup>
							<col width="100%">
						</colgroup>
						<tbody style="height: 100px;">

							<td class="textAlign" style="font-size: 30px; width: 600px;">
								<span>총 금액 :&nbsp;&nbsp;</span>
									<mark class="moneyMark"><span id="itemPrice"></span></mark>
<%-- 									<fmt:formatNumber type="number" value="itemPrice"/> --%>
								<span>&nbsp;원</span>
							</td>

						</tbody>
					</table>

					<br> <br>
					<div class="a_wrap">
						<button style="font-size: 20px; padding: 10px; margin-right: 100px; margin-bottom: 80px;">결제하기</button>
					</div>
				</form>
			</div>


<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">

	function payment(e) {
		e.preventDefault();
		
		let rentDate = $('#rentDate').val();
		let cardId = $('#selCardId').val();
		let userNo = $('#seluserNo').val();
		let odAmount = $('#selOdAmount').val();
		let itemId = $('#selItemId').val();

		
		if($('#cardSelect > option:selected').val() < 1 ) {
		    alert("결제할 카드를 선택해주세요.");
		}

		
		let formData = $('form').serialize();
		console.log(formData);
		 
		$.ajax({
			type: 'post',
			url: '<%=request.getContextPath() %>/order/payment.do',
			data: {
				rentDate : rentDate,
				cardId : cardId,
				userNo : userNo,
				odAmount : odAmount,
				itemId : itemId
				},
			success:function(res){
				 console.log("응답>>", res);
				 if(res == 4){
					 alert("주문에 성공하였습니다. 내 렌탈 상품 리스트로 이동합니다.");
					 location.href = '<%=request.getContextPath() %>/rental/list.do';
				 }
			},
			error:function(xhr){
				alert("선택하신 항목이 올바르지 않습니다.");
				alert("상태 확인: " + xhr.status);
			}
//	 	 	,dataType: '' 
		 })

	 }

</script>


	</div>