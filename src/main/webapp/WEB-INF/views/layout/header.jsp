<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 조 프로젝트</title>
<link rel="stylesheet" href="${cpath }/css/style.css">
<script src="https://kit.fontawesome.com/e4a70f325d.js" crossorigin="anonymous"></script>
<script src="${cpath }/resources/js/js.js"></script>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">
</script>


<!-- 날짜 선택 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>
	<div id="main">
		<div>
			<div id="wrap">
				<div id="nav_wrap">
					<div class="nav">
						<div class="top_nav">
							<div class="nl"></div>
							<div class="nf">
								<ul>
									<c:choose>
										<c:when test="${login == null}">
											<li><a class="nav_a" style="padding-right: 28px;" href="${cpath }/login/login_form">로그인</a></li>
											<li><a class="nav_a" style="padding-right: 17px;" href="${cpath }/join/join_form">회원가입</a></li>
										</c:when>
										<c:otherwise>
											<li><a class="nav_a" style="padding-right: 28px;" href="${cpath }/logout/logout_form">로그아웃</a></li>
										</c:otherwise>
									</c:choose>
									
									<li><a class="nav_a" href="${cpath }/manage/sc_main">고객센터</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="nav">
						<div class="middle_nav">
							<div class="nl">
								<div>
									<a href="${cpath }/"><img class="logo" src="${cpath }/resources/img/logo.png"></a>
								</div>
								<div class="search">
									<form method="GET">
										<fieldset class="search_field">
											<legend class="blind">통합검색 입력폼</legend>	
											<div>
												<input class="search_input" type="text" placeholder="검색어를 입력해 주세요">
											</div>
										</fieldset>
									</form>
								</div>
								<div class="rolling" onmouseover="showList();">
									<dl id="rank_list">
						                <dt>실시간 급상승 검색어</dt>
						                <dd>
						                    <ol>
						                        <li class="ll">1 순위</li>
						                        <li class="ll">2 순위</li>
						                        <li class="ll">3 순위</li>
						                        <li class="ll">4 순위</li>
						                        <li class="ll">5 순위</li>
						                        <li class="ll">6 순위</li>
						                        <li class="ll">7 순위</li>
						                        <li class="ll">8 순위</li>
						                        <li class="ll">9 순위</li>
						                        <li class="ll">10 순위</li>
						                    </ol>
						                </dd>
						            </dl>
								</div>
								<div class="rolling_content" onmouseout="hideList();" style="display: none;">
					            	<p class="title">실시간 검색어</p>
					            	<a href="#">1 순위</a>
					            	<a href="#">2 순위</a>
					            	<a href="#">3 순위</a>
					            	<a href="#">4 순위</a>
					            	<a href="#">5 순위</a>
					            	<a href="#">6 순위</a>
					            	<a href="#">7 순위</a>
					            	<a href="#">8 순위</a>
					            	<a href="#">9 순위</a>
					            	<a href="#">10 순위</a>
								</div>
								<div></div>
							</div>
							<div class="nf">
								<div class="private">
									<ul class="pm">
										<li>
											<a class="pm_a" href="${cpath }/myMenu/myMenu_main">
												<i class="far fa-user fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">마이메뉴</span>
											</a>
											<div></div>
											<div></div>
										</li>
										<li>
											<a class="pm_a" href="${cpath }/reservation/reserve_main">
												<i class="fas fa-clipboard-list fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">예약내역</span>
											</a>
										</li>
										<li>
											<a class="pm_a" href="${cpath }/cart/cart_form">
												<i class="fas fa-shopping-cart fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">장바구니</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="nav" style="margin-top: 20px; border-top: 1px solid #E5E5E5; border-bottom: 1px solid #000000">
						<div class="bottom_nav">
							<div class="nl">
								<div class="all_menu">
									<a href="#"><i class="fas fa-bars"></i> 전체메뉴</a>
									<div class="total_list">
										<div>
											<a href="#" class="btn_cls"></a>
											<div></div>
										</div>
									</div>
								</div>
								<div class="bl">
									<ul class="bottom_list">
										<li class="depth1">
											<a href="${cpath}/hotel/hotelView">호텔 / 펜션</a>
											<div class="dc">
												<ul class="depth2">
													<li><a href="${cpath }/hotel/hotelView">호텔 예약</a></li>
													<li><a href="#" style="width: 150px">펜션 / 풀빌라 예약</a></li>
												</ul>
											</div>
										</li>
										<li style="margin-left: 10px;"class="depth1">
											<a href="#">투어 / 입장권</a>
											<div class="dc">
												<ul class="depth2">
													<li><a href="${cpath}/tour/tour_jeju">제주</a></li>
													<li><a href="${cpath}/tour/tour_seoul">서울</a></li>
													<li><a href="${cpath}/tour/tour_gyeonggi">경기</a></li>
													<li><a href="${cpath}/tour/tour_gyeongsang">경상</a></li>
													<li><a href="${cpath}/tour/tour_gangwon">강원</a></li>
													<li><a href="${cpath}/tour/tour_jeolla">전라</a></li>
													<li><a href="${cpath}/tour/tour_chungcheong">충청</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="nf">
							
							</div>
						</div>
					</div>
					<div class="right_fixed"></div>
				</div>
				<div></div>
			</div>
		</div>
	</div>
	
	<script>
	// 실시간 검색어 rolling 함수
	$(function() {
	    var count = $('#rank_list li').length;
	    var height = $('#rank_list li').height();

	    function step(index) {
	        $('#rank_list ol').delay(2000).animate({
	            top: -height * index,
	        }, 500, function() {
	            step((index + 1) % count);
	        });
	    }

	    step(1);
	});
	</script>
	
	
	