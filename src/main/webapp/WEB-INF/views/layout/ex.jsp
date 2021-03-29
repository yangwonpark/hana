<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 조 프로젝트</title>
<link rel="stylesheet" href="${cpath }/css/style.css">
</head>
<body>
	<div id="main">
		<div id="wrapper">
			<div id="screenArea">
				<div id="wrap">
					<div id="nav_wrap">
						<div id="nav1">
							<div id="global_menu">
								<ul>
									<li><a class="nav_a" href="${cpath }/login/login_form">로그인</a></li>
									<li><a class="nav_a" href="${cpath }/member/join_form">회원가입</a></li>
									<li><a class="nav_a" href="${cpath }/manage/sc">고객센터</a></li>
								</ul>
							</div>
						</div>
						<div id="nav2">
							<div id="local_menu">
								<div id="fl">
									<div style="width: 30%;">
										<h1>로고</h1>
									</div>
									<div id="search_form">
										<form method="GET">
											<input placeholder="검색어를 입력해 주세요">
										</form>
										<div></div>
										<div></div>
									</div>
									<div></div>
								</div>
							</div>
						</div>
						<div id="nav3"></div>
						<div id="right_fixed"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	