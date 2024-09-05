<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<ItemVO> airList = (List<ItemVO>) session.getAttribute("airBestList");
	List<ItemVO> refList = (List<ItemVO>) session.getAttribute("refBestList");
	List<ItemVO> laundryList = (List<ItemVO>) session.getAttribute("laundryBestList");
	List<ItemVO> stylerList = (List<ItemVO>) session.getAttribute("stylerBestList");
	List<ItemVO> tvList = (List<ItemVO>) session.getAttribute("tvBestList");
%>
    
			<div class="container text-center">
					<h1 style="font-size: 30px; margin: 40px 0 10px 0">BEST 에어컨</h1>
				<div class="row" style="display: flex; justify-content: space-between;">
					
					<%
						for(ItemVO iv : airList){
					%>
					<a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%=iv.getItemId() %>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm() %>"
									class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=iv.getItemModel() %></p>
							<p class="productName"><%=iv.getItemName() %></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount">
									<%=iv.getItemM60() %><span class="rental-amount-won">원</span>
								</p>
							</div>
						</div>	
					</a>					
					<%
						}
					%>
				</div>
					<h1 style="font-size: 30px; margin: 20px 0 10px 0">BEST 냉장고</h1>
				<div class="row" style="display: flex; justify-content: space-between;">
					
					<%
						for(ItemVO iv : refList){
					%>
					<a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%=iv.getItemId() %>" style="text-decoration: none">
						<div class="product-item">
							<div style="width: 90%">
								<img src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm() %>"
									class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=iv.getItemModel() %></p>
							<p class="productName"><%=iv.getItemName() %></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount">
									<%=iv.getItemM60() %><span class="rental-amount-won">원</span>
								</p>
							</div>
						</div>	
					</a>					
					<%
						}
					%>
				</div>
					<h1 style="font-size: 30px; margin: 20px 0 10px 0">BEST 세탁가전</h1>
				<div class="row" style="display: flex; justify-content: space-between;">
					
					<%
						for(ItemVO iv : laundryList){
					%>
					<a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%=iv.getItemId() %>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm() %>"
									class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=iv.getItemModel() %></p>
							<p class="productName"><%=iv.getItemName() %></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount">
									<%=iv.getItemM60() %><span class="rental-amount-won">원</span>
								</p>
							</div>
						</div>	
					</a>					
					<%
						}
					%>
				</div>
					<h1 style="font-size: 30px; margin: 20px 0 10px 0">BEST 스타일러</h1>
				<div class="row" style="display: flex; justify-content: space-between;">
					
					<%
						for(ItemVO iv : stylerList){
					%>
					<a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%=iv.getItemId() %>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm() %>"
									class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=iv.getItemModel() %></p>
							<p class="productName"><%=iv.getItemName() %></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount">
									<%=iv.getItemM60() %><span class="rental-amount-won">원</span>
								</p>
							</div>
						</div>	
					</a>					
					<%
						}
					%>
				</div>
					<h1 style="font-size: 30px; margin: 20px 0 10px 0">BEST TV</h1>
				<div class="row" style="display: flex; justify-content: space-between;">
					
					<%
						for(ItemVO iv : tvList){
					%>
					<a href="<%=request.getContextPath() %>/item/detail.do?itemId=<%=iv.getItemId() %>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=iv.getStreFileNm() %>"
									class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=iv.getItemModel() %></p>
							<p class="productName"><%=iv.getItemName() %></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount">
									<%=iv.getItemM60() %><span class="rental-amount-won">원</span>
								</p>
							</div>
						</div>	
					</a>					
					<%
						}
					%>
				</div>
			</div>
			<br />


