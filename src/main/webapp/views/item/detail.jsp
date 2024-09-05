<%@page import="kr.or.ddit.vo.ItemInquiryVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
ItemVO itemInfo = (ItemVO) request.getAttribute("itemInfo");
String subImg = (String) request.getAttribute("subImg");
ItemInquiryVO iiv = (ItemInquiryVO)request.getAttribute("iiv");
int itemM60 = itemInfo.getItemM60();
int itemM36 = itemInfo.getItemM36();
int itemM12 = itemInfo.getItemM12();
String strItemM60 = String.format("%,d", itemM60);
String strItemM36 = String.format("%,d", itemM36);
String strItemM12 = String.format("%,d", itemM12);

%>


<style>
a {
  text-decoration: none;
  color: inherit;
  cursor: pointer;
}

/* .right_area .icon { */
/*   display: flex; */
/*   align-items: center; */
/*   justify-content: center; */
/*   width: calc(100vw * (45 / 1920)); */
/*   height: calc(100vw * (45 / 1920)); */

/*   border-radius: 50%; */
/*   border: solid 2px #eaeaea; */
/*   background-color: #fff; */
/* } */
.icon.heart img {
  width: calc(100vw * (24 / 1920));
  height: calc(100vw * (24 / 1920));
}

.icon.heart.fas {
  background-color: #ff9800;
  color: white;
}
.heart {
  transform-origin: center;
}
.heart.active img {
  animation: animateHeart 0.3s linear forwards;
}

@keyframes animateHeart {
  0% {
    transform: scale(0.2);
  }
  40% {
    transform: scale(1.2);
  }
  100% {
    transform: scale(1);
  }
}

</style>


<!-- 	상품 상세 정보 -->
<%-- 	<form action="<%=request.getContextPath()%>/order/order.do" --%>
<!-- 		method="post"> -->
<!-- 		<input type="submit">바로 주문</input> -->
<!-- 	</form> -->
<%-- 	<a href="<%=request.getContextPath()%>/cart/insert.do">장바구니</a> --%>
<%-- 	<a href="<%=request.getContextPath()%>/item/detail.do">추천 상품</a> --%>
<%-- 	<a href="<%=request.getContextPath()%>/review/list.do">리뷰 보기</a> --%>
<%-- 	<a href="<%=request.getContextPath()%>/inquiry/list.do">문의 게시판</a> --%>
<main class="container" style="display: flex; flex-direction: column;">
	<form name="buyform" id="buyform" method="post" action="<%=request.getContextPath() %>/order/order.do" style="padding: 30px">
		<input type="hidden" name="itemId" value="<%=itemInfo.getItemId() %>">
	
		<div class="vi_info">
			<div class="col-sm-6 vi_img_bx"
				style="display: flex; justify-content: center;">
				<img alt=""
					src="<%=request.getContextPath()%>/views/images/product/<%=itemInfo.getStreFileNm()%>"
					style="width: 450px; height: 450px; border: 1px solid #ccc;"
					id="big">
			</div>
			<div class="col-sm-6 vi_txt_bx"
				style="display: flex; justify-content: center; flex-direction: column; align-content: center;">
				<h2 class="vitit"
					style="font-size: 25px; font-weight: 500; color: black; border-bottom: 1px solid #ccc; padding-bottom: 27px">
					<%=itemInfo.getItemName()%>
					<div class="vimodel"
						style="margin-top: 25px; font-size: 16px; font-weight: 300">
						<span style="color: #aaa; margin: 0 10px 0 0">모델명&nbsp;</span><%=itemInfo.getItemModel()%>
							
							
							
							<div style="position: absolute; right: 35; top: 75;">
<%-- 								<button class="wish-item" onclick="wishAdd(<%=itemInfo.getItemId()%>)"> --%>
								    <div class="right_area">
								      <a href="javascript:;" class="icon heart" style="width: 40px; height: 40px;">
								        <img id="wishimages"
								          style="width: 40px; height: 40px;"
								          src="<%=request.getContextPath()%>/views/images/기타/grayheart.png"
								          alt="하기"/>
								      </a>
								    </div>
