<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
			<h4 class="font-weight-bold text-uppercase text-4 mb-3">안전모 등록</h4>
			<form action="${request.getContextPath()}/hat" method="post" class="needs-validation" onsubmit="return check(this)" >
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">일련번호</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="code" maxlength="5" required>
					</div>
				</div>
				<input type="submit" value="등록" class="btn btn-primary btn-modern float-right" />
				<div class="col-lg-10">
					<a href="/hat"><input type="button" value="취소" class="btn btn-primary btn-modern float-right" /></a>
				</div>
			</form>
			<div class="col-lg-9" id="error"></div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>