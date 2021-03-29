<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<style>
	.span {
		margin: 0;
    	padding: 0;
	}
	.product-top {
		position: relative;
	    overflow: visible;
	}
	.visual-flex {
		position: sticky;
	    top: 0px;
	}
	.pic {
		height: 47vw;
    	max-height: calc(100vw - 750px);
    	min-height: 600px;
	}
	.product-info {
		position: relative;
    	padding: 88px 90px 60px;
    	background-color: #fff;
	}
	.product-title {
		width: 570px;
   		position: relative;
   		margin-top: 0;
	}
	.product-title .local {
		font-size: 18px;
   		color: #666;
    	font-weight: 700;
	}
	.product-title .name {
	    margin: 10px 0 0;
	    font-size: 32px;
	    font-weight: 700;
	    line-height: 1.4;
    }
    .price-wrap {
    	margin-top: 0;
    	margin: 18px 0 0;
    }
    .price {
    	margin: 18px 0 0;
    }
    .usable {
    	margin: 35px 0 0;
    	font-size: 18px;
    	font-weight: 700;
    }
    .coupon-area {
    	width: 570px;
    	overflow: hidden;
    	margin-top: 40px;
    }
    .coupon-area .btn-download {
	    display: block;
	    width: 100%;
	    height: 70px;
	    background: #f06c5e;
	    border-top-left-radius: 8px;
	    border-top-right-radius: 8px;
	    border-bottom-right-radius: 8px;
	    border-bottom-left-radius: 8px;
	}
	.product-info-detail {
	    background-color: #f7f7f7;
	}
	.inner-section {
	    max-width: 750px;
	    padding: 61px 90px;
	}
	.product-info-detail .tags {
    	margin: 0 0 30px -8px!important;
   	 	word-break: keep-all;
	}
	.rate-wrap {
	    border-top: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    height: 60px;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    color: #666;
	}
	.rate-wrap .order, .rate-wrap .avg {
	    -webkit-box-flex: 1;
	    flex: 1;
	}
    .rate-wrap .order {
	    text-align: right;
	    font-weight: 700;
	}
	.product-detail-container {
		position: relative;
    	background: #fff;
    	z-index: 1;
	}
	.product-detail-menu-wrap {
		height: 70px;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    width: 2000px;
	    z-index: 8;
	}
	.product-detail-menu {
	 	width: 100%;
	    height: 70px;
	    line-height: 70px;
	    background-color: #fff;
	    border-top: 1px solid #ccc;
	    position: absolute;
	    box-shadow: 0 10px 15px rgb(0 0 0 / 3%);
	    z-index: 10;
	}
	.menus {
		position: relative;
	    transition: transform .3s,-webkit-transform .3s;
	    float: left;
	    z-index: 2;
	}
	.menus-right {
	    opacity: 1;
	    position: absolute;
	    bottom: 0;
	    right: -20px;
	    width: 340px;
	    margin-left: 150px;
	    height: 70px;
	    background-color: #f06c5e;
	    overflow: hidden;
	    float: right;
	    transition: opacity .3s;
    }
    .btn-reservation {
	    width: 100%;
	    height: 70px;
	    line-height: 70px;
	    text-align: center;
	}
	.detail-wrap {
		position: relative;
    	overflow: visible;
	}
	.floating-selected-result {
	    bottom: 0;
	    width: 340px;
	    float: right;
	    padding-top: 70px;
	    margin-right: calc(50% - 620px);
	    border-left: 1px solid #ccc;
	    border-right: 1px solid #ccc;
	    z-index: 7;
	}
	.floating-selected-result .wrap {
	    background-color: #fff;
	}
	.floating-selected-result .product-info {
	    padding: 45px 30px;
	    border-bottom: 1px solid #ccc;
	}
	.selected-default {
	    padding: 45px 0;
	    text-align: center;
	}
	.selected-default button {
    	font-weight: 400;
	}
	.choice {
	    background-color: #666;
	}
	.floating-selected-result .amount strong {
	    font-size: 15px;
	}
	.floating-selected-result .amount p {
	    -webkit-box-flex: 1;
	    flex: 1;
	    text-align: right;
	    font-size: 24px;
	    font-weight: 700;
	    color: #f06c5e;
	}
	.btn-order-group {
	    opacity: 1;
	    bottom: 0;
	    right: -20px;
	    width: 340px;
	    margin-left: -1px;
	    height: 70px;
	    background-color: #f06c5e;
	    overflow: hidden;
	    transition: opacity .3s;
	}
	.btn-order-group .inner {
	    display: flex;
	    width: 340px;
	    height: 70px;
	}
	.floating-selected-result .btn-order-group {
	    position: static;
	}
	.btn-order-group button.btn-cart {
	    width: 340px;
	    outline: none;
	    font-weight: 700;
	    font-size: 15px;
	    height: 70px;
	    vertical-align: top;
    }
   .btn-order-group button {
   		background-color: #f06c5e;
	    color: white;
	    border-color: #f06c5e;
	}
	.product-detail-view .product-detail-wrap .point-background {
	    background-color: #f7f7f7;
	}
	.flatpickr-input {
	    -webkit-appearance: none;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #ccc;
	    color: #666;
	    display: inline-block;
	    outline: 0;
	    padding: 0 40px 0 15px;
	    width: 100%;
	    height: 40px;
	    line-height: 40px;
	    font-size: 14px;
	    border-radius: 7px;
	}
</style>

