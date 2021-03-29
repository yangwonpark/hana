<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>

    <div class="content" style="float: left; width: 500px">
		<c:choose>
        		<c:when test="${login.userkind == '4' }">
						<script>
							alert('관리자는 지원하지 않는 메뉴입니다');
							location.href= '${cpath}/myMenu/admin_company';
						</script>
				</c:when>
		</c:choose>		
		장바구니 화면입니다.
	</div>

</div>
</div>
<%@ include file="../layout/footer.jsp" %>