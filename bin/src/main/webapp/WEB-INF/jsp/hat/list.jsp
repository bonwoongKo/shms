<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		hat_list
		<c:forEach items="${hatList}" var="hat">
			<c:if test="${hat.isDelete eq 'N'}">
				<form action="/hat" method="post">
					<input type="hidden" name="_method" value="delete" />
					<input type="hidden" name="code" value="${hat.code}" />
					<input type="hidden" name="isDelete" value="Y" />
					<label>${hat.code}</label>
					<label>${hat.registDate}</label>
					<input type="submit" value="삭제" /> <br>
				</form>
			</c:if>
		</c:forEach>
		<form action="/hat/form" method="get">
			<input type="submit" value="등록" />
		</form>
	</body>
</html>