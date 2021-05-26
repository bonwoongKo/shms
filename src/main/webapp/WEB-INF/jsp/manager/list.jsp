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
									<input type="submit" value="삭제" /> <br>
								</td>
							</form>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<form action="/manager/form" method="get">
			<input type="submit" value="등록" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>