<!-- 								</button> -->
							</div>
							
							
							
					</div>

				</h2>
				<div>
					<div
						style="margin-top: 20px; padding-left: 10px; font-size: 15px; font-weight: 500">최저
						가격</div>
					<div
						style="display: flex; justify-content: space-between; margin-bottom: 20px">
						<ul class="detail-select-ul">
							<li style="padding-left: 15px"><button type="button" class="detail-selectable-button"
									data-value="<%=strItemM60%>">
									60개월<br> <span class="item-strPrice"><%=strItemM60%></span><span>원</span>
								</button></li>
							<li><button type="button" class="detail-selectable-button"
									data-value="<%=strItemM36%>">
									36개월<br> <span class="item-strPrice"><%=strItemM36%></span><span>원</span>
								</button></li>
							<li><button type="button" class="detail-selectable-button"
									data-value="<%=strItemM12%>">
									12개월<br> <span class="item-strPrice"><%=strItemM12%></span><span>원</span>
								</button></li>
						</ul>
					</div>
					<input type="hidden" name="selectedValue" id="selectedValue">
					<div class="vi_price_bx">
						<dl class="priceBx3">
							<dt>월렌탈료</dt>
							<dd id="sit_it_price">
								<%=strItemM60%><span>원</span>
							</dd>
						</dl>

					</div>
				</div>
				<div class="button-container">
					<button id="cartButton" type="button" onclick="f_cart('<%=itemInfo.getItemId() %>')">장바구니</button>
<%-- 					<button id="orderButton" type="button" onclick="f_order('<%=itemInfo.getItemId() %>')">바로 주문</button> --%>
					<button id="orderButton">바로 주문</button>

				</div>
			</div>
		</div>
	</form>

	<div class="compare" style="display: flex; justify-content: center;">
		<table class="compare_tbl">
			<colgroup>
				<col width="35%">
				<col width="65%">
			</colgroup>
			<thead>
				<tr>
					<th style="text-align: center;">렌탈사</th>
					<th style="text-align: center;">월 렌탈료 비교</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="brname"><img
						src="https://rentin.co.kr/data/rentalsa/nFjk4GCqjcrGDj9SQg5fWcparsMBdy.gif">
						<p>이니렌탈</p></td>
					<td class="comp_price">
						<dl class="pick">
							<dt>60개월</dt>
							<dd>
								<b>39,000</b>원
							</dd>
						</dl>
						<dl>
							<dt>36개월</dt>
							<dd>
								<b>47,000</b>원
							</dd>
						</dl>
						<dl>
							<dt>12개월</dt>
							<dd>
								<b>60,400</b>원
							</dd>
						</dl>
					</td>
					<td></td>

				</tr>
				<tr>
					<td class="brname"><img
						src="https://rentin.co.kr/data/rentalsa/3HlKqbfRXk8aaJVWHAcAD88lj6sYbt.jpg">
						<p>LG헬로비전</p></td>
					<td class="comp_price">
						<dl class="pick">
							<dt>60개월</dt>
							<dd>
								<b>40,900</b>원
							</dd>
						</dl>
						<dl>
							<dt>36개월</dt>
							<dd>
								<b>58,900</b>원
							</dd>
						</dl>
						<dl>
							<dt>12개월</dt>
							<dd>
								<b>62,900</b>원
							</dd>
						</dl>
					</td>
					<td></td>

				</tr>
			</tbody>
		</table>
	</div>
<section class="mart80 pr">
    <a name="tab1" class="via"></a>
    <div class="vi_tab">
        <ul>
            <li onclick="handleTabClick('tab1')" class="active">상품상세정보</li>
            <li onclick="handleTabClick('tab2')">상품문의</li>
            <li onclick="handleTabClick('tab3')">리뷰 </li>
        </ul>
    </div>

    <div class="vi_cbody">
        <p>
            <img src="<%=request.getContextPath() %>/views/images/product/<%=subImg %>" alt="" style="display: block; margin: 0 auto;"><br style="clear: both;">
            <br style="clear: both;">&nbsp;
        </p>
    </div>
</section>

<section class="mart80 pr">
    <a name="tab2" class="via"></a>
    <div class="vi_tab">
        <ul>
            <li onclick="handleTabClick('tab1')">상품상세정보</li>
            <li onclick="handleTabClick('tab2')" class="active">상품문의</li>
            <li onclick="handleTabClick('tab3')">리뷰</li>
        </ul>
    </div>

    <div class="vi_cbody">
        <!-- 탭 내용 추가 -->
    <p>
 	<c:import url="http://localhost:8888/RentalService/itemInquiry/list.do">
 		<c:param name="itemId" value="${itemInfo.itemId}"></c:param>
 	</c:import>
 	
