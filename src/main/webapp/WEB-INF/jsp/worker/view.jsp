<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		manager_view </br>
		<div class="call-to-action with-full-borders mb-5">
			<label>사원번호</label>
			<input type="text" value="${worker.empNumber}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<label>이름</label>
			<input type="text" value="${worker.name}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<label>카드번호</label>
			<input type="text" value="${worker.phoneNumber}" class="form-control border-radius-0 h-auto py-2" readonly/>
			<label>연락처</label>
			<input type="text" value="${worker.cardNumber}" class="form-control border-radius-0 h-auto py-2" readonly/>
		</div>
			<form action="/worker/${worker.empNumber}/form" method="get" style="display:inline-block">
				<input type="submit" class="btn btn-primary mb-2" value="수정" />
			</form>
			
			<form action="/worker" method="post" style="display:inline-block">
				<input type="hidden" name="_method" value="delete" />
				<input type="hidden" name="empNumber" value="${worker.empNumber}"/>
				<input type="hidden" name="isDelete" value="Y"/>
				<input type="submit" class="btn btn-secondary mb-2" value="삭제" />
			</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>