<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		worker_list <br>
		<c:forEach items="${workerList}" var="worker">
			<c:if test="${worker.isDelete eq 'N'}">
				<a href = "/worker/${worker.empNumber}">${worker.empNumber}</a>
				<a href = "/worker/${worker.empNumber}">${worker.name}</a> <br>
			</c:if>
		</c:forEach>
	</body>
</html>