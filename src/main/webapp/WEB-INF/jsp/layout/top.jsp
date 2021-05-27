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
		<meta name="keywords" content="HTML5 Template">
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">
		<!-- Favicon -->
		<link rel="shortcut icon" href="/img/icons/icons8-umbrella-100.png" type="image/x-icon">
		<link rel="apple-touch-icon" href="/img/apple-touch-icon.png">
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">
		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light&amp;display=swap" rel="stylesheet" type="text/css">
		<!-- Vendor CSS -->
		<link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/vendor/fontawesome-free/css/all.min.css">
		<!-- Theme CSS -->

		<link rel="stylesheet" href="/css/theme.css">
		<link rel="stylesheet" href="/css/theme-elements.css">
		<link rel="stylesheet" href="/css/theme-blog.css">
		<link rel="stylesheet" href="/css/theme-shop.css">
		<!-- Skin CSS -->
		<link rel="stylesheet" href="/css/skins/default.css">
		
		<style>
      		.header-container{
        		background-color: #3b3b3b;
      		}
    	</style>
		
	</head>
<body class="" data-loading-overlay="" data-plugin-page-transition="">
	<header id="header" class="fas fa-chevron-up" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyHeaderContainerHeight': 80, 'stickyStartAt': 50, 'stickyChangeLogo': false}" style="height: 100px;">
		<div class="header-body border-top-0 bg-primary appear-animation animated fadeInUpShorterPlus appear-animation-visible" data-appear-animation="fadeInUpShorterPlus" data-appear-animation-delay="2000" data-plugin-options="{'forceAnimation': true}" style="position: fixed; animation-delay: 2000ms; top: 0px;">
			<div class="header-container container-fluid" style="height: 80px; min-height: 0px;">
				<div class="header-row">
					<div class="header-column align-items-start justify-content-center">
						<div class="header-logo z-index-2 col-lg-2 px-0">
							<c:choose>
								<c:when test="${sessionScope.job eq 'A'}">
									<a href="${request.getContextPath()}/manager/main">
										<img src="${pageContext.request.contextPath}/img/shms.png" style="top: 0px; width: 199px; height: 60px;">
									</a>	
								</c:when>
								<c:when test="${sessionScope.job eq 'M'}">
									<a href="${request.getContextPath()}/map">
										<img src="${pageContext.request.contextPath}/img/shms.png" style="top: 0px; width: 199px; height: 60px;">
									</a>
								</c:when>
							</c:choose>
						</div>
					</div>
					
					<div class="header-column flex-row justify-content-end justify-content-lg-center">
						<div class="header-nav header-nav-line header-nav-bottom-line header-nav-bottom-line-effect-1 header-nav-dropdowns-dark header-nav-light-text justify-content-end">
							<div class="header-nav-main header-nav-main-arrows header-nav-main-mobile-dark header-nav-main-dropdown-no-borders header-nav-main-effect-3 header-nav-main-sub-effect-1">
								<nav class="collapse">
									<ul class="nav nav-pills" id="mainNav">
										<c:choose>
											<c:when test="${sessionScope.job eq 'A'}">
												<li><a href="${request.getContextPath()}/hat" class="nav-link" style="font-size:16px" style="font-size:18px">장비 관리</a></li>
												<li><a href="${request.getContextPath()}/worker" class="nav-link" style="font-size:16px" style="font-size:18px">근로자 관리</a></li>
												<li><a href="${request.getContextPath()}/manager" class="nav-link" style="font-size:16px" style="font-size:18px">안전관리자 관리</a></li>
												<li><a href="${request.getContextPath()}/wearlog" class="nav-link" style="font-size:16px" style="font-size:18px">착용 기록</a></li>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<li><a href="${request.getContextPath()}/common/logout" class="nav-link" style="font-size:16px" style="font-size:18px">로그아웃</a></li>
											</c:when>
											<c:when test="${sessionScope.job eq 'M'}">
												<li><a href="${request.getContextPath()}/map" class="nav-link" style="font-size:18px">모니터링</a></li>
												<li><a href="${request.getContextPath()}/wearlog" class="nav-link" style="font-size:18px">착용 기록</a></li>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<li><a href="${request.getContextPath()}/manager/${sessionScope.empNumber}" class="nav-link" style="font-size:18px">${sessionScope.name}님</a></li>
												<li><a href="${request.getContextPath()}/common/logout" class="nav-link" style="font-size:18px">로그아웃</a></li>
											</c:when>  
										</c:choose>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="header-column flex-row justify-content-end justify-content-lg-center">
					</div>
				</div>
			</div>
		</div>		
	</header>
	<div role="main" class="main">
		<div class="container">
			<div class="row pb-3">
				<div class="col">
				</div>
			</div> 
				
