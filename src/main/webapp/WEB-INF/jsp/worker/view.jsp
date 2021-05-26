<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<c:out value="${worker}" /> <br>
		<c:out value="${worker.empNumber}" /> <br>
		<c:out value="${worker.name}" /> <br>
		<c:out value="${worker.cardNumber}" /> <br>
		<c:out value="${worker.phoneNumber}" /> <br>
		<c:out value="${worker.isDelete}" />
		
		<form action="/worker/${worker.empNumber}/form" method="get">
			<input type="submit" value="수정" />
		</form>
		
		<form action="/worker" method="post">
			<input type="hidden" name="_method" value="delete" /> <br>
			<input type="hidden" name="empNumber" value="${worker.empNumber}"/>
			<input type="hidden" name="isDelete" value="Y"/>
			<input type="submit" value="삭제" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>