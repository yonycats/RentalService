<%@page import="kr.or.ddit.vo.WishVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>



<%
	List<WishVO> wishList = (List<WishVO>) request.getAttribute("wishList");
%>



<div id="container"  class="col-sm-9 mypage-main">

   <div class="mypage-main-top" style="margin-bottom: 150px;">
      <div class="mypage-main-top-nav">
         <p>
            HOME <span>&emsp;>&emsp;</span> 마이페이지 <span>&emsp;>&emsp;</span> 찜한 목록
         </p>
      </div>
      <div class="mypage-main-top-title" style="margin-bottom: 50px;">
         <h1 style="font-size: 30px;">내 찜 목록</h1>
      </div>







<link rel="stylesheet" href="https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/common.css" >
<link rel="stylesheet" href="https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/ac_panel.css" >


    
<style id=DOCUMENT_HEAD_STYLE_ID type="text/css">
  ._17oierHrKR{position:relative}.market ._17oierHrKR{padding-bottom:81px}.total_home ._17oierHrKR{padding-bottom:0}._14Ezl7R3c-{position:relative;z-index:30;background:#00ab33 url(data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABXAAD/4QMfaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzExMSA3OS4xNTgzMjUsIDIwMTUvMDkvMTAtMDE6MTA6MjAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkVFNjMyQzE4MUJBRTExRTg5MTBBRjFGOTUxNjA3MENBIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkVFNjMyQzE3MUJBRTExRTg5MTBBRjFGOTUxNjA3MENBIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJCMDFGRjQ3QjM3MDA0MkNGMUY5NEY2REM5NDE2MjgwQiIgc3RSZWY6ZG9jdW1lbnRJRD0iQjAxRkY0N0IzNzAwNDJDRjFGOTRGNkRDOTQxNjI4MEIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAAKCgoKCgoLDAwLDxAOEA8WFBMTFBYiGBoYGhgiMyAlICAlIDMtNywpLDctUUA4OEBRXk9KT15xZWVxj4iPu7v7AQoKCgoKCgsMDAsPEA4QDxYUExMUFiIYGhgaGCIzICUgICUgMy03LCksNy1RQDg4QFFeT0pPXnFlZXGPiI+7u/v/wgARCABmC7gDASIAAhEBAxEB/8QAFwABAQEBAAAAAAAAAAAAAAAAAAECA//aAAgBAQAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAUCgUCgCgoKFAKFAooVSqFKUUAVFQIhIiJISSZnIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAUBQKAoCgKFBQChQUKKpVCqKKACiCEJCRIkSSZ5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgABQFAoFAKCgUUAoKFBRSqUUpQoAFQQhIiJESSTPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoAKAoFAoBQUFBQFBQUKKVVClKFAFCCEJCRIiSSZ5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAoFAoFAKBQoKAoKFChVKUUoooAoQIhISJESMzPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoAUAoFAoBQKFBQFBQoKUpSilKFAFCBEIiRIiSSZ5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAAoFAoKAKBQKUAoKCgpVKUUpQoAoIIhESJCSSTPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKlAAUCgUCgFBQKFAoFBQoqlUKUoUAqKQRCIkSIkkmeQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgAoBQKBQCgUKCgFChQUUqqFKUKABUCISIiREjMzyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUACgKCgKAoCgooBQUKClKUopSigAspCEJCRIiSSZ5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoABQFAoFAKBQoUAoKBSilKoUpRQAoQIhISJESRnPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFSgAUCgoCgFBQKFAUFCgpSlUKUoKACoEQiJEiJJJnkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAFAUCgoAoFBQoCgoUCqUqhVFBQCiAhEhIkRJJM/wD/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIHBf/aAAgBAhAAAADwgAAAAAAAAAAAAAAAAKpSqqlqqtWrVq1atq1dautXWrdat1bbaVatW287AAAAAAAAAAAAAAAAAqlFVVVaq1Vq2rVq2rV1q61daurq3VttpVq1bbzsAAAAAAAAAAAAAAAAClKVVVVqrVWratWratXWrrV1q3WrdW22lWqttvOwAAAAAAAAAAAAAAAAFUpVVVWqtVatW1atq1daurrWrdat1bbaVaq2287AAAAAAAAAAAAAAAAApSlVVVaq1aq1bVq2rV1q61dat1q3VttpVqrbbzsAAAAAAAAAAAAAAAAClUVVVVqrVqratWratXWrrV1q3WrdW22lWqttvOwAAAAAAAAAAAAAAAAKpRVVVqqtWrVq1atq2tautXWrq6t1bbaVaq22/wD/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQIH/9oACAEDEAAAAOcgAAAAAAAAAAAAAAAACilUUqqVVVVVVVatt1bdW3VturbdautautXV3vm4AAAAAAAAAAAAAAAAAUpSlKqlVVLVVVWrbdW3Vt1bbpq27utautXV3rnAAAAAAAAAAAAAAAAAAUpSiqqlVVVVVVVbbdW3Vt1bbq227utautXV3vm4AAAAAAAAAAAAAAAAAKpSlKqlVVVVVVVbbdW3Vt1bbpq3V1rWrrV1d75uAAAAAAAAAAAAAAAAAFKUpSqpVVVVVVVW23Vt1bdW26atu7rV1rV1d65wAAAAAAAAAAAAAAAAAFKUpSqpVVVVVVVW23Vt1bdW26ttu7rWrrV1d65wAAAAAAAAAAAAAAAAAFKUpSqpVVVVVVVq23VurbdW3Vttu7rWrrV1d7//xAAUEAEAAAAAAAAAAAAAAAAAAADA/9oACAEBAAE/ABhf/8QAGBEBAQADAAAAAAAAAAAAAAAAAXAQQID/2gAIAQIBAT8AjxPCeE8OeCfGTZ//xAAZEQEAAwEBAAAAAAAAAAAAAAABECBwMAD/2gAIAQMBAT8Ay4ocDMCCDxczAg5GYEElzMCCS5mBByM0PFyP/9k=) no-repeat 100% 0;min-width:990px}._14Ezl7R3c-:after{display:block;clear:both;content:""}@charset "UTF-8";
._gnb_gnb_2C24o {
font-family: "나눔고딕", NanumGothic, "맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo", sans-serif;
font-size: 12px;
line-height: normal;
-webkit-font-smoothing: subpixel-antialiased;
}
._gnb_gnb_2C24o p,
._gnb_gnb_2C24o h1,
._gnb_gnb_2C24o h2,
._gnb_gnb_2C24o h3,
._gnb_gnb_2C24o h4,
._gnb_gnb_2C24o h5,
._gnb_gnb_2C24o h6,
._gnb_gnb_2C24o ul,
._gnb_gnb_2C24o ol,
._gnb_gnb_2C24o li,
._gnb_gnb_2C24o dl,
._gnb_gnb_2C24o dt,
._gnb_gnb_2C24o dd,
._gnb_gnb_2C24o table,
._gnb_gnb_2C24o th,
._gnb_gnb_2C24o td,
._gnb_gnb_2C24o form,
._gnb_gnb_2C24o fieldset,
._gnb_gnb_2C24o legend,
._gnb_gnb_2C24o input,
._gnb_gnb_2C24o textarea,
._gnb_gnb_2C24o button,
._gnb_gnb_2C24o select {
margin: 0;
padding: 0;
}
._gnb_gnb_2C24o input,
._gnb_gnb_2C24o textarea,
._gnb_gnb_2C24o select,
._gnb_gnb_2C24o button,
._gnb_gnb_2C24o table {
font-family: "나눔고딕", NanumGothic, "맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo", sans-serif;
font-size: 12px;
-webkit-font-smoothing: subpixel-antialiased;
}
._gnb_gnb_2C24o img,
._gnb_gnb_2C24o fieldset {
border: 0;
}
._gnb_gnb_2C24o ul,
._gnb_gnb_2C24o ol {
list-style: none;
}
._gnb_gnb_2C24o em,
._gnb_gnb_2C24o address {
font-style: normal;
}
._gnb_gnb_2C24o fieldset {
margin: 0;
padding: 0;
border: 0;
}
._gnb_gnb_2C24o a {
color: inherit;
text-decoration: none;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1);
}
._gnb_gnb_2C24o table {
border-collapse: collapse;
}
._gnb_gnb_2C24o legend,
._gnb_gnb_2C24o .blind {
overflow: hidden;
position: absolute;
clip: rect(0 0 0 0);
width: 1px;
height: 1px;
margin: -1px;
}
._gnb_gnb_2C24o svg {
display: inline-block;
vertical-align: top;
}
._gnb_gnb_2C24o button {
border: none;
background-color: transparent;
cursor: pointer;
-webkit-appearance: none;
}

