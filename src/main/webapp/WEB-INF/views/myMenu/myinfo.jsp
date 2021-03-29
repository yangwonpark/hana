<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>    

    <div class="content" style="float: left; width: 500px">
      <h1>개인정보</h1>
        <form method="POST">
        	
        <table style="border-spacing: 10px;">
            <tr>
                <td>*</td>
                <td>회원 ID</td>
                <td><input id="userid" type="text" name="userid" value="${login.userid }" readonly required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>이 름</td>
                <td><input id="name" type="text" name="name" value="${login.name }" readonly required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
    
             <tr >
                <td>*</td>
                <td>전화번호</td>
                <td><input id="pnum" type="text" name="pnum" value="${login.pnum }"></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr >
                <td>*</td>
                <td>생년월일  </td>
                <td><input type="date" name="birth_date" value="${login.birth_date }" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>성 별</td>
                
                <td>
                	<c:choose>
                		<c:when test="${login.gender == 0}">
                			남 성<input type="radio" name="gender" value="0" checked required/>&nbsp;&nbsp;
                			여 성<input type="radio" name="gender" value="1" required/>
                		</c:when>
                		<c:otherwise>
                			남 성<input type="radio" name="gender" value="0" required/>&nbsp;&nbsp;
                			여 성<input type="radio" name="gender" value="1" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
                
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>국 가</td>
                <td>
                	<c:choose>
                		<c:when test="${login.foreign == 0}">
                			내국인<input type="radio" name="foreign" value="0" checked required/>&nbsp;&nbsp;
                			외국인<input type="radio" name="foreign" value="1" required/>
                		</c:when>
                		<c:otherwise>
                			내국인<input type="radio" name="foreign" value="0" required/>&nbsp;&nbsp;
                			외국인<input type="radio" name="foreign" value="1" checked required/> 		
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>유지기간</td>
       
                <td>             	
                	<c:choose>
	                	<c:when test='${login.expiry_date == 1 }'>
	                		1년<input type="radio" name="expiry_date" value="1" checked required/>
	                		2년<input type="radio" name="expiry_date" value="2" required/>
	                		3년<input type="radio" name="expiry_date" value="3" required/>
	                	</c:when>
	                	<c:when test='${login.expiry_date == 2 }'>	
	                		1년<input type="radio" name="expiry_date" value="1"  required/>
	                		2년<input type="radio" name="expiry_date" value="2" checked required/>
	                		3년<input type="radio" name="expiry_date" value="3" required/>	                	
	                	</c:when>
	                	<c:when test='${login.expiry_date == 3 }'>	
	                		1년<input type="radio" name="expiry_date" value="1" required/>
	                		2년<input type="radio" name="expiry_date" value="2" required/>
	                		3년<input type="radio" name="expiry_date" value="3" checked required/>                		
	                	</c:when>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>문자수신</td>
                <td>
                    <c:choose>
	                	<c:when test='${login.agree_sms == 1 }'>
		                	Yes<input type="radio" name="agree_sms" value="1" checked required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_sms" value="0" required/>
		                </c:when>
		                <c:otherwise>
		                	Yes<input type="radio" name="agree_sms" value="1" required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_sms" value="0" checked required/>
		           
		                </c:otherwise>
		            </c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
           <tr>
                <td>*</td>
                <td>이메일수신</td>
                <td>
                	 <c:choose>
	                	<c:when test='${login.agree_email == 1 }'>
		                	Yes<input type="radio" name="agree_email" value="1" checked required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_email" value="0" required/>
		                </c:when>
		                <c:otherwise>
		                   	Yes<input type="radio" name="agree_email" value="1" required/>&nbsp;&nbsp;
		                   	No<input type="radio" name="agree_email" value="0" checked required/>
		                </c:otherwise>
		                
		              </c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>우편수신</td>
                <td>
                	<c:choose>
                		<c:when test='${login.agree_post == 1}'>	
                			Yes<input type="radio" name="agree_post" value="1" checked required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_post" value="0" required/>
                		</c:when>
                		<c:otherwise>
							Yes<input type="radio" name="agree_post" value="1" required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_post" value="0" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>전화수신</td>
                <td>
                	<c:choose>
                		<c:when test='${login.agree_pnum == 1}'>	
                			Yes<input type="radio" name="agree_pnum" value="1" checked required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_pnum" value="0" required/>
                		</c:when>
                		<c:otherwise>
                		    Yes<input type="radio" name="agree_pnum" value="1" required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_pnum" value="0" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
           		<td colspan="3">
           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="회원수정">
          		</td>
            </tr>
            <tr>
           		<td colspan="3">
          		</td>
            </tr>
  
            
       </table>
       
       </form>  
       <button style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none; float: left; margin-left: 10px"value="탈퇴하기">탈퇴하기 </button>
       
	</div>
 </div>
</div>

<script type="text/javascript">
	const editForm = document.forms[1];
	console.log({editForm});
	console.log(editForm);
	
	const submitHandler = function(event) {
		event.preventDefault();
		const flag = confirm('정말 수정하시겠습니까?')
		if(flag == false) {
			return;
		}
		editForm.submit();
	};
	editForm.onsubmit = submitHandler;
	
	
</script>





<%@ include file="../layout/footer.jsp" %>