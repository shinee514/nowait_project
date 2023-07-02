<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html id="mainhtml">
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css?after" rel="stylesheet" />
</head>
<body id='mainbody'>
	<div id='mainwrap'>
		<section id='mainsection'>
		<div class="name">
			<c:if test="${nowait != null }">
    		<p style="font-size: 12px; font-family: sans-serif; margin-right: 10px; float: right;">
    		${nowait.cust_name}님 환영합니다.
    		</p>
    		</c:if>
   		</div>
			<header>
				<a href="/first"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
					<li class="nav-item1"><a href="/login">Login</a></li>
					<li class="nav-item1"><a href="/mypage">My Page</a></li>
					<li class="nav-item1"><a href="/signup">Join</a></li>
					<li class="nav-item1"><a href="/faq">FAQ</a></li>
				</ul>
			</nav>
			<nav>
				<ul class="nav-2">
					<li class="nav-item2"><a href="/rev">원격 줄서기/예약</a></li>
					<li class="nav-item2"><a href="/recommend">주변맛집추천</a></li>
					<li class="nav-item2"><a href="/sale">타임세일</a></li>
				</ul>
			</nav>
			<div class="pagetitle">
				<h1>상세페이지</h1>
			</div>
			<ul class="detailnav1">
				<a href="/detail?resId=${ data.res_id }">INFORMATION</a>
				<a href="/detailmenu?resId=${ data.res_id }">MENU</a>
			</ul>
			<ul class="logobox">
				<img class="logo" src="${path}/resources/images/${ data.res_logo }">
			</ul>

			<ul class="logo12box">
				<li class="lsubbox">
					
					<img class="logo1" src="${path}/resources/images/${ data.res_logo1 }">
				</li>
				<li class="lsubbox"><img class="logo2"
					src="${path}/resources/images/${ data.res_logo2 }"></li>
			</ul>
			<ul class="mapbox">
				<li class="msubbox"><img class="map"
					src="${path}/resources/images/${ data.res_map }"></li>
			</ul>
			
			<form action=''>
				<input id="detailinput" type='button' value="예약페이지"
					onclick="location.href='/rv?resId=${ data.res_id }'" />

			</form>
			
			<form action=''>
				<input id="detailinput2" type='button' value="원격줄서기"
					onclick="location.href='/num?resId=${ data.res_id }'" />

			</form>
			
		</section>
		</div>
		<footer id="mainfooter">
			<hr width="100%">

			<a href="" target="_blank">이용약관</a> <a href="" target="_blank">개인정보
				처리방침</a>
			</nav>
			<p></p>
			<h3>
				<span>nowait</span>
			</h3>
			<br /> <span>경기도 하남시 미사강변동로 85 힐스테이트에코미사, 3층 nowait</span><br /> <span>©
				nowait All rights reserved.</span>
		</footer>
</body>
</html>