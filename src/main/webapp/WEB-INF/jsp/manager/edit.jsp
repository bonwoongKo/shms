<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		manager_edit <br>
		<form action="/manager" method="post">
			<input type="hidden" name="_method" value="put" /> <br>
			
			사원번호 : <input type="text" name="empNumber" value="${manager.empNumber}" /> <br>
			비밀번호 : <input type="text" name="password" /> <br>
			비밀번호 확인 : <input type="text" /> <br>
			이름 : <input type="text" name="name" value="${manager.name}"/> <br>
			연락처 : <input type="text" name="phoneNumber" value="${manager.phoneNumber}" /> <br>
			직책 : <c:if test="${manager.job eq 'M'}">
					<label>안전관리자</label> <br>
				  </c:if>
			<input type="submit" value="수정" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>