<div class="contents">
	<div class="product-top" style="height: 800px; display: flex;">
		<div class="visual-flex" style="width: 900px; height: 800px; background-color: yellow;">
			<div class="pic">
			
			</div>
		</div>
		<div class="infoFlex" style="width: 650px; height: 100%; background-color: yellowgreen;">
			<div class="productInfoWrap">
				<div class="product-info">
					<div class="product-title">
						<p class="local">${dto.local_idx}</p>
						<h1 class="name">${dto.name}</h1>
						<div class="price-wrap">
							<span class="price">${dto.price }</span>
							<div class="usable">2021년 3월 ${dto.usable + 5 }일 부터 사용가능</div>
						</div>
					</div>
					<div class="coupon-area">
						<button class="btn-download">
							<b>할인쿠폰 확인하기</b>
						</button>
					</div>
				</div>
				<div class="product-info-detail">
					<div class="inner-section">
						<div class="hashtag">
							${dto.hashtag }
						</div>
						<div class="rate-wrap">
							<div class="avg"></div>
							<div class="order">
								<span>${dto.sold_cnt }</span>
								<span>${dto.view_cnt }</span>
							</div>
						</div>
						<div class="features">
							<ul>
								<li>
									<span>협력사 자체 취소규정</span>
								</li>
								<li>
									<span>6시간이내 가능여부 안내</span>
								</li>
								<li>
									<span>즉시사용불가</span>
								</li>
								<li>
									<span>지정일사용</span>
								</li>
								<li>
									<span>이바우처 (모바일 바로사용)</span>
								</li>
							</ul>
						</div>
					<div class="notice">
						<div class="read">
							<div class="title"><h2>꼭 읽어보세요!</h2></div>
								<div class="dot-list">
									<p>
										추억과 낭만이 있는 강촌!
										<br>
										서정적이면서 톡톡 튀는 분위기를 연출하는 김유정역 북월 광장
										<br>
										각기각색의 테마가 있는 터널과 아름다운 북한강 절경을 즐길 수 있는 국내 최대 규모의 레일바이크 코스를 만나보세요.
										<br>
										<span style="background-color:#7ED2FF">
										<b>지정된 날짜 외에는 사용이 불가하며, 강촌레일파크 예약번호가 기재된 하나투어 바우처를 현장 티켓 오피스에서 실물 티켓으로 교환해야합니다.</b>
										</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="product-detail-container">
		<div class="detail-wrap">
			<section class="floating-selected-result" style="position: sticky; top: 0px;">
				<div class="wrap" style="height: 747px;">
					<div class="product-info">
						<div class="product-title">
							<p class="local">${dto.local_idx }</p>
							<h1 class="name">${dto.name }</h1>
							<div class="price-wrap">
								<span class="price">${dto.price }</span>
								<div class="usable">2021년 3월 ${dto.usable + 5 }일 부터 사용가능</div>
							</div>
						</div>
					</div>
					<div class="selected-products-wrap">
						<div class="selected-default">
							<p>
								상품패키지와 상품옵션을
								<br>
								선택해주세요
							</p>
							<button type="button" class="choice">
								<span>선택하기</span>
							</button>
						</div>
					</div>
				</div>
			<hr>
			<div>
				<div class="amount">
					<strong>총 결제 금액</strong>
					<p>${dto.price }원</p>
				</div>
				<div class="btn-order-group">
					<div class="inner">
						<button class="btn-cart"><h2>바로 예약하기</h2></button>
					</div>
				</div>
			</div>
			</section>		
			<div class="product-detail-wrap" style="position: relative; width: 835px; margin-left: 350px;">
				<div class="product-detail-menu-wrap">
					<div class="product-detail-menu">
						<div class="menus">
							<div class="menus-left">
								<span>상품타입 *</span>
								<span>상품정보 *</span>
								<span>상품문의 *</span>
								<span>리뷰 0</span>
							</div>
							
						</div>
					</div>
				</div>
					<div class="point-background">
						<div class="inner-wrap clear-margin">
							<div class="left-content">
								<section class="section-typeinfo">
									<h2 class="section-title">상품타입</h2>
									<div class="useday">
										<input type="text" class="flactpickr-input" data-input="input" placeholder="사용일" readonly="readonly">
									</div>	
									<button type="button" class="searchBtn" style="margin: 20px;">
										검색하기
									</button>						
								</section>
							</div>
						</div>
					</div>
					<div class="inner-wrap">
						<div class="left-content">
							<section class="content">
								<h2>기본정보</h2>
								<div>${dto.content }</div>
								<div>${dto.head_img }</div>
							</section>
							<section class="how_to">
								<h2>사용방법</h2>
								<div>${dto.how_to }</div>
							</section>
							<section class="matter">
								<h2>유의사항</h2>
								<div>${dto.matter }</div>
							</section>
							<section class="refund_rule">
								<h2>취소 및 환불규정</h2>
								<div>${dto.refund_rule }</div>
							</section>
						</div>
					</div>
					<div class="point-background">
						<div class="left-content">
							<section>
								<h2>판매자 정보</h2>
								<div>${dto.entrepreneur_idx }</div>
							</section>
						</div>
					</div>
					<div class="inner-wrap">
						<div class="left-content">
							<div class="inquiry-list">
								<div class="list-header">
									<div class="inner">
										<h2>상품문의</h2>
										<div>${dto.notice }</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
			</div>			
		</div>
	</div>
</div>
<%@ include file="../layout/footer.jsp" %>