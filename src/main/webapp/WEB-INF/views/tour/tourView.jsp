<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<style>
.tour_wrap {
   width: 100%;
   float: left;
   background-color: white;
}

.tour_wrap_in {
   margin: 0 auto;   
   width: 1200px;
}

.tour_wrap_in > section {
   height: 500px;
   background-color: yellow;
   border-bottom: 1px solid black;
}

.tour_wrap_in > section > h1 {
   float: left;
}

.tour_visual_wrap {
    position: relative;
    height: 600px;
    margin-bottom: 0;
    padding: 0;
    z-index: 15;
}
.thumbnail, .information {
    position: absolute;
    /* border: 5px solid red; */
}
.information {
    color: white;
    font-size: 18pt;
    font-weight: normal;
    z-index: 1;
}
.thumbnail {
    border-top-left-radius: 12px;
    border-top-right-radius: 12px;
    border-bottom-right-radius: 12px;
    border-bottom-left-radius: 12px;
    position: relative;
    width: 310px;
    height: 310px;
    overflow: hidden;
    background-color: #bfc1c4;
    z-index: 0;
}  
.information {
    position: absolute;
    top: 0;
    left: 0; 
    width: 100%;
    height: 100%;
    padding: 45px; 
    justify-content: center;
}
.slider-wrap {
	position: block;
}
.swiper-slide {
	flex-shrink: 0;

    height: 100%;
    position: block;
    transition-property: transform;
    width: 124px; 
    margin-right: 40px;
}

/* 이미지 슬라이더를 위한 css */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: 0 auto;
}

/* Caption text */
.text {
  color: #000000;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.tour_slider {
  height:600px;
  position:relative;
}
	/* 슬라이더  - 페이지 버튼 */
.tour_slider > .page-btns {
	    text-align:center;
	    position:absolute;
	    bottom:20px;
	    left:0;
	    width:100%;
}
	.tour_slider > .page-btns > div {
	    width:20px;
	    height:20px;
	    background-color:rgba(255,255,255,.5);
	    border-radius:4px;
	    display:inline-block;
	    cursor:pointer;
	}
	
	.tour_slider > .page-btns > div.active {
	    background-color:rgba(255,255,255,1);
	}
	
	/* 슬라이더  - 슬라이드 */
	.tour_slider > .slides > div {
	    position:absolute;
	    top:0;
	    left:0;
	    right:0;
	    bottom:0;
	    opacity:0;
	    transition: opacity 0.3s;
	    background-position:center;
	    background-size:cover;
	    background-repeat:no-repeat;
	}
	.tour_slider > .slides > div.active {
	    opacity:1;
	}
	/* 슬라이더 좌우 버튼 */
	.tour_slider > .side-btns > div {
	    position:absolute;
	    top:0;
	    left:0;
	    width: 350px;
	    height:100%;
	    cursor:pointer;
	}
	
	.tour_slider > .side-btns > div:last-child {
	    left:auto;
	    right:0;
	}
	.tour_slider >.side-btns > div > span {
	    position:absolute;
	    top:50%;
	    left:20px;
	    transform:translatey(-50%);
	    background-color:white;
	    opacity:0.5;
	    padding:1px 13px;
	    border-radius:50px;
	    font-size:25px;
	}
	.tour_slider >.side-btns > div:last-child > span {
	    left:auto;
	    right:20px;
	}
.swiper-arrow-left {
    position: absolute;
    font-size: 20px;
    color: #666;
    width: 130px;
    height: 30px;
    outline: none;
    right: 40px;
}
.swiper-arrow-right {
    position: absolute;
    font-size: 20px;
    color: #666;
    width: 30px;
    height: 30px;
    outline: none;
    right: 0;
}
</style>

<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
		integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
		crossorigin="anonymous">

