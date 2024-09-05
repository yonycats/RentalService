<%@page import="kr.or.ddit.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	NoticeVO nv = (NoticeVO)request.getAttribute("nv");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");

%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
	<form action="<%=request.getContextPath() %>/notice/update.do" method="post" enctype="form-data">
		<input type="hidden" name="ntcId" value="<%=nv.getNtcId() %>">
		
		
		<div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-file">
                            </span>공지사항 수정</a>
                        </h4>
                    </div>
	<div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                      <label for="Title">제목</label>
                                        <input type="text" class="form-control" placeholder="Title" name="ntcTitle" value="">
                                    </div>
                                    <div class="form-group">
                                      <label for="Writer">작성자</label>
                                        <input type="text" class="form-control" placeholder="Writer" name="ntcWriter" value="">
                                    </div>
                                    <div class="form-group">
                                     <label for="Content">내용</label>
                                        <textarea class="form-control" placeholder="Content" rows="5" name="ntcContent" value=""></textarea>
                                    </div>
                                </div>
                            </div>      
                                  <input type="submit" class="btn btn-primary" value="공지사항 수정">
                        </div>
                    </div>
	
	</form>
