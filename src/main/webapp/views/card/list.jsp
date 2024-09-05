<%@page import="kr.or.ddit.vo.CardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<CardVO> cardList = (List<CardVO>) request.getAttribute("cardList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");

session.removeAttribute("msg"); // 한번 사용한 데이터 삭제하기...
%>


<div id="container" class="col-sm-9 mypage-main">

	<div class="mypage-main-top" style="margin-bottom: 150px;">

		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 내 결제 수단
			</p>
		</div>

		<div class="mypage-main-top-title" style="margin-bottom: 50px;">
			<h1 style="font-size: 30px;">결제 수단</h1>
		</div>

		<div class="card" style="width: 18rem;">

			<div class="card-body" style="margin-left: 30px; margin-bottom: 30px;">
				<a href="<%=request.getContextPath()%>/card/insert.do"
					class="card-link" style="font-size: 20px;">[카드등록]</a>
			</div>

		</div>




	<div style="display: flex;">

		<%
			int cardSize = cardList.size();
		if (cardSize > 0) {
			for (CardVO cv : cardList) {
		%>

		<div class="card" style="width: 18rem; margin-left: 30px; height: 110px; border-radius: 15px; background-color: #ebebeb;">
			<div class="card-body" style="margin-left: 20px;">
				<h5 class="card-title"><%=cv.getCardCom()%></h5>
				<h6 class="card-subtitle mb-2 text-body-secondary"><%=cv.getCardNo()%></h6>
				<p class="card-text"><%=cv.getCardDate()%></p>
				<a
					href="<%=request.getContextPath()%>/card/delete.do?cardId=<%=cv.getCardId()%>">[카드삭제]</a>
			</div>
		</div>

		<%
			} // for문
		}
		%>
		
		
	</div>
		
		
		
		
		
	</div>
</div>