<div class="tour_wrap">
	<br><br><br>
	<div class="tour_visual_wrap">
	
	<!-- 이미지 슬라이드 -->
		<div class="tour_slider">
			<div class="slides">
				<div class="active"
					style="background-image: url(${cpath}/resources/img/tour1.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/tour2.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/tour3.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/tour4.jpg);"></div>
			</div>
			<div class="page-btns">
				<div class="active"></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="side-btns">
				<div>
					<span><i class="fas fa-angle-left"></i></span>
				</div>
				<div>
					<span><i class="fas fa-angle-right"></i></span>
				</div>
			</div>
		</div>
	</div>
   		<!-- 이미지 슬라이드 end -->
	
	<div class="tour_wrap_in">
		<section style="height: 700px;"><h1>국내여행도 역시 하나투어와 함께!<br><br>
		<div style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms; width: 1200px;">
		
		<div class="tour_slider">
			<div class="slides">
				<div class="active"
					style="background-image: url(${cpath}/resources/img/강원.jpg);">
					강원
					<br>
					치유와 휴식이 있는 Healing Hub
					</div>
				<div
					style="background-image: url(${cpath}/resources/img/제주.jpg);">
					제주
					<br>
					혼저옵서예! 올해도 제주여행 렛츠고
					</div>
				<div
					style="background-image: url(${cpath}/resources/img/서울.jpg);">
					서울
					<br>
					구석구석 色다르게 둘러보는 서울여행!
					</div>
				<div
					style="background-image: url(${cpath}/resources/img/부산.jpg);">
					부산
					<br>
					여행의 찐~한맛, 부산!
					</div>
			</div>
			<div class="page-btns">
				<div class="active"></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="side-btns">
				<div>
					<span><i class="fas fa-angle-left"></i></span>
				</div>
				<div>
					<span><i class="fas fa-angle-right"></i></span>
				</div>
			</div>
		</div>
	</div>
		
	<!-- <div class="silder-wrap">
			<div class="swiper-slide">
				<a href="${cpath }/tour/tour_gangwon" >
					<span class="thumbnail">
						<img src="${cpath }/resources/img/강원.jpg">
					</span>
					<div class="information">
						<p>강원</p>
						<p>치유와 휴식이 있는 Healing Hub</p>
					</div>
				</a>
			</div>
		</div>
		<div class="side-btns">
			<div>
				<span><i class="fas fa-angle-left"></i></span>
			</div>
			<div>
				<span><i class="fas fa-angle-right"></i></span>
			</div>
		</div>
	</div> -->
		
		</h1></section>
		
		<section><h1>최근에 본 상품을 찾으세요?</h1></section>
		
		<section><h1>이번 주에 가장<br> 사랑받은 여행이에요
		<a href="${cpath }/admin/upload">사진 업로드</a>
		</h1></section>
		
		<section><h1>#MD추천 #짧게 떠나는 여행 떠나고 싶어요</h1></section>
		<section><h1>🚗제주 렌터카 고급자차 포함 특가🚕</h1></section>
		<section><h1>투어/입장권 예약상담<br><br>
			<div class="guide_board">
			<img src="${cpath }/resources/img/ico-board.png">
				<ul>
					<li>투어/입장권 상품 문의는 투어/입장권 상품페이지 내 "상품문의" 게시판을 이용 부탁합니다.</li>
					<li>투어/입장권 일반 문의는 "<a href="${cpath }/manage/sc_main">고객문의</a>" 게시판을 이용 부탁합니다.</li>
					<li>투어/입장권 예약, 취소, 결제, 환불은 "<a href="${cpath }/manage/sc_main">자주 찾는 질문</a>" 게시판에서 확인 부탁합니다.</li>
				</ul>
			</div>
			<div class="guide_tel">
			<img src="${cpath }/resources/img/ico-tel.png">
				<span>Help desk (기타문의)</span>
				<strong>1577-1233</strong>
			</div>
		</h1></section>
	</div>
</div>

     <script>
    /* 이미지 슬라이드 */
 	// 기존 버튼형 슬라이더
 	$('.tour_slider > .page-btns > div').click(function(){
 	    var $this = $(this);
 	    var index = $this.index();
 	    
 	    $this.addClass('active');
 	    $this.siblings('.active').removeClass('active');
 	    
 	    var $slider = $this.parent().parent();
 	    
 	    var $current = $slider.find(' > .slides > div.active');
 	    
 	    var $post = $slider.find(' > .slides > div').eq(index);
 	    
 	    $current.removeClass('active');
 	    $post.addClass('active');
 	});

 	// 좌/우 버튼 추가 슬라이더
 	$('.tour_slider > .side-btns > div').click(function(){
 	    var $this = $(this);
 	    var $slider = $this.closest('.tour_slider');
 	    var index = $this.index();
 	    var isLeft = index == 0;
 	    var $current = $slider.find(' > .page-btns > div.active');
 	    var $post;
 	    
 	    if( isLeft ){
 	        $post = $current.prev();
 	    } else {
 	        $post = $current.next();
 	    };
 	    if( $post.length == 0 ){
 	        if ( isLeft ){
 	            $post = $slider.find(' > .page-btns > div:last-child');
 	        }
 	        else {
 	            $post = $slider.find(' > .page-btns > div:first-child');
 	        }
 	    };
 	    $post.click();
 	});
 	setInterval(function(){
 	    $('.tour_slider > .side-btns > div').eq(1).click();
 	}, 3000);       
    </script>

<%@ include file="../layout/footer.jsp" %>