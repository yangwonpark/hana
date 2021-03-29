<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../manage/sc.jsp" %>
    <div class="content" style="float: left; width: 500px">
		 <h1>자주찾는질문</h1><hr>
		        <form method="POST">
		        	
		        <table style="border-spacing: 10px;">
		            <tr>
		                <td>*</td>
		                <td>기업명</td>
		                <td><input type="text" name="name" required/></td>
		            </tr>
		            <tr><td colspan="3"><hr /></td></tr>
		            
		            <tr>
		                <td>*</td>
		                <td>사업자번호</td>
		                <td><input type="text" name="serial_num" required /></td>
		            </tr>
		            <tr><td colspan="3"><hr /></td></tr>
		    		<tr>
		    		 	<td colspan="3">
		    			<span>${company }</span>
		    			</td>
		    		</tr>
		
		             <tr >            
		            <tr>
		           		<td colspan="3">
		           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="기업등록">
		          		</td>
		            </tr>         
		       </table>
		       
		       </form>  
    </div>
 </div>
</div>



<%@ include file="../layout/footer.jsp" %>