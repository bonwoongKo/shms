<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/top.jsp"%>
<div class="row justify-content-center py-3">
	<div role="main" class="main" style="min-height: calc(100vh - 393px);">
		<div class="container">
			<section class="http-error py-0">
				<div class="row justify-content-center py-3">
					<div class="col-6 text-center" style="width: 1000px;">
						<div class="http-error-main">
							<h2 class="mb-0">404!</h2>
							<span class="text-6 font-weight-bold text-color-dark">PAGE NOT FOUND</span>
							<p class="text-3 my-4">페이지를 찾을 수 없습니다.</p>
						</div>
						<c:choose>
							<c:when test="${sessionScope.job eq 'A'}">
								<a href="${request.getContextPath()}/manager/main" class="btn btn-primary btn-rounded btn-xl font-weight-semibold text-2 px-4 py-3 mt-1 mb-4">
									<i class="fas fa-angle-left pr-3"></i>메인 페이지로 돌아가기
								</a>
							</c:when>
							<c:when test="${sessionScope.job eq 'M'}">
								<a href="${request.getContextPath()}/map" class="btn btn-primary btn-rounded btn-xl font-weight-semibold text-2 px-4 py-3 mt-1 mb-4">
									<i class="fas fa-angle-left pr-3"></i>메인 페이지로 돌아가기
								</a>
							</c:when>
						</c:choose>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp"%>