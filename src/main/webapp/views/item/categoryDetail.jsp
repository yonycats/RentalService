<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="kr.or.ddit.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
List<String> itemMakeFilter = (List<String>) request.getAttribute("itemMakeFilter");
List<String> itemAttrFilter = (List<String>) request.getAttribute("itemAttrFilter");
List<String> comNameFilter = (List<String>) request.getAttribute("comNameFilter");
String cateId = (String) session.getAttribute("cateId");
int cnt = (Integer) session.getAttribute("cnt");
List<ItemVO> categoryItemList = (List<ItemVO>) session.getAttribute("categoryItemList");
int row = (cnt + 3) / 4;
%>

<main class="container-fluid" style="width: 100%">
	<div class="row" style="display: flex;width: 100%">
		<div class="filter" style="width: 20%">
			<form id="filterForm" method="post" action="<%=request.getContextPath()%>/filterItems.do">
				<div class="filter-box-container">
					<div class="filter-header">
						<h2>Filter</h2>
						<button class="reset-btn" type="reset">초기화</button>
					</div>
					<div class="filter-category">
						<p class="filter-category-name">브랜드</p>
						<ul class="filter-list">
							<% for (String itemMake : itemMakeFilter) { %>
							<li><input style="margin: 0px 10px" type="checkbox" id="<%=itemMake%>" class="filter-checkbox" name="brand" value="<%=itemMake%>" /> 
							<label style="margin: 0px" for="<%=itemMake%>"><%=itemMake%></label></li>
							<% } %>
						</ul>
					</div>
					<div class="filter-category">
						<p class="filter-category-name">렌트사</p>
						<ul class="filter-list">
							<% for (String comName : comNameFilter) { %>
							<li><input style="margin: 0px 10px" type="checkbox" id="<%=comName%>" class="filter-checkbox" name="company" value="<%=comName%>" /> 
							<label style="margin: 0px" for="<%=comName%>"><%=comName%></label></li>
							<% } %>
						</ul>
					</div>
					<div class="filter-category">
						<p class="filter-category-name">옵션</p>
						<ul class="filter-list">
							<% for (String itemAttr : itemAttrFilter) { %>
							<li><input style="margin: 0px 10px" type="checkbox" id="<%=itemAttr%>" class="filter-checkbox" name="option" value="<%=itemAttr%>" /> 
							<label style="margin: 0px" for="<%=itemAttr%>"><%=itemAttr%></label></li>
							<% } %>
						</ul>
					</div>
					<button type="submit" style="display: none;">필터 적용</button>
				</div>
			</form>
		</div>
		<div style="width: 80%">
			<div class="category-header">
				<h1 style="font-size: 30px"><%=cateId%></h1>
			</div>
			<div class="sort-and-count">
				<div class="product-count">
					<p style="padding-left: 10px">
						총 <span style="color: red; font-size: 20px; font-weight: 400"><%=cnt%></span>개의 제품이 있습니다.
					</p>
				</div>
				<div class="sort-options">
					<button class="sort-btn" data-sort="recent">최근등록순</button>
					<button class="sort-btn" data-sort="high-price">금액 높은순</button>
					<button class="sort-btn" data-sort="low-price">금액 낮은순</button>
				</div>
			</div>
			<div id="product-list-box" style="display: flex;flex-wrap: wrap; justify-content: center;padding: 20px 0px;">
				<% for (int i = 0; i < row; i++) { %>
				<div class="product-list" style="justify-content: center;margin-left: 10px">
					<% if (i != row - 1) {
						for (int j = 0; j < 4; j++) {
							int index = 4 * i + j;
							if (index < categoryItemList.size()) { %>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=categoryItemList.get(index).getItemId()%>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=categoryItemList.get(index).getStreFileNm()%>" class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=categoryItemList.get(index).getItemModel()%></p>
							<p class="productName"><%=categoryItemList.get(index).getItemName()%></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount"><%=categoryItemList.get(index).getItemM60()%><span class="rental-amount-won">원</span></p>
							</div>
						</div>
					</a>
					<% } else { %>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=categoryItemList.get(index).getItemId()%>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="" class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"></p>
							<p class="productName"></p>
							<div class="rental">
								<p class="rental-fee"></p>
								<p class="rental-amount">
									<span class="rental-amount-won"></span>
								</p>
							</div>
						</div>
					</a>
					<% } } } else {
					int remain = categoryItemList.size() % 4 == 0 ? 4 : categoryItemList.size() % 4;
					for (int j = 0; j < remain; j++) { %>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=categoryItemList.get(4 * i + j).getItemId()%>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=categoryItemList.get(4 * i + j).getStreFileNm()%>" class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=categoryItemList.get(4 * i + j).getItemModel()%></p>
							<p class="productName"><%=categoryItemList.get(4 * i + j).getItemName()%></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount"><%=categoryItemList.get(4 * i + j).getItemM60()%><span class="rental-amount-won">원</span></p>
							</div>
						</div>
					</a>
					<% } for (int k = 0; k < 4 - remain; k++) { %>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=categoryItemList.get(4 * i + k).getItemId()%>" style="text-decoration: none">
						<div class="product-item" style="border: none">
							<div class="img-responsive"></div>
							<p class="modelName"></p>
							<p class="productName"></p>
							<div class="rental">
								<p class="rental-fee"></p>
								<p class="rental-amount">
									<span class="rental-amount-won"></span>
								</p>
							</div>
						</div>
					</a>
					<% } } %>
				</div>
				<% } %>
			</div>
		</div>
	</div>
</div>
