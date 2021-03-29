<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
 	<style>	
  		.sh_main {
            min-width: 320px;
            max-width: 800px;
            padding: 10px;    
            border-radius: 7px;;        
            background: #ffffff;}
 
        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #ddd;}
 
        #shtab1, #shtab2, #shtab3, #shtab4 {
              display: none;}
 
        label {
            display: inline-block;
            padding: 15px 100px;
            color: #bbb;
            border: 1px solid transparent;
            }
 
        label:hover {
            color: #4DABF7;
            cursor: pointer;}
 
        /*input 클릭시, label 스타일*/
        input:checked + label {
              color: white;
              background-color: #4DABF7 ;
              border: 1px solid #ddd;
              border-bottom: 1px solid #ffffff;
              border-radius: 10px;
              }
 
        #shtab1:checked ~ #content1,
        #shtab2:checked ~ #content2,
        #shtab3:checked ~ #content3, 
        #shtab4:checked ~ #content4
         {
            display: block;
			}
    
			
    </style>
    
    <div class="content" style="float: left; width: 600px">
		 <c:choose>
        	<c:when test="${login.userkind == '4' }">
        	
		      <div style="min-width: 320px; max-width: 800px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
	 
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label for="shtab1">공지사항 등록</label>
		 
					<input id="shtab2" type="radio" name="tabs">
					<label for="shtab2">카테고리 등록</label>
	
					<section id="content1" style="margin-bottom:20px;">
						공지사항
						<form method="POST">
							<input type="text" name="">
						</form>
					</section>
		 
					<section id="content2" style="margin-bottom:20px;">
						카테고리
					</section>
	

	
				</div>
			</c:when>
		</c:choose>
	</div>
	<script>
		document.getElementById('shtab1').onclick = function () {
		  alert('I\'m clicked!');
		};
	
	
	</script>

 </div>
</div>



<%@ include file="../layout/footer.jsp" %>