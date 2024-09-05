<%@page import="kr.or.ddit.vo.UserVO"%>
<%@page import="kr.or.ddit.vo.ItemVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.vo.CategoryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
List<CategoryVO> categoryList = (List<CategoryVO>) session.getAttribute("categoryList");

String logintype = (String)session.getAttribute("type");
%>

<html lang="en">
<head>
<title>대덕렌탈</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
   rel="stylesheet">


<script src="<%=request.getContextPath() %>/views/js/function.js"></script>
   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a8ce592a25.js"
   crossorigin="anonymous"></script>

<link rel="stylesheet"
   href="<%=request.getContextPath()%>/views/css/signUp.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/views/css/myPage.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/views/css/cartList.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/views/css/main.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/views/css/order.css" />
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/views/css/categoryDetail.css">
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/views/css/findId.css">
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/views/css/findPass.css">

</head>
<body>
   <div id="wrap">
      <header>
         <nav class="navbar navbar-inverse" style="background-color: white;border-right: 0;border-left:0">
            <div class="container"
               style="margin-top: 5px; margin-bottom: 5px;display: flex;">
               <div class="navbar-header" style="width: 15%;height: 80px">
                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target="#myNavbar">
                     <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                  </button>
				
                  <a id="logo2" class="navbar-brand"
                     href="<%=request.getContextPath()%>/item/mainPage.do"> <img
                     alt="Logo"
                     src="<%=request.getContextPath()%>/views/images/기타/DDLOGO.png">
                  </a>

               </div>
               <div style="width: 85%; padding-bottom: 15px;border-bottom: 1px solid black;">
               <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav navbar-right">
                  
                     <%
                        if(logintype==null){
                     %>
                     <li><a href="<%=request.getContextPath()%>/user/signUp.do"
                        style="color: black"><span></span> 회원가입</a></li>
                     <li class="separator">|</li>
                     <li><a href="<%=request.getContextPath()%>/user/login.do"
                        style="color: black"><span></span> 로그인</a></li>
                     <%   
                     }
                        else{
                     %>
                     <li><a href="<%=request.getContextPath()%>/user/checkInfo.do"
                        style="color: black"><span></span> 마이페이지</a></li>
                     <li class="separator">|</li>
                     <li><a href="<%=request.getContextPath()%>/user/logout.do"
                        style="color: black"><span></span> 로그아웃</a></li>
                     <%   
                     }
                     %>
                        
                  </ul>
               </div>
               <div class="search-box-container">
                  <form class="search-box" action="<%=request.getContextPath() %>/item/search.do" method="post" style="height: 40px">
                     <input class="search-txt" type="text" name="searchWord" placeholder="상품 검색" style="background-color: white"/>
                     <button class="search-btn" type="submit">
                        <i class="fa-solid fa-magnifying-glass"></i>
                     </button>
                  </form>
               </div>
               </div>
            </div>
            <div class="container">
               <ul id="header-category">
                  <%
                   for (CategoryVO cv : categoryList) {
                  %>
                  <li><a
                     href="<%=request.getContextPath()%>/item/categoryDetail.do?cateId=<%=cv.getCateId()%>">
                        <%=cv.getCateId()%></a></li>
                  <%
                   }
                  %>
                  <!--               <li><a href="#">냉장고</a></li> -->
                  <!--               <li><a href="#">에어컨</a></li> -->
                  <!--               <li><a href="#">TV</a></li> -->
                  <!--               <li><a href="#">세탁가전</a></li> -->
<!--                   <!—               <li><a href="#">스타일러</a></li> —> -->
               </ul>
            </div>
         </nav>
      </header>