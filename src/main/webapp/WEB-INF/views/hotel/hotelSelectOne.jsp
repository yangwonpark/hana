<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div align="center">
	<div style="width: 1200px; height: 150px;">
		
	</div>
	<div style="width: 1200px; height: 550px; border-bottom: 2px solid black; border-top: 2px solid black; 
				display: flex; padding-top: 25px;">
		<div style="width: 750px; height: 500px;">
			<img width="700px" height="500px" src="${cpath }/resources/hotelimg/hotel10.jpg">
		</div>
		<div style="width: 450px; height: 500px; text-align: left;">
			<div style="display: flex;">
				<h4 style="font-family: 맑은 고딕; color: #8173b8; font-size: 13px; margin-left: 10px;">
					${hotelKind }
				</h4>
				<h4 style="font-family: 맑은 고딕; color: gray; font-size: 13px; margin-left: 10px;">
					${hdto.grade }
				</h4>
			</div>
			<ul style="list-style: none; padding-left: 10px;">
				<li>
					<h2 style="font-family: 맑은 고딕;">
						${edto.shop_name }
					</h2>
				</li>
				<li>
					<h4 style="font-family: Lucida Bright; color: gray;">
						${edto.shop_eng }
					</h4>
				</li>
				<li>
					<a style="font-family: 맑은 고딕; color: #974df4; font-size: 13px; 
							border: 1px solid #974df4; padding: 2px;">
						${edto.sales_loc.split(" ")[0] }(${edto.sales_loc.split(" ")[1]})에 위치
					</a>
				</li>
			</ul>
			<div style="display: flex; justify-content: space-between; margin-top: 100px;">
				<ul style="list-style: none; padding-left: 10px">
					<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
						1박 요금 최저가
					</li>
					<li style="font-family: 맑은 고딕; color: gray; font-size: 13px;">
						세금,봉사료 포함
					</li>
				</ul>
				<ul style="list-style: none; padding-left: 10px">
					<li style="margin-bottom: 5px;">
						<strong style="font-family: 맑은 고딕; font-size: 30px;">
							원~
						</strong>
					</li>
				</ul>
			</div>
			<form style="text-align: right; margin-top: 20px;">
				<input type="button" value="장바구니"
					style="width: 100px; height:50px; font-family: Lucida Bright;
					background-color:white; border: 1px solid black; border-radius: 5px;">
			</form>
		</div>
	</div>
	<div style="width: 1200px; height: 300px; border-bottom: 2px solid black; padding-top: 25px; text-align: left;">
		<h3 style="font-family: 맑은 고딕; margin-left: 20px;">
			숙소정보
		</h3>
		<ul style="list-style: circle; text-align: left;">
			<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
				${edto.sales_loc }
			</li>
			<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
				체크인 ${hdto.check_in },체크아웃 ${hdto.check_out }
			</li>
			<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
				${hdto.floor }/${hdto.room_count }
			</li>
			<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
				${hdto.pnum }
			</li>
			<li style="font-family: 맑은 고딕; margin-bottom: 5px;">
				${hdto.fax }
			</li>
		</ul>
	</div>
	<!-- <div style="width: 1200px; height: 500px; border-bottom: 2px solid black;">
	</div> -->
	<div style="width: 1200px; height: 1000px; padding-top: 25px;">
		<%-- <div style="width: 1200px; height: 400px; background-color: #f5f5f5; display: flex;">
			<img width="600px" src="${cpath }${hdto.main_img }">
			<ul style="list-style: none;">
				<li>
					<h2 style="font-family: 맑은 고딕;">
						${edto.shop_name }
					</h2>
				</li>
				<li>
					<h4 style="font-family: Lucida Bright; color: gray;">
						${edto.shop_eng }
					</h4>
				</li>
			</ul>
		</div> --%>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: 맑은 고딕; width: 200px; text-align: left; line-height: 101px;">
				숙소정보
			</h3>
			<p style="font-family: 맑은 고딕; width: 1000px; text-align: left;">
				${hdto.notice }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: 맑은 고딕; width: 200px; text-align: left; line-height: 101px;">
				객실
			</h3>
			<p style="font-family: 맑은 고딕; width: 1000px; text-align: left; ">
				${hdto.room }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: 맑은 고딕; width: 200px; text-align: left; line-height: 101px;">
				편의시설
			</h3>
			<p style="font-family: 맑은 고딕; width: 1000px; text-align: left;">
				${hdto.con_facility }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: 맑은 고딕; width: 200px; text-align: left; line-height: 101px;">
				다이닝
			</h3>
			<p style="font-family: 맑은 고딕; width: 1000px; text-align: left;">
				${hdto.dining }
			</p>
		</div>
		<div style="display: flex; width: 1200px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: 맑은 고딕; width: 200px; text-align: left; line-height: 101px;">
				숙소 부대시설
			</h3>
			<ul style="list-style: none; width: 100%; text-align: left;">
				<c:forEach var="add_facility" items="${add_facilityArr }">
					<li style="font-family: 맑은 고딕; ">
						<img width="40px" height="40px" src="${cpath }/resources/hotelFacilitiesImg/${add_facility}.png">
						${add_facility}
					</li>
				</c:forEach>
			</ul>
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