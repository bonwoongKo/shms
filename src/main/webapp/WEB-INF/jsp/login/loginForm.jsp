<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
	<head>
		<!-- Basic -->
		<meta charset="UTF-8">
		<title>SHMS</title>	
		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">
		<!-- Favicon -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icons/icons8-umbrella-100.png" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/img/apple-touch-icon.png">
		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light&display=swap" rel="stylesheet" type="text/css">
		<!-- Vendor CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css">
		<!-- Theme CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme-elements.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme-blog.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme-shop.css">
	</head>
	<body>
		<div class="body">
			<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 30, 'stickyHeaderContainerHeight': 70}">
				<div class="header-body">
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo">
										<a href="${pageContext.request.contextPath}/portal/login/form">
											<img alt="shms" width="199" height="30" data-sticky-width="82" data-sticky-height="40" src="${pageContext.request.contextPath}/img/login.png" style="top: 0px; width: 199px; height: 60px;">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		<br>
		<br>
		<br>
		<br>
		<form action="/shms/portal/login" method="POST" onsubmit="return check(this)">
			<div class="container py-4">
				<div class="row justify-content-center">
					<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
						<div class="form-row">
							<div class="form-group col">
								<h2 class="font-weight-bold text-5 mb-0">Login</h2>
									<div class="form-row">
										<div class="form-group col">
											<label class="text-color-dark text-3">ID <span class="text-color-danger">*</span></label>
											<input id="empNum" type="text" name="empNum" class="form-control form-control-lg text-4" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label class="text-color-dark text-3">Password <span class="text-color-danger">*</span></label>
											<input id="password" type="password" name="password" class="form-control form-control-lg text-4" required>
										</div>
									</div>
									<div id="error"></div>
									<div class="form-row">
										<div class="form-group col">
											<button type="submit" class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">Login</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</form>
		<script>
			function check(form) {
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {	
					if (xhr.readyState === xhr.DONE) {
						if (xhr.status === 200 || xhr.status === 201) {
							var row = JSON.parse(xhr.responseText);
							if (JSON.stringify(row) != '{}') {
								form.submit();
							} else {
								document.getElementById("error").innerHTML = "<font size=\"2em\" color=\"red\">잘못된 로그인 정보입니다.</font>";
							}
						} else {
							//console.error(xhr.responseText);
						}
					}
				};
				var empNum = document.getElementById("empNum").value;
				var password = document.getElementById("password").value;
				if (!empNum) {
					empNum = "1";
				}
				if (!password) {
					password = "!";
				}
				xhr.open("GET", "${pageContext.request.contextPath}" + "/portal/check/" + empNum + "/" + password, true);
				xhr.send();
				
				return false;
			};
		</script>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>