<%@page import="kr.or.ddit.vo.SearchVO"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="kr.or.ddit.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<SearchVO> resultList = (List<SearchVO>) request.getAttribute("resultList");
String searchWord = (String) request.getAttribute("searchWord");
String cateId = (String) session.getAttribute("cateId");
int resultCnt = (Integer) request.getAttribute("resultCnt");
int row = (resultCnt + 3) / 4;
%>

<div class="search-contianer" style="width: 100%">
	<div class="row" style="display: flex; justify-content: center; width: 100%">
		<div class="col-sm-10">
			<div class="category-header" style="padding-top: 200px">
				<h1 style="font-size: 30px">
					"<%=searchWord%>"&nbsp;검색결과
				</h1>
			</div>
			<div class="sort-and-count">
				<div class="product-count">
					<p style="padding-left: 10px">
						총 <span style="color: red; font-size: 20px; font-weight: 400"><%=resultCnt%></span>개의 제품이 있습니다.
					</p>
				</div>
				<div class="sort-options">
					<button class="search-sort-btn" data-sort="recent">최근등록순</button>
					<button class="search-sort-btn" data-sort="high-price">금액 높은순</button>
					<button class="search-sort-btn" data-sort="low-price">금액 낮은순</button>
				</div>
			</div>
			<div id="product-list-box" style="display: flex; flex-wrap: wrap; justify-content: center; padding: 20px 0px;">
				<%
				for (int i = 0; i < row; i++) {
				%>
				<div class="product-list">
					<%
					if (i != row - 1) {
						for (int j = 0; j < 4; j++) {
							int index = 4 * i + j;
							if (index < resultList.size()) {
					%>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=resultList.get(index).getItemId()%>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=resultList.get(index).getStreFileNm()%>" class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=resultList.get(index).getItemModel()%></p>
							<p class="productName"><%=resultList.get(index).getItemName()%></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount"><%=String.format("%,d", resultList.get(index).getItemM60())%><span class="rental-amount-won">원</span></p>
							</div>
						</div>
					</a>
					<%
							}
						}
					} else {
						int remain = resultList.size() % 4 == 0 ? 4 : resultList.size() % 4;
						for (int j = 0; j < remain; j++) {
					%>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=resultList.get(4 * i + j).getItemId()%>" style="text-decoration: none">
						<div class="product-item">
							<div>
								<img src="<%=request.getContextPath()%>/views/images/product/<%=resultList.get(4 * i + j).getStreFileNm()%>" class="img-responsive" alt="Image" />
							</div>
							<p class="modelName"><%=resultList.get(4 * i + j).getItemModel()%></p>
							<p class="productName"><%=resultList.get(4 * i + j).getItemName()%></p>
							<div class="rental">
								<p class="rental-fee">월렌탈료</p>
								<p class="rental-amount"><%=String.format("%,d", resultList.get(4*i+j).getItemM60())%><span class="rental-amount-won">원</span></p>
							</div>
						</div>
					</a>
					<%
						}
						for (int k = 0; k < 4 - remain; k++) {
					%>
					<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=resultList.get(4 * i + k).getItemId()%>" style="text-decoration: none">
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
					<%
						}
					}
					%>
				</div>
				<%
				}
				%>
			</div>
			<script>
			    $(document).on('click', '.search-sort-btn', function() {
			        var sortType = $(this).data('sort');
			        var searchWord = "<%=searchWord%>";
			        var contextPath = "<%=request.getContextPath()%>";
			        
			        $.ajax({
			            url: contextPath + "/categorySortItems.do", // 서버의 URL
			            type: 'GET',
			            data: { 
			                sortType: sortType,
			                searchWord: searchWord
			            },
			            success: function(response) {
			                $('#product-list-box').empty(); // 기존 제품 목록을 비웁니다.
			                var productItem = "";
			                // 새로운 제품 목록을 동적으로 추가합니다.
			                response.forEach(function(item) {
			                    productItem += '<a class="ajaxItem" href="' + contextPath + '/item/detail.do?itemId=' + item.itemId + '" style="text-decoration: none">'
			                        + '<div class="product-item">'
			                        + '<div>'
			                        + '<img src="' + contextPath + '/views/images/product/' + item.streFileNm + '" class="img-responsive" alt="Image" />'
			                        + '</div>'
			                        + '<p class="modelName">' + item.itemModel + '</p>'
			                        + '<p class="productName">' + item.itemName + '</p>'
			                        + '<div class="rental">'
			                        + '<p class="rental-fee">월렌탈료</p>'
			                        + '<p class="rental-amount">' + item.itemM60.toLocaleString() + '<span class="rental-amount-won">원</span></p>'
			                        + '</div>'
			                        + '</div>'
			                        + '</a>';
			                });
			                $('#product-list-box').append(productItem);
			            },
			            error: function(xhr, status, error) {
			                console.error('정렬 요청 중 오류 발생:', error);
			            }
			        });
			    });
			</script>
		</div>
	</div>
</div>
