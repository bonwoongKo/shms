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
		worker_edit <br>
		<form action="/worker" method="post">
			<input type="hidden" name="_method" value="put" /> <br>
			<input type="text" name="empNumber" value="${worker.empNumber}" /> <br>
			<input type="text" name="name" value="${worker.name}"/> <br>
			<input type="text" name="cardNumber" value="${worker.cardNumber}" /> <br>
			<input type="text" name="phoneNumber" value="${worker.phoneNumber}" /> <br>
			<input type="submit" value="수정" />
		</form>
	</body>
=======
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		worker_edit
	</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		worker_edit
	</body>
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
</html>