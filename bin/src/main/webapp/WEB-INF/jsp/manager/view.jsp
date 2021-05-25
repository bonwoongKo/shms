<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		manager_view
		<c:out value="${manager}" /> <br>
		<c:out value="${manager.empNumber}" /> <br>
		<c:out value="${manager.password}" /> <br>
		<c:out value="${manager.name}" /> <br>
		<c:out value="${manager.phoneNumber}" /> <br>
		<c:out value="${manager.job}" />
	</body>
</html>