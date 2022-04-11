<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
			<h4 class="font-weight-bold text-uppercase text-4 mb-3">근로자 정보</h4>
			<table class="shop_table cart-totals mb-5">
				<tbody>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">사원번호<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${worker.empNumber}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">이름<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${worker.name}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">카드번호<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${worker.cardNumber}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">핸드폰번호<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${fn:substring(worker.phoneNumber,0,3)}-${fn:substring(worker.phoneNumber,3,7)}-${fn:substring(worker.phoneNumber,7,11)}" /></span>
						</td>
					</tr>
				</tbody>
			</table>
			<form action="/worker" method="post">
				<input type="hidden" name="_method" value="delete" />
				<input type="hidden" name="empNumber" value="${worker.empNumber}"/>
				<input type="hidden" name="isDelete" value="Y" />
				<input type="submit" value="삭제" class="btn btn-primary btn-modern float-right" />
			</form>
			<div class="col-lg-10">
				<a href="${request.getContextPath()}/worker/${worker.empNumber}/form"><input type="button" value="수정" class="btn btn-primary btn-modern float-right" /></a>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>