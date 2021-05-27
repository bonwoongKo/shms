<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<div class="call-to-action with-full-borders mb-5">
			사원번호 : <c:out value="${worker.empNumber}" /> <br>
			이름 : <c:out value="${worker.name}" /> <br>
			연락처 : <c:out value="${worker.phoneNumber}" /> <br>
			카드번호 : <c:out value="${worker.cardNumber}" /> <br>
		</div>
			<form action="/worker/${worker.empNumber}/form" method="get" style="display:inline-block">
				<input type="submit" value="수정" />
			</form>
			
			<form action="/worker" method="post" style="display:inline-block">
				<input type="hidden" name="_method" value="delete" /> <br>
				<input type="hidden" name="empNumber" value="${worker.empNumber}"/>
				<input type="hidden" name="isDelete" value="Y"/>
				<input type="submit" value="삭제" />
			</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>