<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		wearlog_view
		<c:out value="${wearLog}" /> <br>
		<c:out value="${wearLog.code}" /> <br>
		<c:out value="${wearLog.hatCode}" /> <br>
		<c:out value="${wearLog.gatewayCode}" /> <br>
		<c:out value="${wearLog.empNumber}" /> <br>
		<c:out value="${wearLog.time}" /> <br>
		<c:out value="${wearLog.isWear}" /> <br>
		<c:out value="${wearLog.latitude}" /> <br>
		<c:out value="${wearLog.longitude}" /> <br>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>