<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

.numbertext {
	padding-left: 1500px;
}

.tour_search {
   width: 1200px;
   height: 100px;
   position: absolute;
    left: 50%;
    bottom: 50px;
    margin-left: -600px;
    background: #fff;
    padding: 20px 30px;
    z-index: 2;
}

.tour_search > div{
   position: relative;
    float: left;
    display: inline-block;   
    justify-content: center;
    margin-right: 20px;
}

.tour_search > div > input {
   margin-left: 10px;
}

.visualtour_wrap {
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
</style>

<div class="tour_wrap">
	<br><br><br>
	<div class="visualtour_wrap">
		<div class="slideshow-container">
         <div class="mySlides fade">             
              <img src="${cpath }/resources/img/tour1.jpg" style="width:100%">
              <div class="numbertext">1 / 4</div>
         </div>
         
         <div class="mySlides fade">              
              <img src="${cpath }/resources/img/tour2.jpg" style="width:100%">
              <div class="numbertext">2 / 4</div>
         </div>
         
         <div class="mySlides fade">
              <img src="${cpath }/resources/img/tour3.jpg" style="width:100%">
              <div class="numbertext">3 / 4</div>
         </div>
         
         <div class="mySlides fade">
              <img src="${cpath }/resources/img/tour4.jpg" style="width:100%">
              <div class="numbertext">4 / 4</div>
         </div>
         <div style="text-align:center;  position: absolute; z-index: 20" hidden="hidden">
              <span class="dot"></span>  
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
         </div>
      </div>
    <br>
</div>
	
	<div class="tour_wrap_in">
		<section><h1>국내여행도 역시 하나투어와 함께!<br><br>
		<div style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
		<div class="silder-wrap">
			<span class="swiper-slide">
				<a href="${cpath }/tour/tour_gangwon" >
					<span class="thumbnail">
						<img src="${cpath }/resources/img/강원.jpg">
					</span>
					<div class="information">
						<p>강원</p>
						<p>치유와 휴식이 있는 Healing Hub</p>
					</div>
				</a>
			</span>
		</div>
	</div>
		
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
     var slideIndex = 0;
     showSlides();
     function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
           slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
           slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
           dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 4000); // Change image every 4 seconds
     }             
    </script>

<%@ include file="../layout/footer.jsp" %>