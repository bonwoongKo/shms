<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
		<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}" style="height: 104px;">
			<div class="header-body" style="position: fixed; top: 0px;">
				<div class="header-container container" style="height: 100px; min-height: 0px;">
					<div class="header-row">
						<div class="header-column">
							<div class="header-row">
								<div class="header-logo" style="width: 100px; height: 48px;">
									<a href="/">
										<img alt="shms" width="199" height="30" data-sticky-width="82" data-sticky-height="40" src="${pageContext.request.contextPath}/img/SHMS.png" style="top: 0px; width: 199px; height: 60px;">
									</a>
								</div>
							</div>
						</div>
						<div class="header-column justify-content-end">
							<div class="header-row">
								<div class="header-nav header-nav-links order-2 order-lg-1">
									<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
										<nav class="collapse">
											<ul class="nav nav-pills" id="mainNav">
											
												<li class="dropdown">
													<a class="dropdown-item dropdown-toggle active current-page-active" href="index.html">
														모니터링
													<i class="fas fa-chevron-down"></i></a>
												</li>
												<li class="dropdown dropdown-mega">
													<a class="dropdown-item dropdown-toggle" href="elements.html">
														착용 기록
													<i class="fas fa-chevron-down"></i></a>
												</li>
												<li class="dropdown">
													<a class="dropdown-item dropdown-toggle" href="#">
														내 정보
													<i class="fas fa-chevron-down"></i></a>
												</li>
												<li class="dropdown">
													<a class="dropdown-item dropdown-toggle" href="#">
														로그아웃
													<i class="fas fa-chevron-down"></i></a>
												</li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<hr class="solid my-1">
					</div>
				</div>
			</div>
		</header>
		<div role="main" class="main">
			<div class="container">
				<div class="row pb-5">
					<div class="col">
					</div>
				</div>
	