<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<!--
		<form action="/worker" method="post" style="float:left" class="call-to-action with-full-borders mb-5">
			<input type="hidden" name="_method" value="put" />
			<label>사원번호</label>
			<input type="text" name="empNumber" value="${worker.empNumber}" class="form-control border-radius-0 h-auto py-2" />
			<label>이름</label> 
			<input type="text" name="name" value="${worker.name}" class="form-control border-radius-0 h-auto py-2" />
			<label>카드번호</label> 
			<input type="text" name="cardNumber" value="${worker.cardNumber}" class="form-control border-radius-0 h-auto py-2" />
			<label>핸드폰번호</label> 
			<input type="text" name="phoneNumber" value="${worker.phoneNumber}" class="form-control border-radius-0 h-auto py-2" />
		</form>
		<input type="submit" class="btn btn-primary mb-2" value="수정" />
-->
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
		<h4 class="font-weight-bold text-uppercase text-4 mb-3">근로자 수정</h4>
			<form action="${request.getContextPath()}/worker" method="post" class="needs-validation" onsubmit="return check(this)" >
			<input type="hidden" name="_method" value="put" />
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">사원번호</label>
					<div class="col-lg-9">
						<input type="text" name="empNumber" value="${worker.empNumber}" class="form-control" maxlength="10" readonly>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">이름</label>
					<div class="col-lg-9">
						<input type="text" name="name" value="${worker.name}" class="form-control" maxlength="10" required>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">카드번호</label>
					<div class="col-lg-9">
						<input type="text" name="cardNumber" value="${worker.cardNumber}" class="form-control" maxlength="8" required>
					</div>
				</div>			
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">핸드폰번호</label>
					<div class="col-lg-9">
						<input type="text" id="phoneNumber" name="phoneNumber" value="${worker.phoneNumber}" class="form-control" minlength="13" maxlength="13" required>
					</div>
				</div>	
				<input type="submit" value="수정" class="btn btn-primary btn-modern float-right" />
				<div class="col-lg-10">
					<a href="/worker/${worker.empNumber}"><input type="button" value="취소" class="btn btn-primary btn-modern float-right" /></a>
				</div>
			</form>
			<div class="col-lg-9" id="error"></div>
		</div>
	</div>
</div>	
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>