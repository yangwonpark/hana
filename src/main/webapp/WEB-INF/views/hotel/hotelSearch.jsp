<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="hotel_wrap_in">
	<!-- 여행지 / 날짜 / 인원  => 숙소검색 -->
	<div style="height: 150px;nb">
		<form method="POST" class="hotel_search" style="bottom: inherit; margin-top: 50px;">
			<!-- 지역선택 -->
			<div class="hotel_address">
				<input type="button" name="h_address" id="h_address" value="${searchInfo.getH_address() }">
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
				<input style="width: 100px" type="number" min="2" value="${searchInfo.getAdult() }">
				<input style="width: 100px" type="number" min="0" value="${searchInfo.getKids() }">
			</div>
			<!-- 인원수 선택 end -->
	
			<div><input type="submit" value="숙소 검색"></div>
		</form>
	</div>
	<div style="height: 800px; display: flex;">
		<div style="width: 300px; height: 800px; background-color: lightpink;"></div>
		<div style="width: 900px; height: 800px;background-color: lightblue; overflow-y: scroll;"></div>
	</div>
</div>

<script>

	/* 체크인 체크아웃 날짜 */
	document.getElementById('from').value = '${searchInfo.getFrom()}';
	document.getElementById('to').value = '${searchInfo.getTo()}';
	
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
				dates.not(this).datepicker("option", option,
						date);
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