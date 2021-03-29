<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width:80%; margin:0px auto; margin-top: 70px; text-align:center;">
 <div style="overflow:hidden; text-align: center;">
    <div style="float: left; width: 30%; margin-right:50px;">
      <ul style="list-style: none; margin:0; padding:10px 0;">
        

        <c:choose>
        	<c:when test="${login.userkind == '4' }">
		        <li style="font-size: 30px; 4px 0; margin-bottom: 40px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">관리자용</a></li>
				<hr width="200px">
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_company" style="display:block;text-decoration: none;padding: 4px 10px;">회사 등록(기업회원용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_adminlist" style="display:block;text-decoration: none;padding: 4px 10px;">관리자 목록(관리자용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_notice" style="display:block;text-decoration: none;padding: 4px 10px;">공지사항 등록(관리자용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_teamlist" style="display:block;text-decoration: none;padding: 4px 10px;">부서 목록(관리자용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_outmemberlist" style="display:block;text-decoration: none;padding: 4px 10px;">탈퇴 회원 목록(관리자용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/admin_outmemberreason" style="display:block;text-decoration: none;padding: 4px 10px;">탈퇴 사유 목록(관리자용)</a></li><br>
		        
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/myinfo" style="display:block;text-decoration: none;padding: 4px 10px;">관리자 개인정보</a></li>
		        
       		</c:when>
			
			<c:otherwise>
				<li style="font-size: 30px; 4px 0; margin-bottom: 40px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">마이페이지</a></li>
				<li> <hr width="200px"> </li>
				<li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/reservation/reserve_main" style="display:block;text-decoration: none;padding: 4px 10px;">예약내역</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/cart/cart_form" style="display:block;text-decoration: none;padding: 4px 10px;">장바구니</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">마일리지</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">쿠폰함</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">1:1문의내역</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="" style="display:block;text-decoration: none;padding: 4px 10px;">자주찾는 질문</a></li><br>
		
		        <li style="margin:4px 0; margin-bottom: 10px;"><a href="${cpath }/myMenu/myinfo" style="display:block;text-decoration: none;padding: 4px 10px;">개인정보</a></li>
       	  	</c:otherwise>
       	</c:choose>     
      </ul>
    </div>
    <!-- //nav -->
    
    
