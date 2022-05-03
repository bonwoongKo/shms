<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SHMS LOGIN PAGE</title>
	<link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet" />
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>SHMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sub.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
</head>
<body>
	<section class="vh-100 gradient-custom">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
	        <div class="card bg-dark text-white" style="border-radius: 1rem;">
	          <div class="card-body p-5 text-center">
				<form action="/portal/login" method="POST">
		            <div class="mb-md-5 mt-md-4 pb-5">
					  <a class="navbar-brand ps-2" href="${pageContext.request.contextPath}/common/login/form">
					    <img src="${pageContext.request.contextPath}/img/mainIcon.png" style="top: 0px; width: 300px; height: 70px;">
				      </a>
		              <h5 class="fw-bold mb-2 text-uppercase">안전모 착용여부 모니터링 시스템</h5>
		              <p class="text-white-50 mb-5"></p>
		
		              <div class="form-outline form-white mb-4">
		                <input type="text" id="empNum" name="empNum" class="form-control form-control-lg" />
		                <label class="form-label" for="typeEmailX">사원번호</label>
		              </div>
		
		              <div class="form-outline form-white mb-4">
		                <input type="password" id="password" name="password" class="form-control form-control-lg" />
		                <label class="form-label" for="typePasswordX">비밀번호</label>
		              </div>
		
		              <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
		
		            </div>
	            </form>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>

