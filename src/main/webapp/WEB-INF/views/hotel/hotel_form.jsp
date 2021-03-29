<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<style>
/* 소영 */

.hotel_wrap {
   width: 100%;
   float: left;
   background-color: lightpink;
}

.hotel_wrap_in {
   margin: 0 auto;   
   width: 1200px;
}

.hotel_wrap_in > section {
   height: 500px;
   background-color: lightblue;
   border-bottom: 1px solid black;
}

.hotel_wrap_in > section > h1 {
   float: left;
}

.hotel_slide {
   width: 100%;
   height: 600px;
}

.hotel_search {
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

.hotel_search > div{
   position: relative;
    float: left;
    display: inline-block;   
    justify-content: center;
    margin-right: 20px;
}

.hotel_search > div > input {
   margin-left: 10px;
}

.visual_wrap {
    position: relative;
    height: 600px;
    margin-bottom: 0;
    padding: 0;
    z-index: 15;
}

.hotel_map {
   width:900px;
   height:840px;
}
</style>

<div class="hotel_wrap">
   <div class="visual_wrap">
      <form method="POST" class="hotel_search">
         <div><input type="text" name="address" placeholder="어디로 떠나세요?"></div>
         <div style="z-index: 99;">
            <span>
               CheckIn<input autocomplete="off" type="text" id="from" style="margin-left: 10px"> ~ 
               CheckOut<input autocomplete="off" type="text" id="to" style="margin-left: 10px">
            </span>
         </div>
         <div><input type="text"></div>
         <div><input type="submit" value="숙소 검색"></div>
      </form>
      <div class="hotel_slide">
         <img src="${cpath }/resources/img/hotel1.jpg">
         <img src="">
         <img src="">
         <img src="">
      </div>
   </div>
   
   <div class="hotel_location">
		<ul class="hotel_metro">
			<c:forEach var="metro" items="${metroList }">
				<li>
					<a id="hotel_metro_name" href="">${metro.name }</a>
				</li>
			</c:forEach>
		</ul>
	</div>
   
   <div class="hotel_wrap_in">
      <section><h1>고객님을 위한 추천 숙소</h1></section>
      <section><h1>믿고 예약하는 이달의 혜택 호텔</h1></section>
      <section><h1>국내 최고의 프리미엄 호텔</h1></section>
      <section></section>
      <section></section>
   </div>
</div>
<script>

   var now = new Date();
   document.getElementById('from').value = now.toISOString().substring(0, 10);

   var tomorrow = new Date(now.setDate(now.getDate() + 1));   // 내일
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
            var option = this.id == "from" ? "minDate"
                  : "maxDate", instance = $(this).data(
                  "datepicker"), date = $.datepicker
                  .parseDate(
                        instance.settings.dateFormat
                              || $.datepicker._defaults.dateFormat,
                        selectedDate, instance.settings);
            dates.not(this).datepicker("option", option,
                  date);
         }
      });
   });
</script>
<%@ include file="../layout/footer.jsp" %>