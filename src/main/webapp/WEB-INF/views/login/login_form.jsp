<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


<main>
   <div style="display:block; width:50%; margin:0px auto; margin-top: 70px; text-align:center">
       <form method="POST">
             <div>
                <P><label style="padding: 0px 25px 0px 0px;">아이디 입력</label>
                   <input type="text" name="userid" id="userid" autocomplete="off" required autofocus>
                </div>
               
               <div>
                  <P><label style="padding: 0px 10px 0px 0px;">패스워드 입력</label>
                   <input type="password" name="userpw" id="userpw" autocomplete="off" required>
                </div>
                
                <div>
                <P><span>${lg }</span>
                </div>
                
                <div>
                <P><input style="border-radius: 5px; font-size: 15px; border:none; height: 40px;width: 180px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="로 그 인">
                </div>
        </form>
        <p>	
        	<a href="https://kauth.kakao.com/oauth/authorize?client_id=4e98c061f75136520e7139aead6e1df2&redirect_uri=http://localhost:8080/day08/auth/kakao/callback&response_type=code">
        		<img src="${cpath }/resources/img/kakao.png">
        	</a>
        </p>         
    </div>
              
</main>

<%@ include file="../layout/footer.jsp" %>