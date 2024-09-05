<%@page import="kr.or.ddit.vo.OrderDetailVO"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="kr.or.ddit.vo.CartVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>

.cart-table {
margin-left: auto; 
margin-right: auto; 
margin-bottom: 20px; 
text-align: center;

border: 2px solid #d7d7d7;;
border-radius: 10px 10px 10px 10px;

width: 800px;
height: 180px;
}

</style>


<%
	List<OrderDetailVO> cartList = (List<OrderDetailVO>)request.getAttribute("cartList");
%>

					
<div id="container"  class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내 장바구니
			</p>
		</div>
		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">장바구니 목록</h1>
		</div>



			
<%-- 			<form name='myform' action="<%=request.getContextPath() %>/cart/list.do" method="POST"> --%>
			<form name='myform' method="POST"  onsubmit="prodChk(event)">

			<%
				int cartSize = cartList.size();
				if (cartSize > 0) {
					int cnt = 1;
					
					for (OrderDetailVO odv : cartList) {
			%>	
			  <div id="cartListCss" style="margin-right: 200px;">
			    <table border="1" class="cart-table">
			      <tr>
  			        <td rowspan="5">			        
				      	No.<%=cnt++ %><br>
	        			<input type="checkbox" data-item-id="<%= odv.getItemId() %>" data-cart-id="<%= odv.getCartId() %>">
	        			<input type="hidden" name="itemId" value="<%= odv.getItemId() %>">
	        			<input type="hidden" name="cartId" value="<%= odv.getCartId() %>">
  			        </td>
  			        
			        <td rowspan="5" style="width: 180px; height: 180px;">
				         <a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%= odv.getItemId() %>"> 
				      		<img id="cartImage" src="<%=request.getContextPath()%>/views/images/product/<%= odv.getFileStreNm() %>" alt="상품이미지" />
				      	</a>
			        </td>
			        <td><%=odv.getItemMake() %></td>
			        <td><%=odv.getItemModel() %></td>        
					<td rowspan="5" style="width: 60px;"><a href="<%=request.getContextPath() %>/cart/delete.do?cartId=<%=odv.getCartId() %>">[삭제]</a></td>
			<%-- 	      <td rowspan="5"><input type="button" value="삭제" name="<%=cv.getCartId() %>" onClick="goToDelete()"></td> --%>
			      </tr>
			      <tr>
			        <td colspan="2"><%=odv.getItemName() %></td>
			      </tr>
			      <tr>
			      <tr>
			        <td colspan="2">최저 월 <%=odv.getItemM60() %>원</td>
			      </tr>
			        
			      </tr>
			    </table>
			  </div>

			 
			<%
					} // for문
					
				} else {
			%>	
					<tr>
						<td colspan="5">장바구니가 비어있습니다.</td>
					</tr>
			<%	
				} // if문
			%>	
				<div style="margin-right: 200px; margin-top: 25px; text-align: center;">
			  	    <input style="width: 70px; height: 30px; text-align: center;" data-select="선택주문" name="selectbutton" type="submit" value="주문">
<!-- 			  	    <input style="width: 70px; height: 30px; text-align: center;" data-select="선택주문" name="selectbutton" type="submit" value="선택주문"> -->
<!-- 			  	    <input style="width: 70px; height: 30px; text-align: center;" data-select="선택삭제" name="selectbutton" type="submit" value="선택삭제"> -->
			  	</div> 
			 </form>
	</div>
	
	<script>
	
	
	
	function prodChk(e){
		e.preventDefault();
		
		//체크한 항목 값만 얻기
		
		//체크박스 항목 얻기
		let chks = document.querySelectorAll('[type="checkbox"]');
	
		//체크 여부 확인하기
		for(let i=0; i<chks.length; i++){
			if(chks[i].checked){
				//checked 가 true인 항목만 조건문 안에서 모인다
// 				console.log(chks[i]); // 현재 선택항목에 대한 값을 얻어낸 후
				console.log(chks[i].dataset.select);
				
				
				console.log(chks[i].dataset.itemId , " | ", chks[i].dataset.cartId);
				
				let itemId = chks[i].dataset.itemId;
				let cartId = chks[i].dataset.cartId;
				location.href = "<%=request.getContextPath() %>/cart/list.do?itemId=" + itemId + "&cartId=" + cartId + "&code=chk";			
			}
		}//for end
		
	}

	</script>
