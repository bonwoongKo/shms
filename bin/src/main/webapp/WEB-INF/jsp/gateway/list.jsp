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
		gateway_list <br>
		<c:forEach items="${gatewayList}" var="gateway">
			<c:if test="${gateway.isDelete eq 'N'}">
				<form action="/gateway" method="post">
					<input type="hidden" name="_method" value="delete" />
					<input type="hidden" name="code" value="${gateway.code}" />
					<input type="hidden" name="isDelete" value="Y" />
					<label>${gateway.code}</label>
					<label>${gateway.registDate}</label>
					<input type="submit" value="삭제" /> <br>
				</form>
			</c:if>
		</c:forEach>
		<form action="/gateway/form" method="get">
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
		gateway_list
		<c:out value="${gatewayList}" />
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
		gateway_list
		<c:out value="${gatewayList}" />
	</body>
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
</html>