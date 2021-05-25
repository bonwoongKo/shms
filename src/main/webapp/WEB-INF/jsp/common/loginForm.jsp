<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="/common/login" method="POST" onsubmit="return check(this)">
			<label>ID</label>
			<input id="empNumber" type="text" name="empNumber" value="${manager.empNumber}" required>

			<label>비밀번호</label>
			<input id="password" type="password" name="password" required>

			<div id="error"></div>
			<input type="submit" value="로그인" />
		</form>
			<script>
				function check(form) {
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					console.log(xhr.readyState);
		
					if (xhr.readyState === xhr.DONE) {
						if (xhr.status === 200 || xhr.status === 201) {
							var row = JSON.parse(xhr.responseText);
							if (JSON.stringify(row) != '{}') {
								console.log("Y");
								form.submit();
							} else {
								console.log("N");
								document.getElementById("error").innerHTML = "<font size=\"2em\" color=\"red\">잘못된 로그인 정보입니다.</font>";
							}
						} else {
							console.error(xhr.responseText);
						}
					}
				};
				
				var empNumber = document.getElementById("empNumber").value;
				var password = document.getElementById("password").value;
				
				if (!empNumber) {
					empNumber = "1";
				}
				
				if (!password) {
					password = "!";
				}
				
				xhr.open("GET", "${pageContext.request.contextPath}" + "/common/check/" + empNumber + "/" + password, true);
				xhr.send();
				
				return false;
			};
		</script>
	</body>
</html>