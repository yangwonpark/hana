<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="hotel_wrap_in">
	<!-- 여행지 / 날짜 / 인원  => 숙소검색 -->
	<div style="height: 150px;">
		<form method="POST" class="hotel_search" style="bottom: inherit; margin-top: 50px;">
			<!-- 지역선택 -->
			<div class="hotel_address">
				<input autocomplete="off" type="text" name="h_address" id="h_address" value="${searchInfo.getH_address() }" required>
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
			<div style="z-index: 5;">
				<input autocomplete="off" type="text" name="from" id="from" style="margin-left: 10px"> ~ 
				<input autocomplete="off" type="text" name="to" id="to" style="margin-left: 10px">
			</div>
			<!-- 기간선택 end -->
			
			<!-- 인원수 선택 -->
			<div>
				<input style="width: 100px" type="number" min="1" value="${searchInfo.getAdult() }">
				<input style="width: 100px" type="number" min="0" value="${searchInfo.getKids() }">
			</div>
			<!-- 인원수 선택 end -->
	
			<div><input type="submit" value="숙소 검색"></div>
		</form>
	</div>
	<div style="height: 1200px; display: flex;">
		<div style="width: 300px; height: 1100px;">
			<div style="width: 250px; height: 100px; margin-left: 20px">
				<h3 style="font-family: Lucida Bright;">결과 내 검색</h3>
				<div style="display: flex;">
					<input style="width: 200px; height: 50px; font-size: 15pt; border: none;" 
							type="text" placeholder="호텔이름으로 검색해보기">
					<button style="width: 50px; height: 50px; border: none;" 
							type="submit">검색</button>
				</div>
			</div>
			<div style="width:300px; height: 1000px;" id="hotel_filter" >
				<div style="width: 250px; margin-left: 20px;">
					<h3><a style="font-family: Lucida Bright;" href="#" id="hotel_filter_1">가격</a></h3>
					<div style="width: 250px; height: 120px; display: none;"
							id="hotel_filter_1_in">
					</div>
				</div>
				<div style="width: 250px; margin-left: 20px">
					<h3><a style="font-family: Lucida Bright;" href="#" id="hotel_filter_2" >숙소평점</a></h3>
					<div style="width: 250px; height: 120px; display: none;"
							id="hotel_filter_2_in">
					</div>
				</div>
				<div style="width: 250px; margin-left: 20px">
					<h3><a style="font-family: Lucida Bright;" href="#" id="hotel_filter_3" >숙소등급</a></h3>
					<div style="width: 250px; height: 120px; display: none;"
							id="hotel_filter_3_in">
					</div>
				</div>
				<div style="width: 250px; margin-left: 20px">
					<h3><a style="font-family: Lucida Bright;" href="#" id="hotel_filter_4" >숙소 부대시설</a></h3>
					<div style="width: 250px; display: none;"
							id="hotel_filter_4_in">
						<c:forEach var="add_category" items="${add_categoryList}">
							<button style="margin-top: 5px; background-color: white; border: none; font-family: 나눔 고딕;">
								${add_category.name }
							</button>
						</c:forEach>
					</div>
				</div>
				<div style="width: 250px; margin-left: 20px">
					<h3><a style="font-family: Lucida Bright;" href="#" id="hotel_filter_5" >객실 편의시설</a></h3>
					<div style="width: 250px; display: none;"
							id="hotel_filter_5_in">
						<c:forEach var="con_category" items="${con_categoryList}">
							<button style="margin-top: 5px; background-color: white; border: none; font-family: 나눔 고딕;">
								${con_category.name }
							</button>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<c:set var="metro_name">${searchInfo.getH_address().split(" ")[0] }</c:set>
		<c:set var="local_name">${searchInfo.getH_address().split(" ")[1] }</c:set>
		<div style="width: 900px; height: 1100px; overflow: hidden; overflow-y: auto;">
			<c:if test="${empty entrepreneurList}">
				<h3 style="font-family: Lucida Bright; color: gray;">현재 예약가능한 숙소를 찾을 수 없습니다.</h3>
			</c:if>
			<c:forEach var="entrepreneur" items="${entrepreneurList }">
				<c:forEach var="hotel" items="${hotelList }">
					<c:if test="${hotel.entrepreneur_idx eq entrepreneur.idx }">
						<div style="width: 900px; height: 250px; border-bottom: 1px solid lightgray; 
									display: flex; margin-bottom: 10px; padding: 20px;">
							<img style="margin-right: 20px; width: 280px; height: 210px" 
								src="${cpath }${hotel.main_img}">
							<div style="width: 400px; height: 210px; background-color: white;">
								<div style="display: flex;">
									<h3 style="font-family: Lucida Bright; margin-right: 10px;">${entrepreneur.shop_name }</h3>
									<h4 style="font-family: Lucida Bright;">${hotel.grade }</h4>
								</div>
								<h5 style="font-family: Lucida Bright; margin: 0 auto; color: gray;">${entrepreneur.shop_eng }</h5>
								<div style="display: flex;">
									<h5><img width="20px" height="30px" src="${cpath }/resources/img/위치.png"></h5>
									<h5 style="font-family: Lucida Bright; padding-top: 7px;">${entrepreneur.sales_loc }</h5>
								</div>
								<br>
							</div>
							<div style="width: 200px; height: 210px;">
								<div style="height: 105px; padding-top: 20%">
									<form style="text-align: center; vertical-align: middle;">
										<input type="button" value="장바구니"
											style="width: 100px; height:50px; font-family: Lucida Bright;
											background-color:white; border: 1px solid black; border-radius: 5px;">
									</form>
								</div>
								<div style="height: 105px;">
									<form action="hotelSelectOne" method="POST"
										style="text-align: center; vertical-align: middle;">
										<input type="hidden" name="entrepreneur_idx" value="${entrepreneur.idx}">
										<input type="hidden" name="hotel_idx" value="${hotel.idx }">
										<input type="hidden" name="h_address" value="${searchInfo.getH_address() }">
										<input type="hidden" name="from" value="${searchInfo.getFrom() }">
										<input type="hidden" name="to" value="${searchInfo.getTo() }">
										<input type="hidden" name="adult" value="${searchInfo.getAdult() }">
										<input type="hidden" name="kids" value="${searchInfo.getKids() }">
										<input type="submit"  value="상세보기"
											style="width: 100px; height:50px; font-family: Lucida Bright; color:#f22c78; 
											background-color:white; border: 1px solid #f22c78; border-radius: 5px;">
									</form>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</c:forEach>
		</div>
	</div>
</div>

<script>

	/* 체크인 체크아웃 날짜 */
	document.getElementById('from').value = '${searchInfo.getFrom()}';
	document.getElementById('to').value = '${searchInfo.getTo()}';
	
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
            minDate: document.getElementById('from').value + 1,
            maxDate: 30,
            onClose: function( selectedDate ) {
                // 종료일(to) datepicker가 닫힐때
                // 시작일(from)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                $("#from").datepicker( "option", "maxDate", selectedDate);
            }                
        });
     
    });
	
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
	
		hotelLocalDiv = document.querySelectorAll('.hotel_local > div');
		const idx = (event.target.id).split('_').reverse()[0];
		
		const resultDiv = document.querySelector('.hotel_local_' + idx);
	
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
	
	/* 필터 보이기 */
    $("#hotel_filter > div").click(function(){
    	event.preventDefault();
    	const idx = (event.target.id).split('_').reverse()[0];
    	resultDiv = document.getElementById('hotel_filter_' + idx + '_in');
    	
    	if(resultDiv.style.display=="block"){
    		resultDiv.style.display = "none"; 
    	}
        else{ 
        	resultDiv.style.display = "block"; 
        }
    });
</script>

<%@ include file="../layout/footer.jsp" %>