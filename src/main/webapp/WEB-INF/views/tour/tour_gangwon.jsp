<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<jsp:include page="../tour/tour_gangwonList.jsp?page=${param.page }&type=${param.type }&word=${param.word }" />
<%@ include file="../layout/footer.jsp" %>