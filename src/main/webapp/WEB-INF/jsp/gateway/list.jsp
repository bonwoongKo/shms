<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<button type="button" class="btn btn-primary mb-2" onclick="location.href='/gateway'">게이트웨이</button>
		<button type="button" class="btn btn-primary mb-2" onclick="location.href='/hat'">안전모</button>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>일련번호</th>
					<th>등록일</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${gatewayList}" var="gateway">
					<c:if test="${gateway.isDelete eq 'N'}">
						<tr>
							<form action="/gateway" method="post">
								<input type="hidden" name="_method" value="delete" />
								<input type="hidden" name="code" value="${gateway.code}" />
								<input type="hidden" name="isDelete" value="Y" />
								<td>
									<label>${gateway.code}</label>
								</td>
								<td>
									<fmt:parseDate value="${gateway.registDate}" pattern="yyyy-MM-dd" var="registDate" type="date"/>
									<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${registDate}"/>
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
		<form action="/gateway/form" method="get">
			<input type="submit" class="btn btn-primary mb-2" value="등록" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>