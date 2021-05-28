<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
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
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">
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
		<!-- Skin CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/skins/default.css">
		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
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
										<a href="${pageContext.request.contextPath}/common/login/form">
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
			<!-- 
		<form action="/common/login" method="POST" onsubmit="return check(this)">
			<div class="container py-4">
				<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5 mb-5 mb-lg-0">
						<div class="form-row">
							<div class="form-group col">
								<h2 class="font-weight-bold text-5 mb-0">Login</h2>
								<form action="/" id="frmSignIn" method="post" class="needs-validation" novalidate="novalidate">
									<div class="form-row">
										<div class="form-group col">
											<label class="text-color-dark text-3">ID <span class="text-color-danger">*</span></label>
											<input type="text" value="" class="form-control form-control-lg text-4" required="">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label class="text-color-dark text-3">Password <span class="text-color-danger">*</span></label>
											<input type="password" value="" class="form-control form-control-lg text-4" required="">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<button type="submit" class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">Login</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		-->

		<form action="/common/login" method="POST" onsubmit="return check(this)">
			<div class="container py-4">
				<div class="row justify-content-center">
					<div class="col-md-6 col-lg-5 mb-5 mb-lg-0">
						<div class="form-row">
							<div class="form-group col">
								<h2 class="font-weight-bold text-5 mb-0">Login</h2>
									<div class="form-row">
										<div class="form-group col">
											<label class="text-color-dark text-3">ID <span class="text-color-danger">*</span></label>
											<input id="empNumber" type="text" name="empNumber" value="${manager.empNumber}" class="form-control form-control-lg text-4" required>
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
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>