<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		manager_view
		<c:out value="${manager}" /> <br>
		<c:out value="${manager.empNumber}" /> <br>
		<c:out value="${manager.name}" /> <br>
		<c:out value="${manager.phoneNumber}" /> <br>
		<c:if test="${manager.job eq 'M'}">
			<label>안전관리자</label>
		</c:if>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>