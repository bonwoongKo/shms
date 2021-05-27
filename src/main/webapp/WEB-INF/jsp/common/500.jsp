<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/top.jsp"%>
<div class="row justify-content-center py-3">
	<div role="main" class="main" style="min-height: calc(100vh - 393px);">
		<section class="http-error py-0">
			<div class="row justify-content-center py-3">
				<div class="col-6 text-center" style="width: 1000px;">
					<div class="http-error-main">
						<h2 class="mb-0">500!</h2>
						<span class="text-6 font-weight-bold text-color-dark">Server
							Error</span>
						<p class="text-3 my-4">서버에 문제가 발생하였습니다.</p>
					</div>
					<a href="<%=request.getContextPath()%>/map/main"
						class="btn btn-primary btn-rounded btn-xl font-weight-semibold text-2 px-4 py-3 mt-1 mb-4"><i
						class="fas fa-angle-left pr-3"></i>GO BACK TO HOME PAGE</a>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp"%>