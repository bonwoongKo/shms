<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div role="main" class="main" style="min-height: calc(100vh - 393px);">
			<div class="container">
				<div class="row mt-5">
					<div class="col text-center">
						<div class="logo">
							<a href="index.html">
								<img width="100" height="48" src="img/logo-default.png" alt="Porto">
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<hr class="solid my-5">
					</div>
				</div>
				<section class="http-error py-0">
					<div class="row justify-content-center py-3">
						<div class="col-6 text-center">
							<div class="http-error-main">
								<h2 class="mb-0">404!</h2>
								<span class="text-6 font-weight-bold text-color-dark">UNEXPECTED ERROR</span>
								<p class="text-3 my-4">An unexpected error has occured. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim.</p>
							</div>
							<a href="index.html" class="btn btn-primary btn-rounded btn-xl font-weight-semibold text-2 px-4 py-3 mt-1 mb-4"><i class="fas fa-angle-left pr-3"></i>GO BACK TO HOME PAGE</a>
						</div>
					</div>
				</section>
			</div>
		</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>