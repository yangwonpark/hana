<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
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
		<div class="hotel_visual_list">
			
		</div>
		<!-- 슬라이드 속 메뉴바 end -->
		
	</div>
	<!-- hotel_visual_wrap end -->

	<!-- 숙소정보view -->
	<div class="hotel_wrap_in">
		<section><h1>고객님을 위한 추천 숙소</h1></section>
		<section><h1>믿고 예약하는 이달의 혜택 호텔</h1></section>
		<section><h1>국내 최고의 프리미엄 호텔</h1></section>
		<section></section>
		<section></section>
	</div>
</div>


<script>

	/* 체크인 체크아웃 날짜 */
	var now = new Date();
	document.getElementById('from').value = now.toISOString().substring(0, 10);

	var tomorrow = new Date(now.setDate(now.getDate() + 1));	// 내일
	document.getElementById('to').value = tomorrow.toISOString().substring(0, 10);
	
	$(function() {
		var dates = $("#from, #to ").datepicker({
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
					'7월', '8월', '9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월',
					'6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			dateFormat : 'yy-mm-dd',
			showMonthAfterYear : true,
			yearSuffix : '년',
			maxDate : '+30d',
			onSelect : function(selectedDate) {
				var option = this.id == "from" ? "minDate" : "maxDate", 
						instance = $(this).data("datepicker"), 
						date = $.datepicker.parseDate(
								instance.settings.dateFormat || $.datepicker._defaults.dateFormat,
								selectedDate, instance.settings);
				dates.not(this).datepicker("option", option, date);
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
			console.log(target);
			resultDiv.style.display='inline';
			$('.hotel_local > div').click(function (event) {
				event.preventDefault();
				console.log(idx);
				console.log(target);
				$('#h_address').val(target + ' ' + event.target.value);
				$(".hotel_location").hide();
			})
		}
	})
	
</script>
<%@ include file="../layout/footer.jsp" %>








