<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		
		<div class="float-left col-lg-4">
			<input id="name" type="text" name="name" placeholder="검색할 이름을 입력해주세요." class="form-control"  />
		</div>
		<div class="float-left">
			<a><input id="search" type="button" value="검색" class="btn btn-outline btn-primary btn-sm mb-2 form-control" /></a>
		</div>
		<div id="list">
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
		</div>
		
		<script>
			document.getElementById("search").addEventListener("click", search);
			function search() {
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					console.log(xhr.readyState);
					
					if (xhr.readyState === xhr.DONE) {
						if (xhr.status === 200 || xhr.status === 201) {	
							var rows = JSON.parse(xhr.responseText);
							
							if (rows.length === 0) {
								document.getElementById("list").innerHTML = "검색결과가 없습니다";
							} else {
								var html =
										"<table class=\"table table-hover\">";
								html += "<tr>";
								html += "   <th>근로자 이름</th>";
								html += "	<th>연락처</th>";
								html += "	<th>기록 시간</th>";
								html += "	<th>착용 여부</th>";
								html += "<tr>";
								
								for (var i = 0; i < rows.length; i++) {
									html += "<tr onclick='location.href='/wearlog/'" + rows[i].empNumber + ">";
									html += "	<td>" + rows[i].worker.name + "</td>";
									html += "	<td>" + rows[i].worker.phoneNumber + "</td>";
									html += "	<td>" + rows[i].time + "</td>";
									html += "	<td>" + rows[i].isWear + "</td>";
									html += "</tr>";
								}
								
								html += "</table>";
								
								document.getElementById("list").innerHTML = html;
							}
						} else {
							console.error(xhr.responseText);
						}
					}
				};
				
				var name = document.getElementById("name").value;
				if (!name) {
					name = 0;
				}
				xhr.open("GET", "http://localhost:8080/wearlog/search/" + name , true);
				xhr.send();
			};
		</script>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>