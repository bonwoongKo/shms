<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<h2 class="font-weight-extra-bold">안전관리자</h2>
	
		<table class="table table-hover">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>이름</th>
					<th>연락처</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${managerList}" var="manager">
					<c:if test="${manager.job eq 'M'}">
						<tr>
							<form action="/manager" method="post">
								<input type="hidden" name="_method" value="delete" />
								<input type="hidden" name="code" value="${manager.empNumber}" />
								<input type="hidden" name="isDelete" value="Y" />
								<td>
									<label>${manager.empNumber}</label>
								</td>
								<td>
									<label>${manager.name}</label>
								</td>
								<td>
									<label>${manager.phoneNumber}</label>
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