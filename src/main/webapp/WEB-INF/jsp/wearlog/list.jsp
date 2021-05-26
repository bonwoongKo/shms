<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>근로자 이름</th>
					<th>연락처</th>
					<th>기록 시간</th>
					<th>착용 여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${rows}" var="wearLog">
					<tr onclick="location.href='/wearlog/${wearLog.empNumber}/${wearLog.time}'">
						<td>
							<label>${wearLog.worker.name}</label>
						</td>
						<td>
							<label>${wearLog.worker.phoneNumber}</label>
						</td>
						<td>
							<label>${wearLog.time}</label>
						</td>
						<td>
							<label>${wearLog.isWear}</label>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>