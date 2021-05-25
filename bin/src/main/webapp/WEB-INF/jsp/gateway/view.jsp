<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		gateway_view
		<c:out value="${gateway}" /> <br>
		<c:out value="${gateway.code}" /> <br>
		<c:out value="${gateway.registDate}" /> <br>
		<c:out value="${gateway.isDelete}" />
	</body>
</html>