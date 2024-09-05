<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<ItemVO> ivList = (List<ItemVO>) session.getAttribute("ivList");

int itemsPerPage = 5; // 페이지당 항목 수
int rentalListSize = ivList.size();
int totalPages = (int) Math.ceil((double) rentalListSize / itemsPerPage); // 전체 페이지 수 계산

// 현재 페이지 번호 가져오기, 기본값은 1
int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

// 시작 인덱스와 끝 인덱스 계산
int startIndex = (currentPage - 1) * itemsPerPage;
int endIndex = Math.min(startIndex + itemsPerPage, rentalListSize);
%>


<div class="col-sm-9"
	style="flex-direction: column; justify-content: center; align-items: center; margin-top: 30px;">
	<div class="mypage-main-top" style="margin-bottom: 60px">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 상품
				관리
			</p>
		</div>
		<div class="mypage-main-top-title">
			<h1>상품 관리</h1>
		</div>
	</div>
	<div class="itemList-box"
		style="display: flex; flex-direction: column;">
		<%
		if (rentalListSize > 0) {
			List<ItemVO> currentPageList = ivList.subList(startIndex, endIndex);
			for (ItemVO rdv : currentPageList) {
				String strItemM60 = String.format("%,d", rdv.getItemM60());
				String strItemM36 = String.format("%,d", rdv.getItemM36());
				String strItemM12 = String.format("%,d", rdv.getItemM12());
		%>
		<div class="itemList" style="margin-bottom: 60px">
			<div
				style="width: 25%; height: 100%; display: flex; justify-content: center; ">
				<img style="height: 230px; width: 210px;"
					src="<%=request.getContextPath()%>/views/images/product/<%=rdv.getStreFileNm()%>"
					alt="asdf" />
			</div>
			<div style="width: 75%">
				<table id="mypage-main-info" style="border: none; height: 100%">
					<colgroup>
						<col class="row" />
						<col class="value" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">상품명</th>
							<td><%=rdv.getItemName()%></td>
							<th scope="row">모델명</th>
							<td><%=rdv.getItemModel()%></td>
						</tr>
						<tr>
							<th scope="row">12개월 가격</th>
							<td><%=strItemM12%><span>원</span></td>
							<th scope="row">옵션</th>
							<td><%=rdv.getItemAttr()%></td>
						</tr>
						<tr>
							<th scope="row">36개월 가격</th>
							<td><%=strItemM36%><span>원</span></td>
							<th scope="row">동록일</th>
							<td><%=rdv.getItemDate()%></td>
						</tr>
						<tr>
							<th scope="row">60개월 가격</th>
							<td><%=strItemM60%><span>원</span></td>
							<th scope="row"></th>
							<td style="display:flex; justify-content: center; width: auto;">
							<a href="<%=request.getContextPath()%>/item/detail.do?itemId=<%=rdv.getItemId()%>" style="margin-right: 10px">
									<button
										style="background-color: white; border: 1px solid black;  border-radius: 10px; font-size: 12px; margin-right:3px;
										width: 80px;height: 40px">상품
										바로가기</button>
							</a>
							<a href="<%=request.getContextPath()%>/company/updateItem.do?itemId=<%=rdv.getItemId()%>">
									<button
										style="background-color: white; border: 1px solid black;  border-radius: 10px; font-size: 12px; margin-right:5px;
										width: 80px;height: 40px">상품
										수정</button>
							</a> <a>
									<button
										style="background-color: white; border: 1px solid black;  border-radius: 10px; font-size: 12px; margin-left:5px;color:black;
										width: 80px;height: 40px" type="button" class="btn btn-deleteAsk btn-danger" data-toggle="modal" data-target="#deleteConfirmationModal">상품
										삭제</button>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
					<div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="deleteConfirmationModalLabel">삭제 확인</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <p>정말 삭제하시겠습니까? 삭제하면 복구되지 않아요.</p>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
	                <a href="<%=request.getContextPath()%>/company/deleteItem.do?itemId=<%=rdv.getItemId()%>" class="btn btn-danger">네</a>
	            </div>
	        </div>
	    </div>
	</div>
		
		<%
		} // for문 끝
		} else {
		%>
		<div class="none-itemList" style="width: 100%;">
			<div>현재 렌탈 중인 상품이 없습니다.</div>
			<%
			} // if문 끝
			%>

		</div>
		<div id="page"
			style="display: flex; justify-content: center; margin-bottom: 30px">
			<ul class="pager">
				<li class="prev"><a href="javascript:;">Prev</a></li>
			</ul>
			<ul class="pagination pager">
				<%
				if (ivList != null) {
					int sPage = (int) request.getAttribute("sPage");
					int ePage = (int) request.getAttribute("ePage");
					int cPage = (int) request.getAttribute("cPage");

					for (int i = sPage; i <= ePage; i++) {
						//현재 페이지만 활성화
						if (cPage == i) {
				%>
				<li class="active"><a href="javascript:;"><%=i%></a></li>
				<%
				} else {
				%>
				<li><a href="javascript:;"><%=i%></a></li>
				<%
				} //if-else end
				} //for end
				}
				%>
			</ul>
			<ul class="pager">
				<li class="next"><a href="javascript:;">Next</a></li>
			</ul>

		</div>
		<div style="position: absolute; right: 15px; top: 80px">
			<a href="<%=request.getContextPath()%>/company/insertItem.do">
				<button
					style="background-color: white; border: 1px solid black; padding: 10px 20px; border-radius: 15px; font-size: 16px;">상품
					등록</button>
			</a>
		</div>
		


		<script>
	//페이지 번호 클릭 이벤트
	
	$(document).ready(function () {
	// 삭제 버튼 클릭 시 모달 창 표시
	$("btn-deleteAsk").click(function () {
		$("#deleteConfirmationModal").modal("show");
		});
	});
	
	$('.pagination li').on('click',function(){
// 		alert( $(this).text() );
		location.href = "<%=request.getContextPath()%>/company/itemList.do?page=" + $(this).text(); 
	});
	
	
	let current;
	
	//next버튼 클릭 이벤트
	$('.next').on('click',function(){
		

		//한 페이지씩 이동
		if(<%=request.getAttribute("cPage")%> == <%=request.getAttribute("ttPage")%>){
			current = <%=request.getAttribute("cPage")%>;
		}else{
			current = <%=request.getAttribute("cPage")%> + 1;
		}
		location.href = "<%=request.getContextPath()%>/company/itemList.do?page=" + current; 
	});
	
	//prev버튼 클릭 이벤트
	$('.prev').on('click',function(){
		
	
		//한 페이지씩 이동
		if(<%=request.getAttribute("cPage")%> == 1){
			current = <%=request.getAttribute("cPage")%>;
		}else{
			current = <%=request.getAttribute("cPage")%> - 1;
		}
		location.href = "<%=request.getContextPath()%>/company/itemList.do?page="
										+ current;

							});
		</script>
	</div>
</div>
