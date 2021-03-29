<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>


    <div class="content" style="float: left; width: 500px">
      
      <c:choose>
        	<c:when test="${login.userkind == '4' }">
      		 	<h1>관리자 전용</h1>
      		 	 관리자 전용 페이지 입니다. <p>기업회원등록 및 관리자 목록/ 회원탈퇴 정보 등을 볼수 있습니다.
      		</c:when>
			
        	<c:when test="${login.userkind == '3' }">
				<h1>투어관리자 전용</h1>
				투어 관리자 전용 페이지입니다.
      		</c:when>
      		
      		<c:when test="${login.userkind == '2' }">
				<h1>호텔관리자 전용</h1>
				호텔 관리자 전용 페이지입니다.
      		</c:when>
      		
      		<c:when test="${login.userkind == '1' }">
				<h1>기업회원 전용</h1>
				기업 회원 전용 페이지입니다.
      		</c:when>
      		
      		<c:when test="${login.userkind == '0' }">
				<h1>일반회원 전용</h1>
				일반회원 전용 페이지입니다.
      		</c:when>
			
		</c:choose>
	</div>
    </div>
 </div>
</div>



<%@ include file="../layout/footer.jsp" %>