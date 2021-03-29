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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>	
	const reasonbtn = document.getElementById('reasonBtn');
	const reason = document.getElementById('reason');
	
	console.log({reasonbtn});
	const onclickHandler = function(event) {
		console.log(reason);
		$.ajax({
			url: '${pageContext.request.contextPath}/myMenu/admin_outmemberreason/' + reason.value,
			method: 'GET',
			dataType: 'text', // 어차피 json이 text이면서 json 형식임...그래서 text로 받는거임
			success: function(data) {	//data = jsonString
				console.log('json 출력 : ' + data);				// 이건 단순 문자열일 뿐이지만(json 형태)
				const ob = JSON.parse(data);	// 변환을 거치고 나면
			//	console.log('자바스크립트 ob 출력 : ' + ob);				// 자바스크립트의 객체가 된다
				const pbList = document.getElementById('pb-list');
				pbList.appendChild(convertJsonToTable(ob));
			},
			error: function() {
			}
		});
	};
	reasonbtn.onclick = onclickHandler;
</script>

<script>
const convertJsonToTable = function(json) {
		const table = document.createElement('table');
		const thead = document.createElement('thead');
		const tbody = document.createElement('tbody');
		const theadTr = document.createElement('tr');
		const theadTh1 = document.createElement('th');
		const theadTh2 = document.createElement('th');
		
		theadTh1.innerText = '번호';
		theadTh2.innerText = '탈퇴 사유 목록';
		
		theadTr.appendChild(theadTh1);
		theadTr.appendChild(theadTh2);
		
		thead.appendChild(theadTr);
		
		table.appendChild(thead);		
		
		// 여기서부터는 json을 규칙에 맞게 tr로 만들어서, 만들어진 tr을 tbody에 추가하고
		// tbody를 table에 추가하면 됨
		// console.log(json);
		for(let i = 0; i < json.length; i++) {
			const td1 = document.createElement('td');
			console.log('json[i].idx : ' + json[i].idx);
			td1.innerText = json[i].idx;
			
			const td2 = document.createElement('td');
			console.log('json[i].reason_content : ' + json[i].reason_content);
			td2.innerText = json[i].reason_content;
			
			const tr = document.createElement('tr')
			tr.appendChild(td1);
			tr.appendChild(td2);

			table.appendChild(tr);
		}
		// table.appendChild(tbody);
		
		return table;
	}
</script>

<%@ include file="../layout/footer.jsp" %>