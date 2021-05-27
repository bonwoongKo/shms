<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row pb-5">
		<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0 appear-animation animated fadeInRightShorter appear-animation-visible" data-appear-animation="fadeInRightShorter" style="animation-delay: 100ms;">
			<span class="thumb-info thumb-info-hide-wrapper-bg">
				<span class="thumb-info-wrapper">
					<a href="/worker">
					<img src="${pageContext.request.contextPath}/img/worker.jpg" class="img-fluid" alt="">
						<span class="thumb-info-title">
							<span class="thumb-info-inner">근로자 관리</span>
						</span>
					</a>
				</span>
			</span>
		</div>
		<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0 appear-animation animated fadeInRightShorter appear-animation-visible" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="200" style="animation-delay: 200ms;">
			<span class="thumb-info thumb-info-hide-wrapper-bg">
				<span class="thumb-info-wrapper">
					<a href="/manager">
						<img src="${pageContext.request.contextPath}/img/manager.jpg" class="img-fluid" alt="">
						<span class="thumb-info-title">
							<span class="thumb-info-inner">안전관리자 관리</span>
						</span>
					</a>
				</span>
			</span>
		</div>
		<div class="col-sm-6 col-lg-3 mb-4 mb-sm-0 appear-animation animated fadeInRightShorter appear-animation-visible" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">
			<span class="thumb-info thumb-info-hide-wrapper-bg">
				<span class="thumb-info-wrapper">
					<a href="/hat">
						<img src="${pageContext.request.contextPath}/img/safety.png" class="img-fluid" alt="">
						<span class="thumb-info-title">
							<span class="thumb-info-inner">장비 관리</span>
						</span>
					</a>
				</span>				
			</span>
		</div>
		<div class="col-sm-6 col-lg-3 appear-animation animated fadeInRightShorter appear-animation-visible" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="600" style="animation-delay: 600ms;">
			<span class="thumb-info thumb-info-hide-wrapper-bg">
				<span class="thumb-info-wrapper">
					<a href="/wearlog">
						<img src="${pageContext.request.contextPath}/img/file.png" class="img-fluid" alt="">
						<span class="thumb-info-title">
							<span class="thumb-info-inner">착용 기록 관리</span>
						</span>
					</a>
				</span>				
			</span>
		</div>
	</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>