<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
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
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>