._gnb_gnb_2C24o ._gnb_skip_navigation_3S3aO {
position: relative;
z-index: 3000;
}
._gnb_gnb_2C24o ._gnb_skip_navigation_3S3aO ._gnb_link_3K4IH {
position: absolute;
top: -30px;
left: 0;
width: 138px;
border: 1px solid #4ec53d;
background: #333333;
text-align: center;
}
._gnb_gnb_2C24o ._gnb_skip_navigation_3S3aO ._gnb_link_3K4IH:focus, ._gnb_gnb_2C24o ._gnb_skip_navigation_3S3aO ._gnb_link_3K4IH:active {
top: 0;
}
._gnb_gnb_2C24o ._gnb_skip_navigation_3S3aO ._gnb_text_3gc0U {
display: inline-block;
padding: 2px 6px 0 0;
font-size: 13px;
line-height: 26px;
color: #ffffff;
letter-spacing: -1px;
vertical-align: top;
}
._gnb_gnb_2C24o ._gnb_header_area_150KE {
position: relative;
z-index: 2000;
background: #01c73c url(https://shopv.pstatic.net/web/modules/gnb/p/static/20210605_1730/img/sv/global/bg_gheader.jpg) no-repeat 100% 0;
min-width: 990px;
}
._gnb_gnb_2C24o ._gnb_header_area_150KE:before {
position: absolute;
top: 0;
right: 0;
left: 0;
height: 102px;
background-color: rgba(0, 0, 0, 0.12);
content: "";
}._gnbHeader_gnb_header_aiw0M {
position: relative;
height: 36px;
}
._gnbHeader_gnb_header_aiw0M:after {
position: absolute;
right: 0;
bottom: 0;
left: 0;
height: 1px;
background-color: rgba(0, 0, 0, 0.1);
content: "";
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_header_inner_2hQhW {
width: 1280px;
position: relative;
clear: both;
margin: 0 auto;
}
@media screen and (max-width: 1364px) {
._gnbHeader_gnb_header_aiw0M ._gnbHeader_header_inner_2hQhW {
width: 940px;
}
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_header_inner_2hQhW:after {
display: block;
clear: both;
content: "";
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_main_site_2NLsV {
float: left;
padding: 11px 0 12px;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_main_site_2NLsV ._gnbHeader_link_wW48B {
display: inline-block;
position: relative;
vertical-align: top;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_main_site_2NLsV ._gnbHeader_link_wW48B + ._gnbHeader_link_wW48B {
margin-left: 18px;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_main_site_2NLsV ._gnbHeader_icon_naver_2Akrc {
width: 48px;
height: 13px;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_main_site_2NLsV ._gnbHeader_icon_npay_3a8Y0 {
width: 67px;
height: 14px;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y {
position: relative;
float: right;
margin: 3px -9px 0 0;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y ._gnbHeader_link_basket_3VW4Q {
display: inline-block;
margin-right: 10px;
padding: 5px;
font-size: 11px;
line-height: 19px;
color: #ffffff;
letter-spacing: -0.2px;
vertical-align: top;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y ._gnbHeader_link_basket_3VW4Q ._gnbHeader_icon_area_1BEtH {
display: inline-block;
min-width: 22px;
margin-right: 2px;
vertical-align: top;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y ._gnbHeader_link_basket_3VW4Q ._gnbHeader_icon_3CZKN {
width: 19px;
height: 19px;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y ._gnbHeader_link_basket_3VW4Q ._gnbHeader_number_TdqWA {
display: inline-block;
position: relative;
margin: -4px 0 0 -8px;
padding: 0 4px;
border-radius: 68px;
background-color: #12a741;
font-family: tahoma, sans-serif;
font-size: 12px;
font-weight: bold;
line-height: 15px;
vertical-align: top;
}
._gnbHeader_gnb_header_aiw0M ._gnbHeader_shopping_gnb_wrap_1GW-y ._gnbHeader_link_basket_3VW4Q ._gnbHeader_plus_1bZII {
display: inline-block;
width: 7px;
margin-top: -1px;
font-size: 10px;
vertical-align: top;
}
._gnbHeader_gnb_header_aiw0M .gnb_login_li {
margin-right: 2px;
padding: 5px 7px 0 0;
}
._gnbHeader_gnb_header_aiw0M .gnb_my_li {
margin-right: 7px;
}
._gnbHeader_gnb_header_aiw0M .gnb_notice_li {
margin-right: 2px;
}
._gnbHeader_gnb_header_aiw0M .mail_li {
margin-right: 2px;
}
._gnbHeader_gnb_header_aiw0M .gnb_service_li {
margin-right: 2px;
}._gnbLogo_gnb_logo_3eIAf {
height: 66px;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_inner_12QAI {
width: 1280px;
position: relative;
clear: both;
margin: 0 auto;
}
@media screen and (max-width: 1364px) {
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_inner_12QAI {
width: 940px;
}
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_inner_12QAI:after {
display: block;
clear: both;
content: "";
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_title_1xWf- {
float: left;
width: 82px;
padding-top: 19px;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_title_1xWf- ._gnbLogo_link_naver_15bLF {
display: block;
position: relative;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_title_1xWf- ._gnbLogo_link_naver_15bLF ._gnbLogo_icon_1qTFT {
width: 68px;
height: 28px;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_live_area_tayLB {
float: left;
width: 68px;
margin: 24px 19px 0 0;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_live_area_tayLB:before {
display: inline-block;
width: 1px;
height: 14px;
margin: 3px 12px 0 0;
background-color: rgba(255, 255, 255, 0.5);
vertical-align: top;
content: "";
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_live_area_tayLB ._gnbLogo_link_live_3WczV {
display: inline-block;
position: relative;
vertical-align: top;
}
._gnbLogo_gnb_logo_3eIAf ._gnbLogo_live_area_tayLB ._gnbLogo_link_live_3WczV ._gnbLogo_icon_1qTFT {
width: 55px;
height: 20px;
}._gnbSearch_gnb_search_3O1L2 {
position: relative;
float: left;
width: 430px;
padding-top: 16px;
z-index: 10;
}
@media screen and (max-width: 1364px) {
._gnbSearch_gnb_search_3O1L2 {
width: auto;
margin-right: 13px;
}
}
._gnbSearch_gnb_search_3O1L2 ._gnbSearch_inner_2Zksb {
position: relative;
float: left;
width: 267px;
height: 32px;
padding-right: 81px;
border: 1px solid #00b637;
border-right: 0;
background-color: #ffffff;
}
@media screen and (max-width: 1364px) {
._gnbSearch_gnb_search_3O1L2 ._gnbSearch_inner_2Zksb {
width: 223px;
}
}._searchInput_search_input_QXUFf ._searchInput_search_text_3CUDs {
width: 100%;
height: 18px;
margin: 7px 0 0 10px;
border: 0 none;
font-size: 14px;
font-weight: bold;
line-height: 19px;
color: #000000;
outline: medium none;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK {
overflow: hidden;
position: absolute;
top: 0;
right: 50px;
width: 31px;
height: 32px;
border: none;
background: none;
cursor: pointer;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK ._searchInput_more_28Bh5 {
position: absolute;
top: 14px;
left: 12px;
border-width: 4px 4px 0;
border-style: solid;
border-color: #5fc351 transparent transparent;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK ._searchInput_more_28Bh5._searchInput_on_2fWH7 {
transform: rotate(180deg);
}
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK ._searchInput_more_28Bh5._searchInput_none_2o_cT {
border-top-color: #a9a9a9;
}
._searchInput_search_input_QXUFf ._searchInput_layer_tooltip_1IU-p {
display: none;
position: absolute;
top: 32px;
right: -14px;
width: 88px;
height: 26px;
font-size: 11px;
line-height: 26px;
letter-spacing: -1px;
text-align: center;
}
._searchInput_search_input_QXUFf ._searchInput_layer_tooltip_1IU-p ._searchInput_inner_3yZXf {
display: block;
position: relative;
z-index: 20;
width: 86px;
height: 24px;
border: 1px solid #444444;
background-color: #ffffff;
cursor: pointer;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK:hover ~ ._searchInput_layer_tooltip_1IU-p,
._searchInput_search_input_QXUFf ._searchInput_button_search_auto_3pWbK:focus ~ ._searchInput_layer_tooltip_1IU-p {
display: block;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_1n1aw {
position: absolute;
top: -1px;
right: 0;
}
._searchInput_search_input_QXUFf ._searchInput_button_search_1n1aw ._searchInput_icon_DaIWa {
width: 50px;
height: 34px;
}._autoComplete_auto_complete_3QBbf {
position: absolute;
top: 32px;
left: -1px;
display: none;
overflow: hidden;
border: 1px solid #199e57;
background-color: #ffffff;
}
._autoComplete_auto_complete_3QBbf:after {
display: block;
clear: both;
content: "";
}
._autoComplete_auto_complete_3QBbf._autoComplete_active_3_pom {
display: block;
}
._autoComplete_auto_complete_3QBbf._autoComplete_selected_2YRtC {
width: 588px;
}
@media screen and (max-width: 1364px) {
._autoComplete_auto_complete_3QBbf._autoComplete_selected_2YRtC {
width: 544px;
}
}
._autoComplete_auto_complete_3QBbf ._autoComplete_basis_result_1cDj8 {
position: relative;
display: none;
float: left;
width: 346px;
padding-bottom: 26px;
border-right: 1px solid #eeeeee;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_basis_result_1cDj8._autoComplete_active_3_pom {
display: block;
}
@media screen and (max-width: 1364px) {
._autoComplete_auto_complete_3QBbf ._autoComplete_basis_result_1cDj8 {
width: 302px;
}
}
._autoComplete_auto_complete_3QBbf ._autoComplete_basis_text_2T2-f {
height: 40px;
padding-left: 10px;
line-height: 43px;
color: #666666;
}
._autoComplete_auto_complete_3QBbf strong {
color: #247ee2;
}
._autoComplete_auto_complete_3QBbf ul {
width: 346px;
padding: 5px 0;
border-top: 1px solid #eeeeee;
}
._autoComplete_auto_complete_3QBbf ul:first-child {
border-top: 0;
}
@media screen and (max-width: 1364px) {
._autoComplete_auto_complete_3QBbf ul {
width: 302px;
}
}
._autoComplete_auto_complete_3QBbf li a {
position: relative;
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
display: block;
line-height: 27px;
text-indent: 10px;
color: #444444;
}
._autoComplete_auto_complete_3QBbf li.active a, ._autoComplete_auto_complete_3QBbf li a:hover, ._autoComplete_auto_complete_3QBbf li a:focus {
background-color: #f5f5f5;
}
._autoComplete_auto_complete_3QBbf li ._autoComplete_expand_theme_3WZMy {
float: right;
margin-right: 20px;
color: #8a8a8a;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_search_expand_3qaOT {
position: absolute;
top: 10px;
right: 10px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_search_expand_3qaOT ._autoComplete_icon_1PImY {
display: block;
width: 4px;
height: 7px;
color: #888888;
}
._autoComplete_auto_complete_3QBbf li._autoComplete_on_1eTbG a ._autoComplete_search_expand_3qaOT ._autoComplete_icon_1PImY,
._autoComplete_auto_complete_3QBbf li a:hover ._autoComplete_search_expand_3qaOT ._autoComplete_icon_1PImY,
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr:hover ._autoComplete_text_34PGc ._autoComplete_icon_1PImY {
color: #4caaff;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB {
padding: 0;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_item_1mNTh + ._autoComplete_item_1mNTh {
border-top: 1px solid #eeeeee;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr {
height: 35px;
padding: 8px 70px 8px 10px;
line-height: 14px;
text-indent: 0;
text-overflow: initial;
white-space: normal;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_thumbnail_wMw55 {
float: left;
overflow: hidden;
position: relative;
width: 35px;
height: 35px;
margin-right: 8px;
border-radius: 50%;
background-color: #ffffff;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_thumbnail_wMw55:after {
position: absolute;
top: 0;
right: 0;
bottom: 0;
left: 0;
border: 1px solid rgba(0, 0, 0, 0.03);
border-radius: 50%;
background-color: rgba(0, 0, 0, 0.02);
content: "";
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_thumbnail_wMw55._autoComplete_no_img_2-He- ._autoComplete_icon_1PImY {
position: absolute;
top: 9px;
left: 10px;
width: 15px;
height: 15px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_thumbnail_wMw55 ._autoComplete_image_zY8Rj {
position: absolute;
top: -100%;
right: -100%;
bottom: -100%;
left: -100%;
width: 100%;
height: auto;
margin: auto;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_name_2UZNv {
overflow: hidden;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_name_2UZNv ._autoComplete_brand_1zrF1 {
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
display: block;
margin-top: 3px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_name_2UZNv ._autoComplete_brandstore_1qfnC {
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
display: block;
margin-top: 2px;
font-size: 11px;
line-height: 13px;
color: #606060;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_text_34PGc {
position: absolute;
top: 19px;
right: 10px;
color: #8a8a8a;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_list_brandstore_1uJCB ._autoComplete_link_brandstore_2Chyr ._autoComplete_text_34PGc ._autoComplete_icon_1PImY {
width: 4px;
height: 7px;
margin: 3px 0 0 6px;
color: #888888;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK {
text-indent: 0;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong {
color: #444444;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY {
width: 16px;
height: 16px;
margin: 6px 4px 0 9px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_aitems_3cQo5, ._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_brand_fashion_2FSsw {
color: #212121;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_designer_1R9VW {
color: #213573;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_luxury_1m5VV {
color: #191919;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_mister_2uwcu {
color: #000000;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_benefit_SXilf, ._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_1PImY._autoComplete_promotion_3g5_u {
margin-top: 5px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_link_window_2UoUK strong ._autoComplete_icon_arrow_12qyS {
width: 4px;
height: 7px;
margin: 10px 0 0 5px;
color: #888888;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 {
width: 240px;
height: 281px;
padding-top: 30px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT {
display: block;
text-align: center;
padding: 0 20px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT strong {
display: block;
margin-top: 7px;
color: #222222;
word-wrap: normal;
word-break: keep-all;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT strong._autoComplete_theme_name_2aLd9 {
margin-top: 11px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_price_3TSd7 {
margin-top: 4px;
font-weight: bold;
color: #959595;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_price_3TSd7 em {
display: inline-block;
line-height: 15px;
color: #f24443;
vertical-align: top;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_price_3TSd7 em ._autoComplete_num_1GC9N {
display: inline-block;
margin-top: -2px;
font-family: helvetica, Arial, sans-serif, NanumGothic;
font-size: 15px;
vertical-align: middle;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_date_3_rRX {
display: block;
margin-top: 4px;
font-size: 12px;
font-weight: bold;
color: #959595;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_range_1FTTb {
margin: 0 2px 0 1px;
font-weight: normal;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_goods_WaRRT ._autoComplete_compare_16AkI {
display: inline-block;
height: 23px;
margin-top: 10px;
padding: 0 7px;
border: 1px solid #8b8e98;
background-color: #9497a1;
font-size: 12px;
line-height: 22px;
color: #ffffff;
text-align: center;
vertical-align: top;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_low_1zfq_ {
padding-right: 2px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_ico_mobile_2EC18 {
background-image: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20230518_1900/img/sprite/png/spSv_global.png);
background-size: 429px 398px;
background-position: -419px -84px;
width: 9px;
height: 11px;
overflow: hidden;
color: transparent;
display: inline-block;
margin: -2px 3px 0 0;
vertical-align: middle;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_inner_1-1z5 ._autoComplete_desc_1GjfE {
position: absolute;
top: 228px;
right: 0;
overflow: hidden;
width: 212px;
height: 55px;
padding: 15px 12px 0 15px;
border-top: 1px solid #eeeeee;
line-height: 18px;
color: #959595;
word-break: break-all;
word-wrap: break-word;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_result_3QRWi {
display: none;
overflow: hidden;
float: left;
width: 240px;
margin-left: -1px;
background: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20210605_1730/img/sv/global/bg_srh_expand.gif) repeat-y 0 0;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_expand_result_3QRWi._autoComplete_active_3_pom {
display: block;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_help_box_1BSA5 {
position: absolute;
right: 0;
bottom: 0;
left: 0;
height: 26px;
border-top: 1px solid #eeeeee;
background-color: #f5f5f5;
text-align: right;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_help_box_1BSA5 a,
._autoComplete_auto_complete_3QBbf ._autoComplete_help_box_1BSA5 button {
display: inline-block;
margin: 0 9px 0 2px;
font-size: 11px;
line-height: 26px;
color: #8a8a8a;
letter-spacing: -1px;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_bar_1rcoz {
display: inline-block;
width: 1px;
height: 10px;
margin: -1px 4px 0 -3px;
background-color: #cecece;
vertical-align: middle;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_layer_help_2F51t {
display: none;
position: absolute;
left: 66px;
bottom: 27px;
width: 209px;
height: 21px;
padding-left: 7px;
border: 1px solid #000000;
background-color: #fefddf;
line-height: 23px;
color: #000000;
letter-spacing: -1px;
text-align: left;
}
@media all and (min-width: 1365px) {
._autoComplete_auto_complete_3QBbf ._autoComplete_layer_help_2F51t {
left: 110px;
}
}
._autoComplete_auto_complete_3QBbf ._autoComplete_layer_help_2F51t ._autoComplete_icon_area_XMbv5 {
display: inline-block;
position: relative;
vertical-align: top;
}
._autoComplete_auto_complete_3QBbf ._autoComplete_layer_help_2F51t ._autoComplete_icon_1PImY {
display: block;
width: 23px;
height: 13px;
margin: 5px 2px 0;
}

._autoComplete_layer_auto_3rN4S ._autoComplete_basis_result_1cDj8._autoComplete_active_3_pom,
._autoComplete_help_box_1BSA5 button:hover ~ ._autoComplete_layer_help_2F51t,
._autoComplete_help_box_1BSA5 button:focus ~ ._autoComplete_layer_help_2F51t {
display: block;
}

.co_expand_inner {
width: 240px;
height: 281px;
padding-top: 30px;
}
.co_expand_inner .co_goods {
display: block;
text-align: center;
padding: 0 20px;
}
.co_expand_inner .co_goods strong {
display: block;
margin-top: 7px;
color: #222222;
word-wrap: normal;
word-break: keep-all;
}
.co_expand_inner .co_goods .co_price {
margin-top: 4px;
font-weight: bold;
color: #959595;
}
.co_expand_inner .co_goods .co_price em {
display: inline-block;
line-height: 15px;
color: #f24443;
vertical-align: top;
}
.co_expand_inner .co_goods .co_price em .co_num {
display: inline-block;
margin-top: -2px;
font-family: helvetica, Arial, sans-serif, NanumGothic;
font-size: 15px;
vertical-align: middle;
}
.co_expand_inner .co_goods .co_date {
display: block;
margin-top: 4px;
font-size: 12px;
font-weight: bold;
color: #959595;
}
.co_expand_inner .co_goods .co_range {
margin: 0 2px 0 1px;
font-weight: normal;
}
.co_expand_inner .co_goods .co_compare {
display: inline-block;
height: 23px;
margin-top: 10px;
padding: 0 7px;
border: 1px solid #8b8e98;
background-color: #9497a1;
font-size: 12px;
line-height: 22px;
color: #ffffff;
text-align: center;
vertical-align: top;
}
.co_expand_inner .co_low {
padding-right: 2px;
}
.co_expand_inner .co_ico_mobile {
background-image: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20230518_1900/img/sprite/png/spSv_global.png);
background-size: 429px 398px;
background-position: -419px -84px;
width: 9px;
height: 11px;
overflow: hidden;
color: transparent;
display: inline-block;
margin: -2px 3px 0 0;
vertical-align: middle;
}
.co_expand_inner .co_dsc {
overflow: hidden;
position: absolute;
top: 228px;
right: 0;
width: 212px;
height: 55px;
padding: 15px 12px 0 15px;
border-top: 1px solid #eeeeee;
line-height: 18px;
color: #959595;
word-break: break-all;
word-wrap: break-word;
}._detailSearch_detail_search_mlvXq {
display: inline-block;
vertical-align: top;
}

._siteButton_site_button_mUZWX ._siteButton_link_3vUut {
display: inline-block;
position: relative;
vertical-align: top;
}
._siteButton_site_button_mUZWX ._siteButton_link_best_3Y9cW ._siteButton_text_icon_2KCsd {
width: 60px;
height: 14px;
}
._siteButton_site_button_mUZWX ._siteButton_link_mall_3MBAI ._siteButton_text_icon_2KCsd {
width: 58px;
height: 14px;
}
._siteButton_site_button_mUZWX ._siteButton_bar_2Gkgo {
background-image: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20230518_1900/img/sprite/png/spSv_global.png);
background-size: 429px 398px;
background-position: -419px -170px;
width: 1px;
height: 12px;
display: inline-block;
margin: 1px 13px 0 13px;
vertical-align: top;
}._myButton_my_button_1GyxC {
position: absolute;
top: 25px;
right: 9px;
height: 14px;
}
._myButton_my_button_1GyxC:before {
display: inline-block;
width: 1px;
height: 12px;
margin-top: 1px;
background-color: rgba(255, 255, 255, 0.2);
vertical-align: top;
content: "";
}
._myButton_my_button_1GyxC ._myButton_button_2646r {
position: relative;
padding-left: 12px;
vertical-align: top;
}
._myButton_my_button_1GyxC ._myButton_button_2646r ._myButton_icon_2H5fU {
width: 12px;
height: 12px;
margin: 1px 4px 0 0;
}
._myButton_my_button_1GyxC ._myButton_button_2646r ._myButton_text_icon_3L7su {
width: 45px;
height: 14px;
}
._myButton_my_button_1GyxC ._myButton_button_2646r:after {
display: inline-block;
width: 0;
height: 0;
margin: 6px 0 0 4px;
border-style: solid;
border-width: 3px 3px 3px 3px;
border-color: #ffffff transparent transparent;
vertical-align: top;
content: "";
}
._myButton_my_button_1GyxC ._myButton_layer_my_TuzvW {
position: absolute;
top: 24px;
left: 50%;
display: block;
z-index: 20;
width: 142px;
margin-left: -67px;
padding: 11px 0 5px;
white-space: normal;
}
._myButton_my_button_1GyxC ._myButton_layer_my_TuzvW:before {
position: absolute;
top: 0;
right: 0;
left: 0;
overflow: hidden;
height: 11px;
background: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20210605_1730/img/sv/global/bg_co_layer.png) no-repeat 0 0;
content: "";
}
._myButton_my_button_1GyxC ._myButton_layer_my_TuzvW:after {
position: absolute;
right: 0;
bottom: 0;
left: 0;
overflow: hidden;
height: 5px;
background: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20210605_1730/img/sv/global/bg_co_layer.png) no-repeat 0 -15px;
content: "";
}
._myButton_my_button_1GyxC ._myButton_list_my_3oHOM {
position: relative;
overflow: hidden;
background: url(https://shopv.pstatic.net/web/modules/gnb/p/static/20210605_1730/img/sv/global/bg_co_repeat.png) repeat-y 0 0;
padding: 5px 18px 13px 17px;
}
._myButton_my_button_1GyxC ._myButton_list_my_3oHOM ._myButton_list_35E4w {
padding-top: 8px;
}
._myButton_my_button_1GyxC ._myButton_list_my_3oHOM ._myButton_list_35E4w:nth-child(4) {
padding-bottom: 14px;
border-bottom: 1px solid #e5e5e5;
}
._myButton_my_button_1GyxC ._myButton_list_my_3oHOM ._myButton_link_1yOU_ {
color: #444444;
}
._myButton_my_button_1GyxC ._myButton_list_my_3oHOM ._myButton_link_1yOU_:hover {
color: #0bb75b;
text-decoration: underline;
}body{background-color:#ffffff}._35Osh5xuDd{min-width:990px;padding:30px 0}._35Osh5xuDd .Mwte9PQI3_{position:relative;width:940px;margin:0 auto;border:1px solid #e5e5e5;background:#fff}@media all and (min-width: 1365px){._35Osh5xuDd .Mwte9PQI3_{width:1280px}}._35Osh5xuDd .Mwte9PQI3_:after{display:block;clear:both;content:""}._35Osh5xuDd ._2WoYkC64sO{float:left;position:relative;width:640px;padding:40px 40px 120px}@media all and (min-width: 1365px){._35Osh5xuDd ._2WoYkC64sO{width:980px}}._2S6254L_Ey{position:absolute;top:133px;right:0;display:block;overflow:hidden;width:50%}._2S6254L_Ey a{display:inline-block;overflow:hidden;width:160px;height:210px;margin-left:492px;vertical-align:top}._2S6254L_Ey a:not(:first-child){margin-top:20px}@media all and (min-width: 1365px){._2S6254L_Ey a{margin-left:662px}}._3t4FKVbdls{float:left;width:220px}._3t4FKVbdls .PjSFBSdTUS{display:block;padding:20px 7px 20px 18px;background-color:#f7f8f8;border-bottom:1px solid #ebebeb;color:#222}._3t4FKVbdls .PjSFBSdTUS ._1XQWLqyUkW{font-weight:bold;font-size:14px}._3t4FKVbdls .PjSFBSdTUS ._1XQWLqyUkW:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-186px -172px;width:45px;height:15px;display:inline-block;margin:1px 0 0 6px;vertical-align:top;content:""}._3t4FKVbdls .PjSFBSdTUS ._1lSYnbVdkX{margin-top:6px;font-size:11px;line-height:14px;letter-spacing:-0.5px}._3t4FKVbdls .PjSFBSdTUS ._1lSYnbVdkX em{color:#00c73c;font-weight:normal}._3t4FKVbdls .PjSFBSdTUS ._1lSYnbVdkX:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px -193px;width:4px;height:9px;display:inline-block;vertical-align:top;margin:2px 0 0 4px;content:""}._3t4FKVbdls:after{position:absolute;top:0;bottom:0;left:219px;z-index:10;width:1px;background:rgba(0,0,0,.1);content:""}.jKjq5a06KO{position:relative;z-index:1;margin:-1px 0 0 -1px;padding-top:27px;background:#bbbfc3}.jKjq5a06KO ._2Ceo5FBp0I{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-156px 0px;width:94px;height:94px;display:block;position:relative;margin:0 auto}.jKjq5a06KO ._2Ceo5FBp0I:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:0px -104px;width:94px;height:94px;display:block;position:absolute;top:0;right:0;bottom:0;left:0;content:""}.jKjq5a06KO ._2Ceo5FBp0I ._15xsB268hT{width:100%;height:auto;vertical-align:top}.jKjq5a06KO ._2Ceo5FBp0I ._21fP4n2jXB{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-56px -311px;width:20px;height:21px;position:absolute;right:4px;bottom:5px;z-index:1}.jKjq5a06KO ._2fwusrI6Ge{margin-top:16px;padding-bottom:35px;text-align:center;color:#fff}.jKjq5a06KO ._2fwusrI6Ge ._2ImVEIoyYn{display:block;font-size:16px;font-weight:600;word-break:break-all}.jKjq5a06KO ._2fwusrI6Ge ._1IAiTB3uR9{display:block;margin-top:5px;color:#fff}.jKjq5a06KO ._2D_uDEqP8k{position:relative;margin-top:20px}.jKjq5a06KO ._2GsCoXl-1t{display:inline-block;padding:0 16px 0 17px;background-color:#5e6876;font-size:11px;line-height:26px;color:#fff;vertical-align:top}.jKjq5a06KO .nXFzr4VlLw{margin:20px 18px -15px;padding-top:10px;border-top:1px solid rgba(255,255,255,.15);font-family:Tahoma,sans-serif;font-size:12px;line-height:18px}.jKjq5a06KO ._28TTu65K8z{position:relative;font-family:Tahoma,sans-serif;line-height:18px;color:#fff}.jKjq5a06KO ._28TTu65K8z:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-169px -120px;width:6px;height:10px;display:inline-block;margin:4px 0 0 4px;vertical-align:top;content:""}.jKjq5a06KO .PKltCkdso9{display:none;position:absolute;top:114px;left:50%;z-index:1;width:192px;margin-left:-96px;padding:12px 0 7px}.jKjq5a06KO .PKltCkdso9._3-BSUstIuG{display:block}.jKjq5a06KO .PKltCkdso9 ._2wafpsLgkl{background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAAABCAYAAACIaKEWAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDE0IDc5LjE1Njc5NywgMjAxNC8wOC8yMC0wOTo1MzowMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkIwNkQwNzgxMEFBNzExRTVCMzlFQjBBQkM3REZGMTcyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkIwNkQwNzgyMEFBNzExRTVCMzlFQjBBQkM3REZGMTcyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QjA2RDA3N0YwQUE3MTFFNUIzOUVCMEFCQzdERkYxNzIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QjA2RDA3ODAwQUE3MTFFNUIzOUVCMEFCQzdERkYxNzIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6ofBHDAAAANElEQVR42mL8//8/AyMjIxsDAwP3ynUb34UF+jGMglEwXMGq9ZsYwoP8hYDMr8C0/wsgwAD3iQ7/zmgm1AAAAABJRU5ErkJggg==) repeat-y}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle{padding:6px 0 16px}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH{margin-top:10px;padding:0 18px}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH ._3fEZrMB64x{display:block;height:15px;line-height:15px;color:#333}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH ._3fEZrMB64x:hover{text-decoration:underline}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH ._3fEZrMB64x:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-315px -311px;width:15px;height:15px;display:inline-block;margin-right:7px;vertical-align:top;content:""}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH:first-child ._3fEZrMB64x:before{background-position:-277px -311px}.jKjq5a06KO .PKltCkdso9 ._1sZI9N6Kle ._1j6QEXSYkH:last-child ._3fEZrMB64x:before{background-position:-296px -311px}.jKjq5a06KO .PKltCkdso9:before{position:absolute;top:0;right:0;left:0;height:12px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAAyCAMAAACNglU8AAAAilBMVEVHcEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQlJcAAAAAAACnrK+nrK+ip6oAAACmq66prrGorbCcoaQAAAAAAABSVVYYGRlQUlN0d3mIjI4eHyCKjpBzdnicoKOcoKOorbCnrK////+prrHl5+jZ29zMz9HS1NbN0NLR1NbO0dLj5OXj5eZ4QRcTAAAAI3RSTlMABQ0QBAIIBhEBVwsK6erFA9/88qIWEiEVIDZSFlI1c3Lq52QldNEAAAE1SURBVGje7ZnHdsIwEEUtW8XChU56AZmWwP//Hj4kG7ILGs4wR+/uZzOSpuhmGWDH9ySfA+2cTjwLXlWfH5Xyad+D6mUyeatSvgt+VL9PD8fpcz1KNwvGPo03IWzGD9awH4jRynFQPw6/Qs9u+FpfEa608XQP0+ZFycBiPtuHM9+z+eL/8UVuyYqJsYOm42EbftleFd4OyJ6Rzpt1EMm6yTVRElTRBaF0hcLMDQA1rpRbE0qHwkhXGAW3yJasRfbDUtuJZEU3LLGNzbFQjs18C1QklAsUAACAO/pphXmBeclgXn7uAcwLzEt2X+aFbXeINC/EewfPFhlrXog3UC75EmleIvkjbuT+LBGKG8F/jBA3AEC+3EbcoDCm2yIvxY1c+RLD8nJYEitfSMWNVPkCcQMAuA0np+XdK0RzD9gAAAAASUVORK5CYII=) no-repeat;content:""}.jKjq5a06KO .PKltCkdso9:after{position:absolute;right:0;bottom:0;left:0;height:7px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAAyCAMAAACNglU8AAAAilBMVEVHcEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQlJcAAAAAAACnrK+nrK+ip6oAAACmq66prrGorbCcoaQAAAAAAABSVVYYGRlQUlN0d3mIjI4eHyCKjpBzdnicoKOcoKOorbCnrK////+prrHl5+jZ29zMz9HS1NbN0NLR1NbO0dLj5OXj5eZ4QRcTAAAAI3RSTlMABQ0QBAIIBhEBVwsK6erFA9/88qIWEiEVIDZSFlI1c3Lq52QldNEAAAE1SURBVGje7ZnHdsIwEEUtW8XChU56AZmWwP//Hj4kG7ILGs4wR+/uZzOSpuhmGWDH9ySfA+2cTjwLXlWfH5Xyad+D6mUyeatSvgt+VL9PD8fpcz1KNwvGPo03IWzGD9awH4jRynFQPw6/Qs9u+FpfEa608XQP0+ZFycBiPtuHM9+z+eL/8UVuyYqJsYOm42EbftleFd4OyJ6Rzpt1EMm6yTVRElTRBaF0hcLMDQA1rpRbE0qHwkhXGAW3yJasRfbDUtuJZEU3LLGNzbFQjs18C1QklAsUAACAO/pphXmBeclgXn7uAcwLzEt2X+aFbXeINC/EewfPFhlrXog3UC75EmleIvkjbuT+LBGKG8F/jBA3AEC+3EbcoDCm2yIvxY1c+RLD8nJYEitfSMWNVPkCcQMAuA0np+XdK0RzD9gAAAAASUVORK5CYII=) no-repeat 0 -15px;content:""}.jKjq5a06KO ._3RgDbsur5E{display:none;position:absolute;top:36px;right:0;left:0;z-index:1;border:1px solid #616469;background-color:#fff;text-align:left}.jKjq5a06KO ._3RgDbsur5E._3-BSUstIuG{display:block}.jKjq5a06KO ._3RgDbsur5E:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px -170px;width:9px;height:6px;position:absolute;top:-5px;left:50%;margin-left:-4px;content:""}.jKjq5a06KO ._3RgDbsur5E ._1NYmm1JH6u{padding:12px 11px 10px;border:1px solid #f4f5f5}.jKjq5a06KO ._3RgDbsur5E ._3fUAbG7pYt{display:block;font-size:11px;font-weight:bold;line-height:17px;color:#3f3f3f}.jKjq5a06KO ._3RgDbsur5E ._1BoMKggsYA{margin-top:3px;font-size:11px;line-height:15px;color:#3f3f3f;word-break:break-all;word-wrap:break-word}.jKjq5a06KO ._3RgDbsur5E ._1BoMKggsYA ._3knTQwsdQW{color:#00c73c}.jKjq5a06KO ._3RgDbsur5E ._388WrdD6za{position:absolute;top:1px;right:1px;width:23px;height:25px;padding:7px 6px}.jKjq5a06KO ._3RgDbsur5E ._388WrdD6za:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-101px -361px;width:11px;height:11px;display:block;content:""}._3fftNQzxHO{padding:11px 0 17px;border-bottom:1px solid #ebebeb;background:#f7f8f8}._3fftNQzxHO li{position:relative;color:#52595d;padding-left:18px;margin:6px 21px 0 0;font-size:11px;line-height:17px}._3fftNQzxHO ._2XUZ1jTiqD{display:inline-block;overflow:hidden;width:2px;height:2px;margin:7px 5px 0 0;background:#a1a4a6;vertical-align:top}._3fftNQzxHO ._2XiEZGqw1K{position:absolute;right:0;top:-2px;color:#35383b;font-size:11px;font-weight:600;line-height:17px}._3fftNQzxHO ._2XiEZGqw1K em{font-family:Tahoma,sans-serif;padding-right:2px;font-size:13px;color:#5e666d;vertical-align:top}._3fftNQzxHO .layer_clause{position:absolute;top:9px;left:58px}.layer_clause{display:none;width:252px;font-size:12px;text-align:center;z-index:30}.layer_clause:before{display:block;height:12px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAAyCAMAAACNglU8AAAAilBMVEVHcEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQlJcAAAAAAACnrK+nrK+ip6oAAACmq66prrGorbCcoaQAAAAAAABSVVYYGRlQUlN0d3mIjI4eHyCKjpBzdnicoKOcoKOorbCnrK////+prrHl5+jZ29zMz9HS1NbN0NLR1NbO0dLj5OXj5eZ4QRcTAAAAI3RSTlMABQ0QBAIIBhEBVwsK6erFA9/88qIWEiEVIDZSFlI1c3Lq52QldNEAAAE1SURBVGje7ZnHdsIwEEUtW8XChU56AZmWwP//Hj4kG7ILGs4wR+/uZzOSpuhmGWDH9ySfA+2cTjwLXlWfH5Xyad+D6mUyeatSvgt+VL9PD8fpcz1KNwvGPo03IWzGD9awH4jRynFQPw6/Qs9u+FpfEa608XQP0+ZFycBiPtuHM9+z+eL/8UVuyYqJsYOm42EbftleFd4OyJ6Rzpt1EMm6yTVRElTRBaF0hcLMDQA1rpRbE0qHwkhXGAW3yJasRfbDUtuJZEU3LLGNzbFQjs18C1QklAsUAACAO/pphXmBeclgXn7uAcwLzEt2X+aFbXeINC/EewfPFhlrXog3UC75EmleIvkjbuT+LBGKG8F/jBA3AEC+3EbcoDCm2yIvxY1c+RLD8nJYEitfSMWNVPkCcQMAuA0np+XdK0RzD9gAAAAASUVORK5CYII=) no-repeat 0 -25px;content:""}.layer_clause:after{display:block;height:7px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAAyCAMAAACNglU8AAAAilBMVEVHcEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQlJcAAAAAAACnrK+nrK+ip6oAAACmq66prrGorbCcoaQAAAAAAABSVVYYGRlQUlN0d3mIjI4eHyCKjpBzdnicoKOcoKOorbCnrK////+prrHl5+jZ29zMz9HS1NbN0NLR1NbO0dLj5OXj5eZ4QRcTAAAAI3RSTlMABQ0QBAIIBhEBVwsK6erFA9/88qIWEiEVIDZSFlI1c3Lq52QldNEAAAE1SURBVGje7ZnHdsIwEEUtW8XChU56AZmWwP//Hj4kG7ILGs4wR+/uZzOSpuhmGWDH9ySfA+2cTjwLXlWfH5Xyad+D6mUyeatSvgt+VL9PD8fpcz1KNwvGPo03IWzGD9awH4jRynFQPw6/Qs9u+FpfEa608XQP0+ZFycBiPtuHM9+z+eL/8UVuyYqJsYOm42EbftleFd4OyJ6Rzpt1EMm6yTVRElTRBaF0hcLMDQA1rpRbE0qHwkhXGAW3yJasRfbDUtuJZEU3LLGNzbFQjs18C1QklAsUAACAO/pphXmBeclgXn7uAcwLzEt2X+aFbXeINC/EewfPFhlrXog3UC75EmleIvkjbuT+LBGKG8F/jBA3AEC+3EbcoDCm2yIvxY1c+RLD8nJYEitfSMWNVPkCcQMAuA0np+XdK0RzD9gAAAAASUVORK5CYII=) no-repeat 0 -40px;content:""}.layer_clause._1GNsRjMdPq{display:block}.layer_clause ._1ecZWgsAFN{padding:0 22px 14px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPwAAAABCAYAAAD6p8OgAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDE0IDc5LjE1Njc5NywgMjAxNC8wOC8yMC0wOTo1MzowMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjYxNUQxNDQzMEU4MzExRTU5RUNDRTBBMjgwRUUwRDJDIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjYxNUQxNDQ0MEU4MzExRTU5RUNDRTBBMjgwRUUwRDJDIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjE1RDE0NDEwRTgzMTFFNTlFQ0NFMEEyODBFRTBEMkMiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NjE1RDE0NDIwRTgzMTFFNTlFQ0NFMEEyODBFRTBEMkMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7jLuMXAAAANklEQVR42mL8//8/AyMjIxsDAwP3ynUb34UF+jGMglEwCoYHWLV+E0N4kL8QkPkVmNd/AQQYAIYSDv8DhbPJAAAAAElFTkSuQmCC) repeat-y}.layer_clause ._3j9XHlU0j8{padding:14px 0 16px;color:#444;line-height:17px;border-bottom:1px solid #e2e2e2}.layer_clause ._3j9XHlU0j8 a{color:#00c73c}.layer_clause .AmSvMdIj1g{display:block;margin:16px 0 0;color:#333;font-weight:600}._1OMiVkNM0d{padding:25px 40px}._1OMiVkNM0d a{font-size:18px;color:#222}._1OMiVkNM0d a:hover{color:#00c73c}._1OMiVkNM0d .active a{color:#00c73c}.INtHJdWKCe{padding:21px 0 23px 6px;border-top:1px solid #eaebec}.INtHJdWKCe:first-child{border-top:0}.INtHJdWKCe ul{margin-top:8px}.INtHJdWKCe li{padding-top:11px}.INtHJdWKCe li a{font-size:12px;color:#8a8a8a}._2BSNcMPm8y{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-103px -311px;width:19px;height:19px;overflow:hidden;color:rgba(0,0,0,0);display:inline-block;margin:2px 2px 0 0;vertical-align:top}.G3mNU4Ol89{position:relative;margin-top:-3px;padding-bottom:16px;border-bottom:1px solid #dbdbdb}.G3mNU4Ol89._3J1mNNuI8c{padding-bottom:11px;border-bottom:none}.G3mNU4Ol89 ._1R0wXqbnYr{display:inline-block;font-size:18px;font-weight:600;line-height:22px;vertical-align:top}.G3mNU4Ol89 ._1jAqnWmj4O{display:inline-block;margin:4px 0 0 7px;font-size:12px;line-height:16px;color:#ababab;vertical-align:top}.G3mNU4Ol89 ._1wwl20C-a5{display:block;margin-top:16px;font-size:14px;font-weight:600;line-height:20px;color:#333}.G3mNU4Ol89 ._38xcUWYYcI{margin-top:8px;padding-bottom:2px;line-height:18px;color:#656565}._1MH1g09B0S{position:absolute;top:43px;right:40px;height:14px;line-height:14px;z-index:10}._1MH1g09B0S a{color:#555}._1MH1g09B0S a~a:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px -180px;width:5px;height:9px;overflow:hidden;display:inline-block;vertical-align:top;margin:3px 8px 0 7px;content:""}.TFlYrdGhce ._1OpMkSJ0TV{overflow:hidden;line-height:30px;padding:16px 0 11px}.TFlYrdGhce ._1OpMkSJ0TV ._1XB9nA0CBf{float:left}.TFlYrdGhce ._1OpMkSJ0TV ._2d4fvgKHnz{float:left;width:26px;margin:8px 0 0 14px;vertical-align:top}.TFlYrdGhce ._1OpMkSJ0TV ._2d4fvgKHnz .aWazs85Mu4{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-21px -339px;width:16px;height:16px;float:left;-webkit-appearance:none;-moz-appearance:none;appearance:none}.TFlYrdGhce ._1OpMkSJ0TV ._2d4fvgKHnz .aWazs85Mu4:checked{background-position:-41px -339px}.TFlYrdGhce ._1OpMkSJ0TV .apDYzgTquz{float:left;height:30px;line-height:30px}.TFlYrdGhce ._1OpMkSJ0TV .apDYzgTquz+.apDYzgTquz:before{display:inline-block;width:1px;height:14px;margin:8px 9px 0 7px;background-color:#cfcfcf;vertical-align:top;content:""}.TFlYrdGhce ._1OpMkSJ0TV ._1us3SVzLOA{float:right;height:30px;line-height:30px;padding:0 11px 0 13px;border:1px solid #dedede}.TFlYrdGhce ._1OpMkSJ0TV ._1us3SVzLOA:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-69px -361px;width:12px;height:12px;display:inline-block;margin:8px 3px 0 0;vertical-align:top;content:""}._2_Se_ppqpT{position:relative;padding:11px 9px;border-bottom:1px solid #e8e8e8;background-color:#f6f7f9}._2_Se_ppqpT._15JVM4oKuJ{padding-left:35px}._2_Se_ppqpT._3po_4qW6OV{padding-right:35px}._2_Se_ppqpT ._22piOAKwzf{overflow:hidden}._2_Se_ppqpT ._2GVYce5AxK{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-339px -70px;width:40px;height:66px;position:absolute;top:0;left:0}._2_Se_ppqpT ._2GVYce5AxK:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-367px -242px;width:11px;height:16px;display:block;margin-left:14px;vertical-align:top;content:""}._2_Se_ppqpT ._1Mj5HXPg8-{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-339px 0px;width:40px;height:66px;position:absolute;top:0;right:0}._2_Se_ppqpT ._1Mj5HXPg8-:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px 0px;width:10px;height:16px;display:block;margin-left:16px;content:""}._2_Se_ppqpT ._8MvQjPWcDY{white-space:nowrap;padding:1px}._2_Se_ppqpT ._8MvQjPWcDY ._1Rkx8I8yOL{display:inline-block;padding:0 4px;vertical-align:top}._2_Se_ppqpT ._8MvQjPWcDY ._1Rkx8I8yOL._1iWfcbs4j8 ._1KnvqI65Vq:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-315px -243px;width:15px;height:14px;display:inline-block;margin:14px 5px 0 0;vertical-align:top;content:""}._2_Se_ppqpT ._8MvQjPWcDY ._1Rkx8I8yOL ._1KnvqI65Vq{display:block;height:42px;padding:0 19px;background-color:#fff;border-radius:21px;-webkit-box-shadow:0 1px 1px 0 rgba(0,0,0,.14);box-shadow:0 1px 1px 0 rgba(0,0,0,.14);font-size:14px;line-height:40px;color:#333}._2_Se_ppqpT ._8MvQjPWcDY ._1Rkx8I8yOL ._1KnvqI65Vq._2uxBWHxvEQ{background-color:#00c73c;border-color:rgba(0,0,0,.05);font-weight:bold;color:#fff}.ggDh-Xt_yq{position:relative;padding:0 2px}.ggDh-Xt_yq._16NIBFbQ7t{padding-left:26px}.ggDh-Xt_yq.qUpGBtAapS{padding-right:26px}.ggDh-Xt_yq:after{position:absolute;left:0;bottom:0;right:0;border-bottom:1px solid #e8e8e8;content:""}.ggDh-Xt_yq ._3_DB2ve87o{overflow:hidden}.ggDh-Xt_yq ._1WEuHXSLcT{position:relative;z-index:10;white-space:nowrap}.ggDh-Xt_yq ._1WEuHXSLcT ._1K4PxpqDeu{display:inline-block;vertical-align:top}.ggDh-Xt_yq ._1WEuHXSLcT ._1K4PxpqDeu ._3EiI8myVj6{display:block;padding:0 12px}.ggDh-Xt_yq ._1WEuHXSLcT ._1K4PxpqDeu ._3EiI8myVj6._3xm62nB0X_ ._1jh3eMAl4m{font-weight:bold;color:#00c73c;border-bottom-color:#00c73c}.ggDh-Xt_yq ._1WEuHXSLcT ._1K4PxpqDeu ._3EiI8myVj6 ._1jh3eMAl4m{display:block;padding:0 2px;height:46px;line-height:46px;border-bottom:2px solid rgba(0,0,0,0);font-size:13px;color:#666}.ggDh-Xt_yq ._1_6PZ5pOja{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-339px -191px;width:40px;height:47px;position:absolute;top:0;left:0;z-index:20}.ggDh-Xt_yq ._1_6PZ5pOja:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px -155px;width:6px;height:11px;display:block;margin-left:16px;content:""}.ggDh-Xt_yq .wPHCNcjzA8{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-339px -140px;width:40px;height:47px;position:absolute;top:0;right:0;z-index:20}.ggDh-Xt_yq .wPHCNcjzA8:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-391px -140px;width:6px;height:11px;display:block;margin-left:18px;content:""}._2FjBnimevh{background-color:#f7fafd;border-radius:5px;padding:3px 0 2px}@media screen and (max-width: 1364px){._2FjBnimevh._3ius-aEHP4 ._2BFlbmoCFq,._2FjBnimevh._3ius-aEHP4 ._2ZdfgAEhd4{display:none}}._2FjBnimevh:after{display:block;clear:both;content:""}._2FjBnimevh ._1ui4o2g36H{float:left;position:relative;padding:0 41px 0 20px;vertical-align:top}._2FjBnimevh ._1S-opieICT{display:-webkit-inline-box;display:-ms-inline-flexbox;display:inline-flex;position:relative;max-width:360px;font-size:13px;line-height:50px;color:#393939;letter-spacing:-0.5px;vertical-align:top}._2FjBnimevh ._1S-opieICT:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spCommon_svg.svg);background-size:188px 176px;background-position:-129px -4px;width:12px;height:17px;-webkit-box-flex:0;-ms-flex:none;flex:none;margin:17px 4px 0 0;vertical-align:top;content:""}._2FjBnimevh ._15KgXGFkY-,._2FjBnimevh ._2Ij9d1Xr4a{display:block;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;line-height:50px;white-space:nowrap;margin-right:4px;font-weight:800}._2FjBnimevh ._2Ij9d1Xr4a{-webkit-box-flex:0;-ms-flex:none;flex:none;max-width:75px}._2FjBnimevh ._2ZdfgAEhd4{display:block;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;line-height:50px;white-space:nowrap}._2FjBnimevh ._2ZdfgAEhd4+._2BFlbmoCFq{margin-right:4px}._2FjBnimevh ._2BFlbmoCFq,._2FjBnimevh ._3rrsP1ucG2{-webkit-box-flex:0;-ms-flex:none;flex:none}._2FjBnimevh ._1Y87-ksS8y{-webkit-box-flex:0;-ms-flex:none;flex:none}._2FjBnimevh ._1Y87-ksS8y ._2GqDMwWRXZ{position:relative;z-index:1;padding:3px;margin:14px 0 0 1px;vertical-align:top}._2FjBnimevh ._1Y87-ksS8y ._2GqDMwWRXZ:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spCommon_svg.svg);background-size:188px 176px;background-position:-4px -141px;width:14px;height:15px;display:block;content:""}._2FjBnimevh ._1Y87-ksS8y ._2GqDMwWRXZ._3EFZYDVp3X:after{position:absolute;top:27px;left:50%;opacity:.95;height:0;border-color:rgba(0,0,0,0) rgba(0,0,0,0) #3a3d57;border-style:solid;border-width:0 4px 4px;-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);transform:translateX(-50%);content:""}._2FjBnimevh .sVfNgiLgcM{position:absolute;top:45px;left:-20px;z-index:20;padding:8px 32px 7px 8px;border-radius:6px;background-color:rgba(58,61,87,.95);font-size:13px;line-height:17px;color:#fff;letter-spacing:-0.4px;white-space:nowrap}._2FjBnimevh .sVfNgiLgcM ._1Wc-grKs_K{display:inline-block;color:#1afb5e;vertical-align:top}._2FjBnimevh ._1yMUOM4OHb{position:absolute;top:0;right:0;padding:10px}._2FjBnimevh ._1yMUOM4OHb:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spCommon_svg.svg);background-size:188px 176px;background-position:-170px -81px;width:12px;height:12px;display:block;content:""}._2FjBnimevh ._2Z_lI2Jzjr{display:inline-block;position:relative;padding:0 6px;margin:14px 0 0 8px;border:1px solid #d1d4d7;border-radius:4px;background-color:#fff;font-size:11px;line-height:20px;color:#444;text-align:center;-webkit-box-sizing:border-box;box-sizing:border-box;letter-spacing:-0.5px;vertical-align:top}._2FjBnimevh ._2eDD_Y3dgs{float:right;margin-right:20px;font-size:13px;line-height:50px;color:#777;letter-spacing:-0.5px}._2FjBnimevh ._2JJKX7a8j8{display:inline-block;position:relative;margin:17px 6px 0 0;vertical-align:top}._2FjBnimevh ._2JJKX7a8j8:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spCommon_svg.svg);background-size:188px 176px;background-position:-4px -4px;width:77px;height:16px;display:block;content:""}._2GV_cGfYD6{overflow:hidden;line-height:30px;padding:16px 0 11px}._2GV_cGfYD6 ._2jg87vRY5C{float:left}._2GV_cGfYD6 ._3NeEiFjOsG{float:left;width:26px;margin:8px 0 0 14px;vertical-align:top}._2GV_cGfYD6 ._3NeEiFjOsG .AB7_bJlIfr{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-21px -339px;width:16px;height:16px;float:left;-webkit-appearance:none;-moz-appearance:none;appearance:none}._2GV_cGfYD6 ._3NeEiFjOsG .AB7_bJlIfr:checked{background-position:-41px -339px}._2GV_cGfYD6 .MUHd3PZvam{float:left;height:30px;line-height:30px}._2GV_cGfYD6 .MUHd3PZvam+.MUHd3PZvam:before{display:inline-block;width:1px;height:14px;margin:8px 9px 0 7px;background-color:#cfcfcf;vertical-align:top;content:""}._2GV_cGfYD6 ._3Y6FSzymWi{float:right;padding:0 12px 0 11px;border-radius:15px;border:1px solid #567cec;font-weight:bold;letter-spacing:-0.04px;color:#567cec;line-height:28px}._2GV_cGfYD6 ._3Y6FSzymWi:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-75px -169px;width:12px;height:12px;display:inline-block;margin:8px 3px 0 0;vertical-align:top;content:""}._367Mv8AX_l{display:table;position:relative;padding:12px 0;table-layout:fixed;width:100%}._367Mv8AX_l ._3HV7RQUiKG{display:table-cell;width:120px}._367Mv8AX_l ._3HV7RQUiKG ._--ArSEc38K{display:block;overflow:hidden;position:relative;height:120px}._367Mv8AX_l ._3HV7RQUiKG ._--ArSEc38K:after{position:absolute;top:0;right:0;bottom:0;left:0;border:1px solid rgba(0,0,0,.08);content:""}._367Mv8AX_l ._3HV7RQUiKG ._3n2bCCYPBg{width:100%;height:auto;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8{display:table-cell;padding:0 45px 0 18px;vertical-align:middle}._367Mv8AX_l ._3i9KDfh4y8 ._3BfPD9I4xK{margin-bottom:11px;color:#555}._367Mv8AX_l ._3i9KDfh4y8 ._3BfPD9I4xK+._35dAtUybfF{margin-top:12px}._367Mv8AX_l ._3i9KDfh4y8 ._35dAtUybfF{margin-bottom:6px}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx{display:inline-block;position:relative;margin-right:4px;padding:0 4px;border-radius:1px;font-size:10px;line-height:19px;color:#03c75a;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx:after{position:absolute;top:0;right:0;bottom:0;left:0;border-radius:inherit;border:1px solid rgba(3,199,90,.5);content:""}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._3GonJj1PUC,._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._2Y70Gpc0dP{z-index:1;color:#fff}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._3GonJj1PUC:after,._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._2Y70Gpc0dP:after{content:none}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._3GonJj1PUC{background-color:#666}._367Mv8AX_l ._3i9KDfh4y8 ._21-OP-fDyx._2Y70Gpc0dP{background-color:#e46662}._367Mv8AX_l ._3i9KDfh4y8 .PE8sbjapaz{display:block;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;line-height:19px;white-space:nowrap;margin-bottom:3px;font-size:14px;color:#666}._367Mv8AX_l ._3i9KDfh4y8 .PE8sbjapaz:hover{text-decoration:underline}._367Mv8AX_l ._3i9KDfh4y8 ._25OR7Dniks{font-size:11px;line-height:19px}._367Mv8AX_l ._3i9KDfh4y8 ._25OR7Dniks ._2bYZKL3UN3{margin-right:5px}._367Mv8AX_l ._3i9KDfh4y8 ._25OR7Dniks ._3yIjIEm_Ui{font-size:14px;font-family:Tahoma,sans-serif;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8 ._3U4hKolgo8{margin:9px 0 2px}._367Mv8AX_l ._3i9KDfh4y8 .uu28WVuTzi{font-size:13px;line-height:18px;color:gray;letter-spacing:-0.3px}._367Mv8AX_l ._3i9KDfh4y8 .uu28WVuTzi+.uu28WVuTzi{margin-top:4px}._367Mv8AX_l ._3i9KDfh4y8 ._3vrqiVbVwT{margin-left:6px;color:#2580e8}._367Mv8AX_l ._3i9KDfh4y8 ._1igKF_JG8k{margin-left:10px;color:#000;letter-spacing:0}._367Mv8AX_l ._3i9KDfh4y8 ._1igKF_JG8k ._3yIjIEm_Ui{margin-left:4px;font-family:Tahoma,sans-serif;font-size:14px;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8 .a1aapxxeht{display:inline-block;position:relative;margin:1px 4px 0 0;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8 .a1aapxxeht._1EUf7QAhBN{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-116px -86px;width:44px;height:15px}._367Mv8AX_l ._3i9KDfh4y8 .a1aapxxeht._3HnhdwYPbR{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-75px -120px;width:22px;height:15px}._367Mv8AX_l ._3i9KDfh4y8 .aATunwWRRe,._367Mv8AX_l ._3i9KDfh4y8 ._2QF5hpgaY2{display:inline-block;position:relative;margin:2px 5px 0 0;vertical-align:top}._367Mv8AX_l ._3i9KDfh4y8 .aATunwWRRe{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-67px -38px;width:41px;height:15px}._367Mv8AX_l ._3i9KDfh4y8 ._2QF5hpgaY2{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSv_my_svg.svg);background-size:255px 198px;background-position:-187px -86px;width:52px;height:15px}._367Mv8AX_l ._3i9KDfh4y8 .dCU-LrtW2j{margin-top:15px}._367Mv8AX_l ._3i9KDfh4y8 .dCU-LrtW2j ._2mc1ySOhRh{font-size:13px;color:#999}._367Mv8AX_l ._3i9KDfh4y8 .dCU-LrtW2j ._2mc1ySOhRh .C_XBTzpAHy{color:#fa4b4c}._367Mv8AX_l ._3i9KDfh4y8 .dCU-LrtW2j a._2mc1ySOhRh:hover{text-decoration:underline}._367Mv8AX_l ._3i9KDfh4y8 ._2d5HplEvNc{position:absolute;top:0;right:0;z-index:20;width:36px;height:36px}._367Mv8AX_l ._3i9KDfh4y8 ._2d5HplEvNc:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-85px -361px;width:12px;height:11px;position:absolute;top:0;right:0;bottom:0;left:0;margin:auto;content:""}._367Mv8AX_l .tIp-YUa2Pb{display:table-cell;width:26px;padding-left:14px;vertical-align:top}._367Mv8AX_l .tIp-YUa2Pb ._29MkRitCv2{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-21px -339px;width:16px;height:16px;float:left;-webkit-appearance:none;-moz-appearance:none;appearance:none}._367Mv8AX_l .tIp-YUa2Pb ._29MkRitCv2:checked{background-position:-41px -339px}._367Mv8AX_l .dCU-LrtW2j ._36BN0Tbxa4{position:relative;font-size:13px;color:#999}._367Mv8AX_l .dCU-LrtW2j ._36BN0Tbxa4:not(:only-child){padding-left:15px}._367Mv8AX_l .dCU-LrtW2j ._36BN0Tbxa4:not(:only-child):after{position:absolute;top:2px;left:7px;width:1px;height:12px;background-color:#e5e5e5;content:""}._367Mv8AX_l .dCU-LrtW2j ._36BN0Tbxa4:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/png/spSv_my.png);background-size:401px 374px;background-position:-52px -361px;width:13px;height:12px;display:inline-block;margin:2px 3px 0 0;vertical-align:top;content:""}._367Mv8AX_l.disabled a{position:relative}._367Mv8AX_l.disabled a:after{position:absolute;top:0;left:0;right:0;bottom:0;z-index:1;content:""}._367Mv8AX_l.disabled ._3i9KDfh4y8:after{position:absolute;top:0;left:40px;right:0;bottom:0;background-color:rgba(255,255,255,.6);content:""}.home_group ._367Mv8AX_l.disabled ._3i9KDfh4y8:after{position:absolute;top:0;right:0;bottom:0;left:0}._3BZovrHVHY{overflow:hidden;line-height:14px;white-space:normal}._3BZovrHVHY.UlX3LIVRQk .ToxuMEvroO{color:#7a7a7a}._3BZovrHVHY ._1RYjoBk4dk{display:inline-block;position:relative;margin:3px 3px 0 0;vertical-align:top}._3BZovrHVHY ._1RYjoBk4dk:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spCommon_svg.svg);background-size:188px 176px;background-position:-4px -28px;width:67px;height:14px;display:block;content:""}._3BZovrHVHY .ToxuMEvroO{display:inline-block;margin-top:3px;font-size:12px;letter-spacing:-0.25px;color:#4377fd;word-break:keep-all;vertical-align:top}._3BZovrHVHY .ToxuMEvroO._2PwpZhgaYd{color:#d40022}._1QyrsagqZm{text-align:center}._1QyrsagqZm ._3togxG55ie{display:inline-block;font-size:12px;line-height:25px;color:#555;vertical-align:top}._1QyrsagqZm ._3togxG55ie[aria-hidden=true]{display:none}._1QyrsagqZm ._3togxG55ie._3djaUa_es2{margin-right:13px}._1QyrsagqZm ._3togxG55ie._3djaUa_es2:before{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSw_window_svg.svg);background-size:488px 440px;background-position:-391px -369px;width:4px;height:8px;display:inline-block;margin:8px 5px 0 0;vertical-align:top;content:""}._1QyrsagqZm ._3togxG55ie._2_kozYIF0B{margin-left:13px}._1QyrsagqZm ._3togxG55ie._2_kozYIF0B:after{background-image:url(https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/img/sprite/svg/spSw_window_svg.svg);background-size:488px 440px;background-position:-403px -369px;width:4px;height:8px;display:inline-block;margin:8px 0 0 5px;vertical-align:top;content:""}._1QyrsagqZm .TF9rwtJ065{display:inline-block;width:25px;height:25px;margin:0 4px;font-size:13px;font-family:Helvetica,"\B098\B214\ACE0\B515",NanumGothic,"\B9D1\C740   \ACE0\B515","Malgun Gothic","\B3CB\C6C0",Dotum,"Apple SD Gothic Neo",sans-serif;font-weight:bold;line-height:25px;color:#666;vertical-align:top}._1QyrsagqZm .TF9rwtJ065[aria-current=true]{color:#fff;background-color:#00c73c}.department ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#7a51e3}.outlet ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#6455d6}.style ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#c143e2}.brand_fashion ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#000}.designer ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#213573}.beauty ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#f25aad}.living ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#c7984f}.direct_farm ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#5da514}.local_food ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#17b088}.traditional_alcohol ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#d99c89}.home_meal ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#fe5b06}.healthy ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#ff5f43}.kids ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#f3b301}.play ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#3682d5}.fishing ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#3682d5}.freshwater ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#129484}.art ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#89bb6d}.foreign ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#732938}.homeplus ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#f03f45}.nh_hanaro ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#16b565}.choroc ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#2f622f}.orga ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#5c4b3d}.traditional_market ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#00584c}.department_market ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#8452c7}.necessity ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#f25773}.mister ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#080809}.luxury ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#121212}.boutique ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#121212}.cosmetic ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#121212}.logistics ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#4c93e5}.plan ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#62a7ee}.gift ._1QyrsagqZm .TF9rwtJ065[aria-current=true]{background-color:#03c75a}._1QyrsagqZm._2w8VqYht7m ._3togxG55ie{height:34px;line-height:34px;white-space:nowrap;color:#888}._1QyrsagqZm._2w8VqYht7m ._3togxG55ie._3djaUa_es2:before{margin:13px 10px 0 0}._1QyrsagqZm._2w8VqYht7m ._3togxG55ie._2_kozYIF0B:after{margin:13px 0 0 10px}._1QyrsagqZm._2w8VqYht7m .TF9rwtJ065{width:34px;height:34px;font-family:Tahoma,sans-serif;font-size:12px;line-height:34px;color:#4a4a4a}._1QyrsagqZm._2w8VqYht7m .TF9rwtJ065[aria-current=true]{color:#fff}@charset "UTF-8";
._footer_footer_2TxxH {
font-family: "나눔고딕", NanumGothic, "맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo", sans-serif;
font-size: 12px;
line-height: normal;
-webkit-font-smoothing: subpixel-antialiased;
}
</style>


<link rel="shortcut icon" href="https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/favicon_shopping.ico">
<link rel="apple-touch-icon-precomposed" href="https://shopv.pstatic.net/web/shopping-web/vp/static/20240717155003/favicon_shopping.ico">


<form name='myform' method="POST" onsubmit="prodChk(event)" style="margin-left: 40px">

  <div class="_2GV_cGfYD6">
    <div class="_2jg87vRY5C">
      <label for="checkAllItem" class="_3NeEiFjOsG N=a:ztp.selectall"
        ><input type="checkbox" id="checkAllItem" class="AB7_bJlIfr" onclick="f_checkAll(this)"/></label>
	       <input type="submit" class="MUHd3PZvam N=a:ztp.del" value="선택상품 삭제"
	        style="border: 2px solid #c3c3c3;
				   width: 100px;
				   height: 40px;
				   text-align: center;
				   border-radius: 10px;
				   background-color: #efefef;">
    </div>
  </div>


	<%
		int wishListSize = wishList.size();
		if (wishListSize > 0) {
			for (WishVO wv : wishList) {
	%>


  <ul class="zzim_list">

    <li class="_367Mv8AX_l N=a:zls.item" style="width: 800px; background-color: #f5f5f5; margin-bottom: 20px; border-radius: 10px;">
    
      <label for="C__6951211639" class="tIp-YUa2Pb" style="width: 50px;">
      <input type="checkbox" name="wish" data-item-id="<%= wv.getItemId() %>" id="C__6951211639" class="_29MkRitCv2 N=a:zls.select">
	  </label>
      
      <div class="_3HV7RQUiKG">
        <a
          href="<%=request.getContextPath() %>/item/detail.do?itemId=<%= wv.getItemId() %>"
          target="_blank"
          class="_--ArSEc38K"
          ><img
            style="height: "
            src="<%=request.getContextPath()%>/views/images/product/<%= wv.getFileStreNm()%>"
            class="_3n2bCCYPBg"
            alt=""
        /></a>
      </div>
      
      <div class="_3i9KDfh4y8">
        <div><%=wv.getItemModel() %></div>
        <a
          href=""
          target="_blank"
          class="PE8sbjapaz"
          ><%=wv.getItemName() %></a
        >
<!-- 		<a href=""> -->
<!-- 			<img id="orderImage" -->
<!-- 			src="" -->
<!-- 			alt="상품이미지" style="width: 500px; height: 500px; margin-left: 150;"/> -->
<!-- 		</a> -->


        <button class="_2d5HplEvNc N=a:zls.del" 
<%--         onclick=" location.href = '<%=request.getContextPath() %>/wish/delete.do?itemId=<%=wv.getItemId() %>' ";> --%>
        onclick="f_del('<%=wv.getItemId() %>')";>
          <span class="blind">X</span>
        </button>
      </div>
    </li>

  </ul>
  

	<%
			} // for문
			
		} else {
	%>
	<div>
		<div colspan="5">찜 목록이 없습니다.</div>
	</div>
	<%
		} // if문
	%>
</form>



</div>












   
<script>
function f_del(itId) {
	let itemId = itId;
	console.log(itemId)
	
		$.ajax({
			type: 'post',
			url: '<%=request.getContextPath() %>/wish/delete.do',
			data: {
				itemId : itemId
			},
			success:function(res){
				 console.log("응답>>", res);
				 location.href = '<%=request.getContextPath() %>/wish/list.do';
			},
			error:function(xhr){
				alert("선택하신 항목이 올바르지 않습니다.");
				alert("상태 확인: " + xhr.status);
			}
	// 	 	,dataType: '' 
		 })
	
}



function prodChk(e){
	e.preventDefault();

	console.log("prodChk 들어옴");
	
	//체크박스 항목 얻기
	let chks = document.querySelectorAll('[type="checkbox"]');

	//체크 여부 확인하기
	for(let i=0; i<chks.length; i++){
		if(chks[i].checked){
			//checked 가 true인 항목만 조건문 안에서 모인다
//				console.log(chks[i]); // 현재 선택항목에 대한 값을 얻어낸 후
			console.log(chks[i].dataset.itemId);
			
			let itemId = chks[i].dataset.itemId;
			location.href = "<%=request.getContextPath() %>/wish/listDelete.do?itemId=" + itemId;			
		}
	}//for end
	
}





function f_checkAll(selectAll) {
	console.log("f_checkAll 들어옴")
	
	const checkboxes = document.getElementsByName('wish');
 
	checkboxes.forEach((checkbox) => {
	   checkbox.checked = selectAll.checked;
 	})
}

</script>