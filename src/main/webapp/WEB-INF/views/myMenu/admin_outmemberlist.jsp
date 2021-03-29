<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
    <div class="content" style="float: left; width: 500px">
		 <c:choose>
        	<c:when test="${login.userkind == '4' }">
		      <h1>탈퇴 사유 추가</h1>
		      <hr width="500px">

		        	
		        <table style="border-spacing: 10px;">
		            <tr>
		                <td>*</td>
		                <td>탈퇴 사유</td>
		                <td><input id="reason" type="text" name="reason" required/></td>
		            </tr>         
		            <tr>
		           		<td colspan="3">
		           			 <button id="reasonBtn" style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;">
		           			 탈퇴사유등록
		           			 </button>
		          		</td>
		            </tr>  
		       </table>
				<div id="pb-list"></div>
		     </c:when>
		</c:choose>
	</div>

 </div>
</div>


<%@ include file="../layout/footer.jsp" %>