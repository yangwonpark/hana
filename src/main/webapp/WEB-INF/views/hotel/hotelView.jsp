<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.hotel_slider {
	    height:600px;
	    position:relative;
	}
	/* 슬라이더  - 페이지 버튼 */
	.hotel_slider > .page-btns {
	    text-align:center;
	    position:absolute;
	    bottom:20px;
	    left:0;
	    width:100%;
	}
	.hotel_slider > .page-btns > div {
	    width:20px;
	    height:20px;
	    background-color:rgba(255,255,255,.5);
	    border-radius:4px;
	    display:inline-block;
	    cursor:pointer;
	}
	
	.hotel_slider > .page-btns > div.active {
	    background-color:rgba(255,255,255,1);
	}
	
	/* 슬라이더  - 슬라이드 */
	.hotel_slider > .slides > div {
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
	.hotel_slider > .slides > div.active {
	    opacity:1;
	}
	/* 슬라이더 좌우 버튼 */
	.hotel_slider > .side-btns > div {
	    position:absolute;
	    top:0;
	    left:0;
	    width: 350px;
	    height:100%;
	    cursor:pointer;
	}
	
	.hotel_slider > .side-btns > div:last-child {
	    left:auto;
	    right:0;
	}
	.hotel_slider >.side-btns > div > span {
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
	.hotel_slider >.side-btns > div:last-child > span {
	    left:auto;
	    right:20px;
	}
</style>

<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
		integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
		crossorigin="anonymous">
<div class="hotel_wrap">
	<div class="hotel_visual_wrap">
		<!-- 여행지 / 날짜 / 인원  => 숙소검색 -->
		<form method="POST" class="hotel_search">
			<!-- 지역선택 -->
			<div class="hotel_address">
				<input autocomplete="off" type="text" name="h_address" id="h_address" 
						placeholder="어디로 떠나세요?" required>
				<!-- input영역 클릭시 띄우는 div -->
				<div class="hotel_location">
					<!-- 시 선택  -->
					<ul class="hotel_metro">
						<c:forEach var="metro" items="${metroList}">
							<li style="text-align: center;">
								<input type="button" id="hotel_metro_${metro.idx }" value="${metro.name }">
							</li>
						</c:forEach>
					</ul>
					<!-- 구 선택  -->
					<div class="hotel_local">
						<c:forEach var="idx" begin="1" end="${metroListSize }">
							<div class="hotel_local_${idx }" style="display: none;">
								<c:forEach var="local" items="${localList }">
									<c:if test="${local.metro_idx == idx}">
											<input type="button" value="${local.name }">
									</c:if>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 지역선택 end -->
			
			<!-- 기간 선택 -->
			<div style="z-index: 99;">
				<input autocomplete="off" type="text" name="from" id="from" style="margin-left: 10px"> ~ 
				<input autocomplete="off" type="text" name="to" id="to" style="margin-left: 10px">
			</div>
			<!-- 기간선택 end -->
			
			<!-- 인원수 선택 -->
			<div>
				<input style="width: 100px" type="number" min="2" name="adult" placeholder="ADULT">
				<input style="width: 100px" type="number" min="0" name="kids" placeholder="KIDS">
			</div>
			<!-- 인원수 선택 end -->

			<div><input type="submit" value="숙소 검색"></div>
		</form>
		<!-- 여행지 / 날짜 / 인원  => 숙소검색 end -->
		<!-- 슬라이드 속 메뉴바 -->
		<div style="position: absolute; z-index: 2; margin-right: -600px; right: 50%;
			background-color: white; opacity: 0.5; width: 300px; height: 600px;">
		</div>
		<!-- 슬라이드 속 메뉴바 end -->
		<!-- 이미지 슬라이드 -->
		<div class="hotel_slider">
			<div class="slides">
				<div class="active"
					style="background-image: url(${cpath}/resources/img/hotel1.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/hotel2.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/hotel3.jpg);"></div>
				<div
					style="background-image: url(${cpath}/resources/img/hotel4.jpg);"></div>
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
		<!-- 이미지 슬라이드 end -->		
		
	</div>
	<!-- hotel_visual_wrap end -->

	<!-- 숙소정보view -->
	<div class="hotel_wrap_in">
		<section>
			<h1 style="font-family: Lucida Bright;">믿고 예약하는 이달의 혜택 호텔</h1>
			<div style="width: 1200px; height: 400px; display: flex;">
				<c:forEach var="i" begin="1" end="4">
					<div style="width: 300px; height: 400px; padding-left: 10px; padding-top: 20px;">
						<c:forEach var="entrepreneur" items="${entrepreneurAll }">
							<c:if test="${entrepreneur.idx eq hotelList[i].entrepreneur_idx }">
								<form action="hotelSelectOne" method="POST">
									<input type="hidden" name="entrepreneur_idx" value="${entrepreneur.idx}">
									<input type="hidden" name="hotel_idx" value="${hotelList[i].idx }">
									<input type="submit" value="" 
												style="width: 280px; height: 230px; 
												background-size: 280px 230px;
												background-image: url('${cpath}${hotelList[i].main_img }');">
									<h4 style="font-family: Lucida Bright; color: #679FFA; font-size: 11pt;">
									 	${entrepreneur.sales_loc.split(" ")[0] }
									 	${entrepreneur.sales_loc.split(" ")[1] }
									</h4>
									<h3 style="font-family: Lucida Bright;">
										${entrepreneur.shop_name }
									</h3>
								</form>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</section>
		
		<section style="width: 1200px; height: 600px;">
			<h1 style="font-family: Lucida Bright;">고객님을 위한 추천 숙소</h1>
			<ul style="display: flex; list-style: none; width: 1200px; height: 50px; overflow: hidden; padding-left: 0;">
				<li id="hotel_best_1" 
						style=" height: 52px; line-height: 52px; width: 300px; font-family: Lucida Bright;
						border-width: 1px 0 0 1px; border-color: #ddd; border-style: solid;background-color: #fff;
						text-align:center;">
					<a href="#">서울/강남</a>
				</li>
				<li id="hotel_best_2"
						style="height: 52px; line-height: 52px; width: 300px; font-family: Lucida Bright;
						border-width: 1px 0 0 1px; border-color: #ddd; border-style: solid;background-color: #fff;
						text-align:center;">
					<a href="#">서울/종로</a>
				</li>
				<li id="hotel_best_3"
						style="height: 52px; line-height: 52px; width: 300px; font-family: Lucida Bright;
						border-width: 1px 0 0 1px; border-color: #ddd; border-style: solid;background-color: #fff;
						text-align:center;">
					<a href="#">서울/동대문</a>
				</li>
				<li id="hotel_best_4"
						style="height: 52px; line-height: 52px; width: 300px; font-family: Lucida Bright;
						border-width: 1px 1px 0 1px; border-color: #ddd; border-style: solid;background-color: #fff;
						text-align:center;">
					<a href="#">서울/마포구</a>
				</li>
			</ul>
			<div id="hotelBest_1" style="width: 1200px; height: 400px; background-color: #f2f2f2; position: absolute;">
				<c:forEach var="entrepreneur" items="${entrepreneurAll}">
				</c:forEach>
			</div>
			<div id="hotelBest_2" style="width: 1200px; height: 400px; background-color: #f2f2f2; position: absolute;">
			</div>
			<div id="hotelBest_3" style="width: 1200px; height: 400px; background-color: #f2f2f2; position: absolute;">
			</div>
			<div id="hotelBest_4" style="width: 1200px; height: 400px; background-color: #f2f2f2; position: absolute;">
			</div>
			
		</section>
		<section><a href="#"><img src="${cpath }/resources/img/hotel5.jpg"></a></section>
	</div>
</div>


<script>

	/* 체크인 체크아웃 날짜 */
	var now = new Date();
	document.getElementById('from').value = now.toISOString().substring(0, 10);

	var tomorrow = new Date(now.setDate(now.getDate() + 1));	// 내일
	document.getElementById('to').value = tomorrow.toISOString().substring(0, 10);
	
	$(function() {
        //시작일.
        $('#from').datepicker({
            dateFormat: "yy-mm-dd",             // 날짜의 형식
            minDate: 0,                      	// 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
            maxDate: 30,
            onClose: function( selectedDate ) {    
            	let date = new Date(selectedDate);
            	date.setDate(date.getDate() + 1);
            	// 시작일(from) datepicker가 닫힐때
                // 종료일(to)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일 다음날로 지정
                $("#to").datepicker( "option","minDate", date.toISOString().substring(0, 10));
            }                
        });

        //종료일
        $('#to').datepicker({
            dateFormat: "yy-mm-dd",
            minDate: 0,
            maxDate: 30,
            onClose: function( selectedDate ) {
                // 종료일(to) datepicker가 닫힐때
                // 시작일(from)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                $("#from").datepicker( "option", "maxDate", selectedDate);
            }                
        });
    });

	/* 이미지 슬라이드 */
	// 기존 버튼형 슬라이더
	$('.hotel_slider > .page-btns > div').click(function(){
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
	$('.hotel_slider > .side-btns > div').click(function(){
	    var $this = $(this);
	    var $slider = $this.closest('.hotel_slider');
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
	    $('.hotel_slider > .side-btns > div').eq(1).click();
	}, 3000);

	/* 여행지 선택 */
    $(".hotel_location").hide();
	
	$(document).ready(function(){
	    $("#h_address").click(function(){
	        $(".hotel_location").show();
	        $(document).mouseup(function(e){
	            if($(".hotel_location").has(e.target).length === 0){
	            	$(".hotel_location").hide();
	            }
	        });
	    });
	}); 
	
	$('.hotel_location .hotel_metro').click(function (event) {
		event.preventDefault();

		const idx = (event.target.id).split('_').reverse()[0];
		const resultDiv = document.querySelector('.hotel_local_' + idx);

		hotelLocalDiv = document.querySelectorAll('.hotel_local > div');
		for(let i = 0; i < hotelLocalDiv.length; i++){
			hotelLocalDiv[i].style.display='none';
		}

		if(resultDiv != null){
			target = event.target.value;
			resultDiv.style.display='inline';
			$('.hotel_local > div').click(function (event) {
				event.preventDefault();
				$('#h_address').val(target + ' ' + event.target.value);
				$(".hotel_location").hide();
			})
		}
	})
	
</script>
<%@ include file="../layout/footer.jsp" %>








