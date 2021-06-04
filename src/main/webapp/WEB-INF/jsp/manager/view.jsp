<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
			<h4 class="font-weight-bold text-uppercase text-4 mb-3">내 정보</h4>
			<table class="shop_table cart-totals mb-5">
				<tbody>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">사원번호<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${manager.empNumber}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">이름<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${manager.name}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">핸드폰번호<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="${manager.phoneNumber}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<strong class="d-block text-color-dark line-height-1 font-weight-semibold">직책<span class="product-qty"></span></strong>
						</td>
						<td class="text-right align-top">
							<span class="d-block text-color-dark line-height-1 font-weight-semibold"><c:out value="안전관리자" /></span>
						</td>
					</tr>
				</tbody>
			</table>	
			<form action="/manager/${manager.empNumber}/form" method="get" style="display:inline-block; float: right">
				<input type="submit" class="btn btn-primary mb-2" value="수정" />
			</form>		
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>
