<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		worker_regist
		<c:out value="${worker}" /> <br>
		<c:out value="${worker.empNumber}" /> <br>
		<c:out value="${worker.name}" /> <br>
		<c:out value="${worker.cardNumber}" /> <br>
		<c:out value="${worker.phoneNumber}" /> <br>
		<c:out value="${worker.isDelete}" />
	</body>
</html>