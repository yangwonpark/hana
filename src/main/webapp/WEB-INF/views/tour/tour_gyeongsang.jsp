<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<style>
.tour_wrap {
   width: 100%;
   float: left;
}
.tour_wrap_pic {
	position: relative;
    height: 600px;
    margin-bottom: 0;
    padding: 0;
    z-index: 15;
    display: flex;
	justify-content: center;
}
.img, .text {
      position: absolute;
      /* border: 5px solid red; */
}
.text {
      color: black;
      font-size: 50pt;
      font-weight: bold;
      z-index: 3;
}
.img {
      z-index: 2;
}
.tour_wrap_in {
	margin: 0 auto;	
	width: 1200px;
}
.quick-link {
	position: sticky;
    top: 0px;
    width: 100%;
    background-color: #fff;
    z-index: 8;
    box-shadow: 0 0 20px rgb(0 0 0 / 10%);
}
.link-list {
	text-align: center;
}
.link-list-item {
	position: relative;
    display: inline-block;
}
.link-list-item a {
	display: inline-block;
    height: 70px;
    line-height: 70px;
    padding: 0 20px;
    font-size: 20px;
    font-weight: 700;
    color: #666;
}
</style>

<div class="tour_wrap">
<br><br><br>
	<div class="tour_wrap_pic">
		<div class="img">
			<img src="${cpath }/resources/img/경상1.jpg" style="width:100%">
		</div>
		<div class="text">
			<p>
				경상
			</p>
		</div>
	</div>
	<div class="tour_wrap_in">
		<div style="height: 100px; border-bottom: 1px solid black;">
			<div class="quick-link">
				<ul class="link-list">
					<li class="link-list-item"><a href="#">전체</a> * </li>
					<li class="link-list-item"><a href="#">투어&액티비티</a> * </li>
					<li class="link-list-item"><a href="#">입장권&교통패스</a> * </li>
					<li class="link-list-item"><a href="#">살아보기</a> * </li>
					<li class="link-list-item"><a href="#">페리/유람선/크루즈</a> * </li>
					<li class="link-list-item"><a href="#">농어촌체험</a></li>
				</ul>
			</div>
		</div>
		<div style="height: 1200px; display: flex;">
		<div style="width: 300px; height: 1100px;">
			<div style="width: 250px; height: 25px; margin-left: 20px">
				<h3>CATEGORY</h3>
			</div>
			<hr>
			<div style="width:300px; height: 800px;" id="hotel_filter" >
				<div style="width: 250px; margin-left: 20px;">
					<h3><a href="#" id="tour_gyeongsang_filter_0">전체</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_0_in">
					</div>
				</div>
				<hr>	
				<div style="width: 250px; margin-left: 20px;">
					<h3><a href="#" id="tour_gyeongsang_filter_1">투어&액티비티</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_1_in">
					</div>
				</div>
				<hr>
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gyeongsang_filter_2" >입장권&교통패스</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_2_in">
					</div>
				</div>
				<hr>
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gyeongsang_filter_3" >살아보기</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_3_in">
					</div>
				</div>
				<hr>
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gyeongsang_filter_4" >페리/유람선/크루즈</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_4_in">
					</div>
				</div>
				<hr>
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gyeongsang_filter_5" >농어촌체험</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gyeongsang_filter_5_in">
					</div>
				</div>
				<hr>
			</div>
		</div>
			<div style="width: 900px; height: 800px; background-color: yellowgreen; overflow-y: scroll;"></div>
		</div>
	</div>
</div>

<%@ include file="../layout/footer.jsp" %>