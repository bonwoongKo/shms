<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		worker_regist
		<form action="/worker" method="post">
			empNumber : <input type="text" name="empNumber" /> <br>
			name : <input type="text" name="name" /> <br>
			cardNumber : <input type="text" name="cardNumber" /> <br>
			phoneNumber : <input type="text" name="phoneNumber" /> <br>
			<input type="submit" value="등록"	 />		
		</form>
	</body>
</html>