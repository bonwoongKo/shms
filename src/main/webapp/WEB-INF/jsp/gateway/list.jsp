<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>code</th>
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
									<label>${gateway.registDate}</label>
								</td>
								<td>
									<input type="submit" value="삭제" /> <br>
								</td>
							</form>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<form action="/gateway/form" method="get">
			<input type="submit" value="등록" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>