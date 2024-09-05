<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<%

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");

%>



<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
.col-md-3 {
  float: rigth;
}
</style>
<main id="container" class="col-sm-12 mypage-main">

   <div class="mypage-main-top">
      <div class="mypage-main-top-title"
         style="margin-bottom: 50px; font-size: 30px;">
      </div>

<form action="<%=request.getContextPath() %>/partnership/insert.do" method="post" enctype="form-data">
	<div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-file">
                            </span>제휴문의 등록</a>
                        </h4>
                    </div>
	<div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                      <label for="Title">제목</label>
                                        <input type="text" class="form-control" placeholder="Title" name="pashTitle" value="">
                                    </div>
                                    <div class="form-group">
                                     <label for="Content">내용</label>
                                        <textarea class="form-control" placeholder="Content" rows="5" name="pashContent" value=""></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
           
                                
                            <div class="row">
                               
                                <div class="col-md-2 text-center">
                                        <form class="form form-inline" role="form" align="center" >
                                       
                                        <div class="form-group">
                                        </div>
                                        <div class="form-group" style="margin-left: 30px;">
                                            <button type="submit" class="btn btn-success btn-sm" href="<%=request.getContextPath() %>/partnership/insert.do">
                                                <span class="glyphicon glyphicon-floppy-disk"></span>저장</button>
                                            <button type="submit" class="btn btn-default btn-sm" href="<%=request.getContextPath() %>/partnership/list.do">
                                                <span class="glyphicon glyphicon-eye-open"></span>목록</button>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
	
</div>




