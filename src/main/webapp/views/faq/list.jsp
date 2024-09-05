<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

.template_faq {
    background: #edf3fe none repeat scroll 0 0;
}
.panel-group {
    background: #fff none repeat scroll 0 0;
    border-radius: 3px;
    box-shadow: 0 5px 30px 0 rgba(0, 0, 0, 0.04);
    margin-bottom: 0;
    padding: 30px;
}
#accordion .panel {
    border: medium none;
    border-radius: 0;
    box-shadow: none;
    margin: 0 0 15px 10px;
}
#accordion .panel-heading {
    border-radius: 30px;
    padding: 0;
}
#accordion .panel-title a {
    background: #ffb900 none repeat scroll 0 0;
    border: 1px solid transparent;
    border-radius: 30px;
    color: #fff;
    display: block;
    font-size: 18px;
    font-weight: 600;
    padding: 12px 20px 12px 50px;
    position: relative;
    transition: all 0.3s ease 0s;
}
#accordion .panel-title a.collapsed {
    background: #fff none repeat scroll 0 0;
    border: 1px solid #ddd;
    color: #333;
}
#accordion .panel-title a::after, #accordion .panel-title a.collapsed::after {
    background: #ffb900 none repeat scroll 0 0;
    border: 1px solid transparent;
    border-radius: 50%;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.58);
    color: #fff;
    content: "";
    font-family: fontawesome;
    font-size: 20px;
    height: 55px;
    left: -20px;
    line-height: 55px;
    position: absolute;
    text-align: center;
    top: -5px;
    transition: all 0.3s ease 0s;
    width: 55px;
}
#accordion .panel-title a.collapsed::after {
    background: #fff none repeat scroll 0 0;
    border: 1px solid #ddd;
    box-shadow: none;
    color: #333;
    content: "";
}
#accordion .panel-body {
    background: transparent none repeat scroll 0 0;
    border-top: medium none;
    padding: 20px 25px 10px 9px;
    position: relative;
}
#accordion .panel-body p {
    border-left: 1px dashed #8c8c8c;
    padding-left: 25px;
   	font-size: 16px;
}
</style>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

       <meta charset="utf-8" />
       <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
       <title>Material Bootstrap Wizard by Creative Tim</title>
       <!--     Fonts and icons     -->
       <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    

<div class="mypage-main-top" style="margin-top: 220px;">
      <div class="mypage-main-top-title"
         style="margin-bottom: 50px; font-size: 30px;">
        <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="section-title text-center wow zoomIn">
                  <h1>자주묻는 질문</h1>
                  <span></span>
                  <p>FAQ.</p>
               </div>
            </div>
         </div>
         <div class="row">            
            <div class="col-md-12">
               <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                  <div class="panel panel-default">
                     <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                           <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Q.렌탈 제품은 어떻게 받아볼 수 있나요?
                           </a>
                        </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                          <strong><p>1.고객님이 원하시는 장소와 시간에 영업사원이 직접 방문 드립니다.</strong><br><br>
                            (제품 수령 장소가 서울&경기도 외 지역일 경우 꼭 말씀 부탁드립니다.)<br><br>
                            <strong>2.원하시는 경우 퀵 발송 진행됩니다.</strong><br><br>
                            (첫 거래시 진행 불가)<br><br>
                            <strong>3.택배 발송은 진행하지 않습니다.</strong><br><br>
                            (파손 및 분실 위험)
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                           <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Q.렌탈 제품이 오늘 당장 필요합니다. 
                           </a>
                        </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                           <p>재고 유무에 따라 달라질 수 있으니 빠른 확인을 위해 전화 문의 부탁드립니다. (02-6290-1313) </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                           <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Q. 결제 방식은 어떻게 되나요?
                           </a>
                        </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                           <p>결제 방식은 두가지로 진행 가능합니다.<br><br> 
                            <strong>1. 계좌 입금 (안내 받으신 계좌를 통한 입금)</strong><br><br> 
                            <strong>2. 카드 결제 (사이트내 결제창을 이용한 결제)</strong><br> </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                           <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            Q. 렌탈 기간을 연장하고 싶습니다. 어떻게 해야 되나요?
                           </a>
                        </h4>
                     </div>
                     <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                           <p><strong>렌탈 기간 종료 2~3일전 회수 관련하여 먼저 연락을 드립니다.</strong><br><br> 
                            렌탈 도중 추가 연장 원하실 경우 연장기간 말씀해 주시면 추가 금액 안내 드립니다.<br><br>
                        (단, 다른 예약으로 인하여 연장이 불가능할 수 도 있습니다.)<br></p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading" role="tab" id="headingFive">
                        <h4 class="panel-title">
                           <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            Q. 렌탈 장비에 문제가 있습니다. 해결해 주세요.
                           </a>
                        </h4>
                     </div>
                     <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                        <div class="panel-body">
                           <p><strong>문제의 증상을 말씀해 주시면 해당 영업사원이 최대한 빠른 조치를 취해 드립니다.</strong><br><br> 
                            빠른 조치를 위해 문제 발생시 바로 연락 바랍니다. (02-6290-1313)<br> </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingSix">
                       <h4 class="panel-title">
                          <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                            Q. 렌탈 진행중 중도해지를 원합니다. 환불가능 한가요?
                          </a>
                       </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                       <div class="panel-body">
                          <p> <strong>중도해지 부분은 계약서 조항에 내용이 포함되어 있습니다.</strong><br><br> 
                            계약서 제6조 중 (계약 위반) “제3조”에 기록한 계약일이 종료되기 전에 “갑”이 계약 해지를 요청할 경우 “을”은 지불된 임대료를 반납하지 않는다. <br><br>
                            따라서 환불 진행은 어렵습니다.  <br><br>
                            단, 렌탈 진행 후 7일 이내에 환불접수를 신청하시면 중도해지가 가능합니다.  <br><br> </p>
                       </div>
                    </div>
                 </div>
                 <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingSeven">
                     <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                          Q. A/S 기간이 궁금합니다.
                        </a>
                     </h4>
                  </div>
                  <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                     <div class="panel-body">
                        <p> <strong>약정 기간, 상품 구분에 따라 A/S기간이 상이합니다.</strong><br><br> 
                          정확한 A/S기간은 해당 렌탈사에 문의하세요.<br><br></p>
                     </div>
                  </div>
               </div>
               </div>
            </div><!--- END COL -->      
         </div><!--- END ROW -->         
      </div>
      </div>
      <br><br>
      <script>

        /*
Author       : Theme_ocean.
Template Name: Fury - Product Landing Page
Version      : 1.0
*/
(function($) {
	'use strict';
	
	(document).on('ready', function(){
	
			$('a.page-scroll').on('click', function(e){
				var anchor = $(this);
				$('html, body').stop().animate({
					scrollTop: $(anchor.attr('href')).offset().top - 50
				}, 1500);
				e.preventDefault();
			});		

	}); 	

				
})


  


      </script>

