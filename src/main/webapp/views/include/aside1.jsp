<%@page import="user.service.IUserService"%>
<%@page import="user.service.UserServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.or.ddit.vo.UserVO"%>
<%
	UserVO uv2;
	if(session.getAttribute("userInfo")!=null){
		uv2 = (UserVO)session.getAttribute("userInfo");
	}else{
		IUserService userService = UserServiceImpl.getInstance();
		String userId = "user_01";
		uv2= userService.getUser(userId);
		session.setAttribute("userInfo", uv2);
	}
%>

      <main style="min-height: 800px">
         <div class="container-fluid" style="display: flex;justify-content: center; border: none;">
            <div class="row" style="width: 80%">
               <div class="col-sm-3 mypage-aside" style="height: 100%; margin-top: 50px;">
                  <aside>
                     <div class="aside-hd">
                        <p class="eng">MY PAGE</p>
                        <p class="kor">마이페이지</p>
                     </div>
                     <div class="aside-name"><%=uv2.getUserName() %></div>
                     <dlv class="aside-cs">
                        <dt>
                           <a href="<%=request.getContextPath() %>/user/checkInfo.do"> 정보 조회 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/wish/list.do"> 찜한 목록 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/cart/list.do"> 장바구니 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/rental/list.do"> 렌탈 내역 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/card/list.do"> 결제 수단 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/coupon/list.do"> 쿠폰함 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/useInquiry/list.do"> 내 문의 </a>
                        </dt>
                        <dt>
                           <a href="<%=request.getContextPath() %>/review/mylist.do"> 내 리뷰 </a>
                        </dt>
                     </dlv>
                  </aside>
               </div>