<%--  	<c:import url="http://localhost:8888/RentalService/itemInquiry/list.do" /> --%>
<%--  	<c:import url="<%=request.getContextPath()%>/itemInquiry/list.do?itemId=<%=iiv.getItemId()%>" /> --%>
    </p>
    </div>
</section>

<section class="mart80 pr">
    <a name="tab3" class="via"></a>
    <div class="vi_tab">
        <ul>
            <li onclick="handleTabClick('tab1')">상품상세정보</li>
            <li onclick="handleTabClick('tab2')">상품문의</li>
            <li onclick="handleTabClick('tab3')" class="active">리뷰</li>
        </ul>
    </div>

    <div class="vi_cbody">
        <!-- 탭 내용 추가 -->
        <p>
        <c:import url="http://localhost:8888/RentalService/review/list.do">
        <c:param name="itemId" value="${itemInfo.itemId}"></c:param>
 		</c:import>
    	</p>
    </div>
</section>


</div>


			

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

function f_cart(p_itemId) {
	//e.preventDefault();
	
	let itemId = p_itemId;
	console.log(itemId);

	$.ajax({
		type: 'post',
		url: '<%=request.getContextPath() %>/cart/insert.do',
		data: {
			itemId : itemId
			},
		success:function(res){
			 console.log("응답>>", res);
			 if(res == 1){
				 let result = confirm("상품을 장바구니에 추가하였습니다.\n장바구니로 이동하시겠습니까?");
				 
				 if (result) {
					 location.href = '<%=request.getContextPath() %>/cart/list.do';				 
				 } else {
					 history.go();
				 }
			 }
		},
		error:function(xhr){
			alert("로그인이 필요한 메뉴입니다.");
			location.href = '<%=request.getContextPath() %>/user/login.do';
			//history.go();
		}
// 	 	,dataType: '' 
	 })
}

function f_order(p_itemId) {
// 	e.preventDefault();
	
	let itemId = p_itemId;
	console.log(itemId);

	$.ajax({
		type: 'post',
		url: '<%=request.getContextPath() %>/order/order.do',
		data: {
			itemId : itemId
			},
		success:function(res){
			 console.log("응답>>", res);
		},
		error:function(xhr){
			alert("로그인이 필요한 메뉴입니다.");
			location.href = '<%=request.getContextPath() %>/user/login.do';
// 			history.go();
		}
// 	 	,dataType: '' 
	 })
}




//heart 좋아요 클릭시 하트 등장
$(function () {
  var $likeBtn = $(".icon.heart");

  $likeBtn.click(function () {
    $likeBtn.toggleClass("active");

    if ($likeBtn.hasClass("active")) {
    	let menuAdd = "add";
    	
      $(this).find("img").attr({
        src: "<%=request.getContextPath()%>/views/images/기타/redheart.png",
        alt: "찜하기 완료"
      });
      
      // 위시리스트에 추가하기
      f_wish(menuAdd);
      
    } else {
    	let menuDel = "del";
    	
      $(this).find("i").removeClass("fas").addClass("far");
      $(this).find("img").attr({
        src: "<%=request.getContextPath()%>/views/images/기타/grayheart.png",
        alt: "찜 해제하기"
      });
      
      // 위시리스트에서 제거하기
      f_wish(menuDel);
      
    }

  });
  
});


function f_wish(menu) {
	let direction = menu;
    console.log(direction);
    
    console.log("aaa>>", "<%=itemInfo.getItemId() %>");
    
    // 색 바꾼 후 찜 목록에 추가되기
  	$.ajax({
		type: 'post',
		url: '<%=request.getContextPath() %>/wish/list.do',
		data: {
			direction : direction,
			itemId : "<%=itemInfo.getItemId() %>"
			},
		success:function(res){
			 console.log("응답>>", res);
			 if(res > 0){
				 if ( direction == "add" ) {
					 if(confirm("찜 목록으로 이동할까요?")) {
						 location.href = '<%=request.getContextPath() %>/wish/list.do';
					 }
				 }
			 }
		},
		error:function(xhr){
			alert("로그인이 필요한 메뉴입니다.");
			location.href = '<%=request.getContextPath() %>/user/login.do';
		}
 	 	//,dataType: '' 
	 });
    
};
  
</script>
