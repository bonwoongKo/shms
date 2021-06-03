<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<h2 class="font-weight-extra-bold">안전관리자</h2>
	
		<table class="table table-hover">
			<thead>
				<tr align="center">
					<th>사원번호</th>
					<th>이름</th>
					<th>연락처</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${managerList}" var="manager">
					<c:if test="${manager.job eq 'M'}">
						<tr align="center">
							<form action="/manager" method="post">
								<input type="hidden" name="_method" value="delete" />
								<input type="hidden" name="code" value="${manager.empNumber}" />
								<td>
									<label>${manager.empNumber}</label>
								</td>
								<td>
									<label>${manager.name}</label>
								</td>
								<td>
									<label>${fn:substring(manager.phoneNumber,0,3)}-${fn:substring(manager.phoneNumber,3,7)}-${fn:substring(manager.phoneNumber,7,11)}</label>
									
								</td>
								<td>
									<input type="submit" class="btn btn-secondary mb-2" value="삭제" />
								</td>
							</form>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<form action="/manager/form" method="get">
			<input type="submit" style="float:right" class="btn btn-primary mb-2" value="등록" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>