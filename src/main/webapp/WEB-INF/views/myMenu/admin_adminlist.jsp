<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
    <div class="content" style="float: left; width: 500px">
      <c:choose>
        	<c:when test="${login.userkind == '4' }">
			      <h1>관리자 목록 (관리자용)</h1>
			        <form method="POST">
			        	
			        <table style="width: 500px; border: 1px solid black;  border-spacing: 10px;">
			            <tr>
			                <th>관리자 ID</th>
			                <th>이름</th>
			                <th>소속팀</th>
			                <th>소속팀</th>
			                <th>소속팀</th>
			            </tr>
			            <tr>
			            	<td>관리자 ID</td>
			                <td>이름</td>
			                <td>소속팀</td>
			                <td>소속팀</td>
			                <td>소속팀</td>
			            </tr>
			            <tr>
			            	<td>관리자 ID</td>
			                <td>이름</td>
			                <td>소속팀</td>
			                <td>소속팀</td>
			                <td>소속팀</td>
			            </tr>
       
			       </table>
			       
			       </form>  
			 </c:when>
		</c:choose>
    </div>
 </div>
</div>



<%@ include file="../layout/footer.jsp" %>