<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<main>
	<div style="display:block; width:30%; margin:0px auto; margin-top: 70px; text-align:center">
        <form method="POST">     	
        <table style="border-spacing: 10px;">
            <tr>
                <td>*</td>
                <td>회원 ID</td>
                <td><input id="userid" type="text" name="userid" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>비밀번호</td>
                <td><input id="userpw" type="password" name="userpw" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>비번확인</td>
                <td><input id="userpw2" type="password" name="userpw2" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>이 름</td>
                <td><input id="name" type="text" name="name" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
    
             <tr >
                <td>*</td>
                <td>전화번호</td>
                <td><input id="pnum" type="text" name="pnum"/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr >
                <td>*</td>
                <td>생년월일</td>
                <td><input type="date" name="birth_date" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>성 별</td>
                <td>남 성<input type="radio" name="gender" value="0" required/>&nbsp;&nbsp;
                	여 성<input type="radio" name="gender" value="1" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>국 가</td>
                <td>내국인<input type="radio" name="foreign" value="0" required/>&nbsp;&nbsp;
                	외국인<input type="radio" name="foreign" value="1" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>유지기간</td>
                <td>1년<input type="radio" name="expiry_date" value="1" required/>
                	2년<input type="radio" name="expiry_date" value="2" required/>
                	3년<input type="radio" name="expiry_date" value="3" required/>
                	
                	
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>문자수신</td>
                <td>Yes<input type="radio" name="agree_sms" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_sms" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
           <tr>
                <td>*</td>
                <td>이메일수신</td>
                <td>Yes<input type="radio" name="agree_email" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_email" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>우편수신</td>
                <td>Yes<input type="radio" name="agree_post" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_post" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>전화수신</td>
                <td>Yes<input type="radio" name="agree_pnum" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_pnum" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr><td> <input type="hidden" name="userkind" value="0"/></td>
            </tr>
            
            <tr>
           		<td colspan="3">
           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="회원가입">
          		</td>
            </tr>        
       </table>
       </form>  
	</div>
<script>
	$('#userid').blur(function(){
		$.ajax({
			url: '${cpath}/checkId',
			method: 'POST',
			data: {userid: $('#userid').val()},
			dataType: 'text',
			success: function(returnValue) {
	
				if(returnValue === '이미 사용중 입니다'){
					$('#userid').val('');
					$('#userid').attr('placeholder', '이미 사용중인 ID입니다.');
					$('#userid').select();
				}
				else {
					$('#userid').css('color', 'blue');	
				}
			},
				error: function() {
					$('#userid').text('서버 통신 실패');
				}
		});
	});
	
	$('#userpw2').blur(function(){
			if($('#userpw').val() == $('#userpw2').val()){
				$('#name').focus();
			}
			else {
				$('#userpw').val('');
				$('#userpw2').val('');
				$('#userpw2').attr('placeholder', '비밀번호가 일치 하지 않습니다.');
				$('#userpw').select();
			}
			if($('#userpw').val() == ''){
				$('#userpw').select();
			}

	});
	
	$('#pnum').blur(function(){
		$.ajax({
			url: '${cpath}/checkPnum',
			method: 'POST',
			data: {pnum: $('#pnum').val()},
			dataType: 'text',
			success: function(returnValue) {
				console.log(returnValue);
				if(returnValue === '이미 사용중 입니다'){
					$('#pnum').val('');
					$('#pnum').attr('placeholder', '이미 등록된 전화번호 입니다.');
					$('#pnum').select();
				}
				else {
					$('#pnum').css('color', 'blue');	
				}
			},
				error: function() {
					$('#pnum').text('서버 통신 실패');
				}
		});
	});
</script>

<script>	

	const joinForm = document.forms[1];
	const submitHandler = function(event) {
		console.log('submitHandler !!');
		event.preventDefault();
		if($('#pnum').val() == '') {

			const cf = confirm('전화번호란이 비웠습니다. 이대로 괜찮습니까?');
			if (cf) {
				joinForm.submit();	   
			}
			else {
				return;
			}		
		}
		joinForm.submit();
	};
	joinForm.onsubmit = submitHandler;
</script>

</main>

<%@ include file="../layout/footer.jsp" %>