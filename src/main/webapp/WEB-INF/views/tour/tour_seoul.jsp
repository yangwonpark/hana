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
.filter-title {
	position: relative;
    padding: 24px 0 26px;
    font-size: 20px;
    border-bottom: 1px solid #999;
}
.el-menu {
    border-right: 0;
    border-bottom: 1px solid #999;
}
</style>

<div class="tour_wrap">
<br><br><br>
	<div class="tour_wrap_pic">
		<div class="img">
			<img src="${cpath }/resources/img/서울1.png" style="width:100%">
		</div>
		<div class="text">
			<p>
				서울
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
					<li class="link-list-item"><a href="#">편의서비스</a></li>
				</ul>
			</div>
		</div>
		<div style="height: 800px; display: flex;">
			<div style="width: 300px; height: 800px; background-color: yellow;">
				<div class="app-category">
					<div class="filter-title">
						<p>CATEGORY</p>
					</div>
					<div>
						<ul role="menubar" class="el-menu">
							<li role="menuitem" data-title="전체">
								<div style="padding-left:20px; color:; background-color:;">
									전체
								</div>
							</li>
						</ul>
						<ul role="menubar" class="el-menu">
							<li role="menuitem" data-title="투어&액티비티">
								<div style="padding-left:20px; color:; background-color:;">
									투어&액티비티
								</div>
							</li>
						</ul>
						<ul role="menubar" class="el-menu">
							<li role="menuitem" data-title="입장권&교통패스">
								<div style="padding-left:20px; color:; background-color:;">
									입장권&교통패스
								</div>
							</li>
						</ul>
						<ul role="menubar" class="el-menu">
							<li role="menuitem" data-title="편의서비스">
								<div style="padding-left:20px; color:; background-color:;">
									편의서비스
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div style="width: 900px; height: 800px; background-color: yellowgreen; overflow-y: scroll;"></div>
		</div>
	</div>
</div>

<%@ include file="../layout/footer.jsp" %>