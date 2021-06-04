<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div style="clear:both">
	<div style="float:left">
		<h2 class="font-weight-extra-bold">착용기록</h2>
	</div>
	<div class="float-right">
		<input id="search" type="submit" value="검색" class="btn btn-outline btn-primary btn-sm mb-2 form-control" />
	</div>
	<div class="float-right col-lg-4" style="padding-left: 0px;">
		<input id="name" type="text" name="name" placeholder="검색할 이름을 입력해주세요." class="form-control" onkeyup="enterkey();" />
	</div>
</div>
<div id="list">
	<table class="table table-hover">
		<thead>
			<tr align="center">
				<th>근로자 이름</th>
				<th>연락처</th>
				<th>기록 시간</th>
				<th>착용 여부</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${rows eq null}">
					<tr align="center">
						<td colspan="4">금일 기록된 기록이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${rows}" var="wearLog">
						<tr onclick="location.href='/wearlog/${wearLog.empNumber}/${wearLog.time}'" align="center">
							<td>
								<label>${wearLog.worker.name}</label>
							</td>
							<td>
								<label>${fn:substring(wearLog.worker.phoneNumber,0,3)}-${fn:substring(wearLog.worker.phoneNumber,3,7)}-${fn:substring(wearLog.worker.phoneNumber,7,11)}</label>
								
							</td>
							<td>
								<fmt:parseDate value="${wearLog.time}" pattern="yyyy-MM-dd'T'HH:mm:ss" var="registDate" type="date"/>
								<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${registDate}"/>
							</td>
							<td>
								<label>${wearLog.isWear}</label>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
<script>
	function enterkey() {
		if (window.event.keyCode == 13) {
			search();
		}
	}
	document.getElementById("search").addEventListener("click", search);
	function search() {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState === xhr.DONE) {
				if (xhr.status === 200 || xhr.status === 201) {	
					var rows = JSON.parse(xhr.responseText);
					if (rows.length === 0) {
						var html =
							"<table class=\"table table-hover\">";
						html += "<thead>";
						html += "	<tr align=\"center\">";
						html += "   	<th>근로자 이름</th>";
						html += "		<th>연락처</th>";
						html += "		<th>기록 시간</th>";
						html += "		<th>착용 여부</th>";
						html += "	<tr>";
						html += "</thead>";
						html += "<tr align=\"center\">";
						html += "<td colspan=\"4\">검색된 기록이 없습니다.</td>";
						html += "</tr>";
						
						document.getElementById("list").innerHTML = html;
					} else {
						var html =
								"<table class=\"table table-hover\" style=\"display:block; width:100%;\">";
						html += "	<thead style=\"display:table; width: calc(100% - 1em); table-layout:fixed;\">";
						html += "		<tr align=\"center\" style=\"width:100%;\">";
						html += "   		<th>근로자 이름</th>";
						html += "			<th>연락처</th>";
						html += "			<th>기록 시간</th>";
						html += "			<th>착용 여부</th>";
						html += "		<tr>";
						html += "	</thead>";
						html += "	<tbody style=\"display:block; overflow:auto; width:100%; height:500px;\">";
						for (var i = 0; i < rows.length; i++) {
							var month = (rows[i].time.monthValue / 10) > 1 ? rows[i].time.monthValue : "0" + rows[i].time.monthValue;
							var day = (rows[i].time.dayOfMonth / 10) > 1 ? rows[i].time.dayOfMonth : "0" + rows[i].time.dayOfMonth;
							var hour = (rows[i].time.hour / 10) > 1 ? rows[i].time.hour : "0" + rows[i].time.hour;
							var minute = (rows[i].time.minute / 10) > 1 ? rows[i].time.minute : "0" + rows[i].time.minute;
							var second = (rows[i].time.second / 10) > 1 ? rows[i].time.second : "0" + rows[i].time.second;
							
							html += "<tr onclick=\"location.href=\'/wearlog/" 
											  + rows[i].empNumber 
											  + "/"
											  + rows[i].time.year
											  + "-"
											  + month
											  + "-"
											  + day
											  + "T"
											  + hour
											  + ":"
											  + minute
											  + ":"
											  + second
											  + "\'\" align=\"center\" style=\"display:table; width:100%; table-layout:fixed;\">";
							html += "	<td>" + rows[i].worker.name + "</td>";
							html += "	<td>" + rows[i].worker.phoneNumber.substring(0,3) + "-" + rows[i].worker.phoneNumber.substring(3,7) + "-" + rows[i].worker.phoneNumber.substring(7,11) + "</td>";
							html += "	<td>" + rows[i].time.year 
											  + "-" 
											  + month 
											  + "-" 
											  + day
											  + " "
											  + hour
											  + ":"
											  + minute
											  + ":"
											  + second
											  + "</td>";
							html += "	<td>" + rows[i].isWear + "</td>";
							html += "</tr>";
						}
						html += "</tbody>"
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
		xhr.open("GET", "${pageContext.request.contextPath}/wearlog/search/" + name , true);
		xhr.send();
	};
</script>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>