<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		wearlog_view
		<c:forEach items="${wearLog}" var="wear">
			<c:out value="${wear.code}" /> <br>
			<c:out value="${wear.hatCode}" /> <br>
			<c:out value="${wear.gatewayCode}" /> <br>
			<c:out value="${wear.empNumber}" /> <br>
			<c:out value="${wear.time}" /> <br>
			<c:out value="${wear.isWear}" /> <br>
			<c:out value="${wear.latitude}" /> <br>
			<c:out value="${wear.longitude}" /> <br>
			<c:out value="${wear.worker.name}" /> <br>
			<c:out value="${wear.worker.phoneNumber}" /> <br>
		</c:forEach>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>