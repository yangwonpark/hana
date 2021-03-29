<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
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
.app-list-header {
	display: flex;
    -webkit-box-align: center;
    align-items: center;
    position: relative;
    height: 110px;
    margin-bottom: 30px;
    padding: 35px 0 34px;
    border-bottom: 1px solid #999;
}
#tourList{
	border-collapse: collapse; 
/* 	margin: 30px auto 30px auto; */
	width: 880px;
	min-width: 800px;
	height: 250px;
}
#tourList tr {
	border-bottom: 1px solid #dadada;
	height: 35px;
}
#tourList tr:hover {
	cursor: default;
}
#tourList thead > tr {
	background-color: white;	
	color: black;
	font-weight: bold;
}
#tourList tbody td {
	text-align: center;
}
#tourList tbody > tr:hover {
	background-color: #dadada;
}
#tourList tbody .head_img {
	width: 30%;
}
#tourList tbody .name {
	width: 30%;
	text-align: left;
	padding-left: 20px;
	font-weight: bold;
}
#tourList tbody .name > a {
	text-decoration: none;
	color: inherit;
	font-weight: bold;
	display: block;
}
#tourList tbody .name > a:hover {
	cursor: pointer;
}
#tourList tbody .price {
	width: 20%;
}
#tourList tbody .count {
	width: 20%;
}
#tourList tbody .current {
	background-color: #eaeaea;
}
.paging {
	margin: 10px auto;
}
.paging a {
	display: block;
	margin: 5px;
}
.write textarea {
	width: 100%;
	height: 400px;
	border: 0;
}
div.vbox {
	display: flex;
	flex-flow: column;
	justify-content: center;
	align-items: center;
}
div.hbox {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}
.w1200 {
	width: 1200px;
}
.h500 {
	min-height: 500px;
}
div.sb {
	justify-content: space-between;
}
div.fs {
	justify-content: flex-start;
}
div.fe {
	justify-content: flex-end;
}
div.boda {
	border: 1px solid #dadada;
	padding: 10px;
	width: 1180px;
	margin: 5px;
}
input[type="text"],
input[type="password"], 
select, 
textarea {
	all: unset;
	padding: 5px;
	border-bottom: 2px solid black;
}
select {
	border: 2px solid black;
}
.btn {
	background-color: #dadada;
	color: black;
	font-weight: bold;
	cursor: pointer;
	padding: 10px;
	border: 0;
}
.btn:hover {
	background-color: black;
	color: white;
}
h2 {
	text-align: center;
}
label {
	margin: 5px;
}
</style>

<div class="tour_wrap">
<br><br><br>
	<div class="tour_wrap_pic">
		<div class="img">
			<img src="${cpath }/resources/img/강원1.jpg" style="width:100%">
		</div>
		<div class="text">
			<p>
				강원
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
					<li class="link-list-item"><a href="#">살아보기</a></li>
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
					<h3><a href="#" id="tour_gangwon_filter_0">전체</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gangwon_filter_0_in">
					</div>
				</div>
				<hr>	
				<div style="width: 250px; margin-left: 20px;">
					<h3><a href="#" id="tour_gangwon_filter_1">투어&액티비티</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gangwon_filter_1_in">
					</div>
				</div>
				<hr>
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gangwon_filter_2" >입장권&교통패스</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gangwon_filter_2_in">
					</div>
				</div>
				<hr>				
				<div style="width: 250px; margin-left: 20px">
					<h3><a href="#" id="tour_gangwon_filter_3" >살아보기</a></h3>
					<div style="width: 250px; height: 120px; background-color: #F2F2F2; display: none;"
							id="tour_gangwon_filter_3_in">
					</div>
				</div>
				<hr>
			</div>
		</div>
			<div style="width: 900px; height: 2000px; background-color: #eaeaea; overflow-y: scroll;">
				<div class="app-list-header">
					<div class="title" style="width: 900px;">
						<span>전체</span> (${tour_item.idx })
						<select name="type" style="height: 30px;">
							<option value="best" selected>추천순</option>
							<option value="popular">인기순</option>
							<option value="new">신규 상품순</option>
							<option value="low">가격 낮은 순</option>
							<option value="high">가격 높은 순</option>
						</select>
					</div>
				</div>
				<table id="tourList">
					<thead>
						<tr>
							<th class="head_img">사진</th>
							<th class="name">상품명</th>
							<th class="price">가격</th>
							<th class="count">구매/조회수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="tour_item" items="${map.list }">
						<tr class="${param.idx == tour_item.idx ? 'current' : ''} ">
							<td class="head_img">
								<img style="margin-right: 20px; width: 280px; height: 210px" 
								src="${cpath }${tour_item.head_img}">
							</td>
							<td class="name">
								<a href="${cpath }/tour/tourGoods/${tour_item.idx}">
								${tour_item.name }
								</a>
							</td>
							<td class="price">${tour_price.price }</td>
							<td class="count">
								<div>구매 : ${tour_item.sold_cnt }</div>
								<div>조회 : ${tour_item.view_cnt }</div>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="hbox paging">
					<c:if test="${map.paging.prev }">
						<a href="${cpath }/tour_gangwon/${map.paging.begin - 1}?type=${param.type}&word=${param.word}">◀</a>
					</c:if>
				</div>
				<c:forEach begin="${map.paging.begin }" end="${map.paging.end }" var="i">
					<a href="${cpath }/tour_gangwon/${i}?type=${param.type}&word=${param.word}">
					${i == map.paging.page ? '<strong>' : '' }
						[${i }]
					${i == map.paging.page ? '</strong>' : '' }
					</a>
				</c:forEach>
				<c:if test="${map.paging.next }">
					<a href="${cpath }/tour_gangwon/${map.paging.end + 1}?type=${param.type}&word=${param.word}">▶</a>
				</c:if>
				<c:choose>
					<c:when test="${login.userkind == '3' }">
						<a href="${cpath }/tour/tourInput"><button class="btn">입력하기</button></a>
					</c:when>
					<c:otherwise>
						투어 판매자만 입력이 가능합니다.
					</c:otherwise>	
				</c:choose>	
			</div>
		</div>		
</main>