<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">관리자 페이지</div>
                            
                            
                           
                                         
                            <a class="nav-link" href="<%=request.getContextPath()%>/admin/mainPage.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	메인화면
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <hr>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	카테고리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<%=request.getContextPath() %>/category/list.do">리스트</a>
                          
                                </nav>
                            </div>
                           <hr>
                           
                           
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	게시판 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/notice/list.do">공지사항</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/faq/list.do">자주묻는 질문</a>
                                </nav>
                            </div>
                           <hr>
                           
                           
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	회원관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/admin/userList.do">개인회원</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/admin/companyList.do">사업자회원</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/admin/blackList.do">블랙리스트</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/partnership/list.do">제휴문의</a>
<!--                                     <a class="nav-link" href="">신규회원</a> -->
<%--                                     <a class="nav-link" href="<%=request.getContextPath()%>/coupon/list.do">쿠폰관리</a> --%>
                                </nav>
                            </div>
<!--                            <hr> -->
                           
                           
<!--                             <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapseLayouts"> -->
<!--                                 <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div> -->
<!--                                 	매출관리 -->
<!--                                 <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div> -->
<!--                             </a> -->
<!--                             <div class="collapse" id="collapse4" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
<!--                                     <a class="nav-link" href="">일별</a> -->
<!--                                     <a class="nav-link" href="">주별</a> -->
<!--                                     <a class="nav-link" href="">월별</a> -->
<!--                                 </nav> -->
<!--                             </div> -->
                          
                            
<!--                            <hr> -->
                           
                           
                           
                        </div>
                    </div>
                    
                    
                    <div class="sb-sidenav-footer">
                        <div class="small">제작자들:</div>
                        	민은예연다
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4"></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Menu > </li>
                        </ol>
                        