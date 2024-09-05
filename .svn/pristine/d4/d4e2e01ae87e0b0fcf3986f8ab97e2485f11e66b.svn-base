<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
div.left {
	wudth: 30%;
	float: left;
	box-sizing: border-bax;
}

div.right {
	wudth: 70%;
	float: right;
	box-sizing: border-bax;
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
			<h1 style="font-size: 30px;">장바구니 목록</h1>
		</div>



		<div class="container"></div>
		<div class="container-fluid">
			<div class="col-sm-6"></div>
			<div class="col-sm-6"></div>
		</div>


		<form action="<%=request.getContextPath()%>/card/insert.do"
			method="post">
			<div class="left">
				<div class="form-check">
					<input class="form-check-input" type="radio" name="cardCom"
						id="flexRadioDefault1" value="롯데카드"> <label
						class="form-check-label" for="flexRadioDefault1"> 롯데카드 </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="cardCom"
						id="flexRadioDefault1" value="하나카드"> <label
						class="form-check-label" for="flexRadioDefault1"> 하나카드 </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="cardCom"
						id="flexRadioDefault1" value="KB국민카드"> <label
						class="form-check-label" for="flexRadioDefault1"> KB국민카드 </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="cardCom"
						id="flexRadioDefault1" value="삼성카드"> <label
						class="form-check-label" for="flexRadioDefault1"> 삼성카드 </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="cardCom"
						id="flexRadioDefault1" value="신한카드"> <label
						class="form-check-label" for="flexRadioDefault1"> 신한카드 </label>
				</div>
			</div>

			<div class="right">
				<table>
					<tr>
						<td>카드번호</td>
						<td><input type="text" name="cardNo" value=""></td>
					</tr>
					<tr>
						<td>유효기간</td>
						<td><input type="text" name="cardDate" value=""></td>
					</tr>
				</table>
				<input type="submit" value="카드 등록">
			</div>
		</form>
	</div>
</div>






