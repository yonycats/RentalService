<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@page import="kr.or.ddit.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<CategoryVO> cvList = (List<CategoryVO>) session.getAttribute("categoryList");
CompanyVO companyVo = (CompanyVO) session.getAttribute("userInfo");
%>

<div class="col-sm-9"
	style="flex-direction: column; justify-content: center; align-items: center; margin-top: 30px;">
	<div class="mypage-main-top" style="margin-bottom: 60px">
		<div class="mypage-main-top-nav">
			<p>
				HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 상품
				등록
			</p>
		</div>
		<div class="mypage-main-top-title">
			<h1>상품 등록</h1>
		</div>
	</div>

		<form class="container" action="<%=request.getContextPath()%>/company/insertItem.do" method="post" enctype="multipart/form-data">
				<input type="hidden" id="comId" name="comId" value="<%=companyVo.getComId()%>"> 
		<input type="hidden" id="comName" name="comName" value="<%=companyVo.getComName()%>">
			<div class="form-container" style="display: flex; border: none;justify-content: center;">
				<div class="col-sm-5" style="padding-left: 50px;display: flex;flex-direction: column;justify-content: space-between;">
					<div class="image-preview" id="imagePreview"
						style="width: 90%; height: 400px; border: 1px solid #ddd; display: flex; align-items: center; justify-content: center; background-color: #f8f8f8;">
						<span>이미지 미리보기</span>
					</div>
					<div>
						<input type="file" width="60%" class="form-control-file" id="itemImage" name="atchFile" style="margin-top: 15px" multiple="multiple"/>
					</div>
					<div style="margin-top: 15px">
						<select id="category-select" name="cateId" style="width: 57%;height: 25px">
						<%
						for (CategoryVO cv : cvList) {
						%>
						<option value="<%=cv.getCateId()%>"><%=cv.getCateId()%></option>
						<%
						}
						%>
				</select>
					</div>
				</div>
			<div style="width: 50%">
				<table id="company-insertItem" class="col-sm-6" style="border-left: 1px solid #e2e2e2; height: 100%; width: 50%; margin-left: 50px">
					<tbody style="border-right: 1px solid #e2e2e2">
						<tr>
							<th style="border-top: 1px solid #e2e2e2; width: 20%; text-align: center;">상품명</th>
							<td style="border-top: 1px solid #e2e2e2; width: 60% "><input name="itemName" type="text" class="frm_input"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;" >모델명</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemModel"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">제조사</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemMake"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">옵션</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemAttr"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">12개월 가격</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemM12" ></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">36개월 가격</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemM36"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">60개월 가격</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemM60"></td>
						</tr>
						<tr>
							<th style="width: 20%; text-align: center;">A/S 기간</th>
							<td style="width: 60%"><input type="text" class="frm_input" name="itemAs"></td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
			<button type="submit" class="btn btn-primary" style="position: absolute;right: 230px;bottom: -50px;width: 100px">등록</button>
		</form>

	<script>
		document
				.getElementById("itemImage")
				.addEventListener(
						"change",
						function() {
							const file = this.files[0];
							if (file) {
								const reader = new FileReader();
								reader.onload = function(e) {
									const preview = document
											.getElementById("imagePreview");
									preview.innerHTML = '<img style="max-width: 100%; max-height: 100%" src="' + e.target.result + '" alt="Image Preview">';
								};
								reader.readAsDataURL(file);
							}
						});
	</script>

</div>



