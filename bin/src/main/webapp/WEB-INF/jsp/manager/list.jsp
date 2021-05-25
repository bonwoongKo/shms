<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		manager_list <br>
		<c:forEach items="${managerList}" var="manager">
			<c:if test="${manager.job eq 'M'}">
				<form action="/manager" method="post">
					<input type="hidden" name="_method" value="delete" />
					<input type="hidden" name="empNumber" value="${manager.empNumber}" />
					<label>${manager.empNumber}</label>
					<label>${manager.name}</label>
					<label>${manager.phoneNumber}</label>
					<input type="submit" value="삭제" /> <br>
				</form>
			</c:if>
		</c:forEach>
		<form action="/manager/form" method="get">
			<input type="submit" value="등록" />
		</form>
	</body>
=======
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		manager_list
		<c:out value="${managerList}" />
	</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		manager_list
		<c:out value="${managerList}" />
	</body>
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
</html>