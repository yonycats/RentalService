<%@page import="kr.or.ddit.vo.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
%>

	<div class="col-sm-9" style="padding: 40px 0 80px;">
		<h2>정보수정</h2>
		<!-- 기업 폼 -->


		<form name="company" id="company"
			action="<%=request.getContextPath()%>/company/updateInfo.do"
			method="post" autocomplete="off">
			<input type="hidden" name="comId" value="<%=cv.getComId()%>">
			<h3>사이트 이용정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">아이디</th>
							<td><%=cv.getComId() %></td>
						</tr>


						<tr>
							<th scope="row"><label for="com_pass">비밀번호 변경<span
									class="rq"> *</span></label></th>
							<td>
								<div id=password-box>
									<input type="password" name="comPass" id="com_pass"
										class="frm_input" size="20" maxlength="20"
										pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%\^&amp;\*\(\)_\+\|]).{8,20}" />
								</div> <span id="password_match_message_com"
								style="padding-left: 10px"></span><span id="com_pass"></span> <span
								class="frm_info">특수문자(!,@,#,$,&,*,_), 영 대/소문자, 숫자 포함 8자
									이상</span>
							</td>
						</tr>

						<tr>
							<th scope="row"><label for="com_pass_re">비밀번호 확인<span
									class="rq"> *</span>
							</label></th>
							<td><input type="password" name="com_pass_re"
								id="com_pass_re" class="frm_input" size="20" maxlength="20" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<h3 class="mart30">회사 정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="com_name">상호명<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comName" id="com_name" value="<%=cv.getComName() %>"
								class="frm_input" size="20" required /></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_ceo">대표자명<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comCeo" id="com_ceo" value="<%=cv.getComCeo() %>"
								class="frm_input" size="20" required pattern="[가-힣]{2,8}" /></td>
						</tr>

						<tr>
							<th scope="row"><label for="com_no">사업자번호<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comNo" value="<%=cv.getComNo() %>" id="com_no"
								class="frm_input" size="20" maxlength="20" /> <span id="com_no"></span>
								<span class="frm_info"></span></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_addr">사업장 주소<span
									class="rq"> *</span></label></th>
							<td><label for="com_zip" class="sound_only">우편번호</label> <input
								type="text" name="comZip" id="com_zip" required="" value="<%=cv.getComZip() %>"
								class="frm_input required" size="8" maxlength="5"
								style="background-position: right top; background-repeat: no-repeat" />

								<button type="button" class="btn_lsmall" id="addrBtnCom"
									onclick="win_zip('company', 'com_zip', 'com_addr', 'com_addr2', 'com_addr3', 'com_addr_jibeon');">
									주소검색</button> <br /> <input type="text" name="comAddr" id="com_addr" value="<%=cv.getComAddr() %>"
								required="" class="frm_input required frm_address" size="60"
								style="background-position: right top; background-repeat: no-repeat" />
								<label for="com_addr">기본주소</label><br /> <input type="text" value="<%=cv.getComName() %>"
								name="comAddrDetail" value="" id="com_addr_detail" value="<%=cv.getComAddrDetail() %>"
								class="frm_input frm_address" size="60" /> <label
								for="com_addr_detail">상세주소</label><br />
						</tr>
						<tr>
							<th scope="row"><label for="com_tel">전화번호<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comTel" value="<%=cv.getComTel() %>" id="com_tel"
								class="frm_input" size="20" maxlength="20" /> <span
								id="com_tel"></span> <span class="frm_info">'02 - 000 -
									0000' 형식으로 입력</span></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_email">E-mail<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comEmail" id="com_email" value="<%=cv.getComEmail() %>"
								required="" class="frm_input required" size="40" maxlength="100"
								style="background-position: right top; background-repeat: no-repeat" />
						</tr>


					</tbody>
				</table>
			</div>
						<h3 class="mart30">담당자 정보 입력</h3>
			<div class="tbl_frm01 tbl_wrap">
				<table>
					<colgroup>
						<col class="w140" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="com_restel">담당자명<span 
									class="rq"> *</span></label></th>
							<td><input type="text" name="comResname" id="com_restel" value="<%=cv.getComResname() %>"
								class="frm_input" size="20" required pattern="[가-힣]{2,8}" /></td>
						</tr>
						<tr>
							<th scope="row"><label for="com_resname">담당자 연락처<span
									class="rq"> *</span></label></th>
							<td><input type="text" name="comRestel" id="com_resname" value="<%=cv.getComRestel() %>"
								class="frm_input" size="20" required /></td>
						</tr>




					</tbody>
				</table>
			</div>
			<div class="btn_confirm" style="align-items: center;display: flex;justify-content: center;">
				<input type="submit" value="정보수정" id="btn_submit"  style="padding: 15px 25px;font-size: 17px; margin-right: 5px"
					class="btn_large wset" accesskey="s" /> <a href="/item/mainPage.do" 
					class="btn_large bx-white" style="padding: 15px 25px;font-size: 17px; margin-left: 10px">취소</a>
			</div>
		</form>

	</div>