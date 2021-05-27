<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		manager_view
		<div class="call-to-action with-full-borders mb-5">
			<label>사원번호</label>
			<input type="text" value="${manager.empNumber}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<label>이름</label>
			<input type="text" value="${manager.name}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<label>핸드폰번호</label>
			<input type="text" value="${manager.phoneNumber}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<c:if test="${manager.job eq 'M'}">
				<label>직책</label>
				<input type="text" value="안전관리자" class="form-control border-radius-0 h-auto py-2" readonly/>
			</c:if>
		</div>
			<form action="/manager/${manager.empNumber}/form" method="get" style="display:inline-block; float: right">
				<input type="submit" class="btn btn-primary mb-2" value="수정" />
			</form>
			

<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>
