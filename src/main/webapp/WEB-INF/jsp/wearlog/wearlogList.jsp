<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	// table
	$(document).ready(function() {
	    $('#example').DataTable();
	});
	
</script>

<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<h3 class="fw-bold">착용 기록 조회</h3>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				<div class="row">
				    <div class="col-xl-9">
				        근로자 착용 기록 목록
				    </div>
				</div>
			</div>
			<div class="card-body">
			    <!-- 테이블 -->
				<table id="example" class="table table-striped" style="width:100%">
			        <thead>
			            <tr>
			            	<th>순번</th>
			                <th>근로자 이름</th>
			                <th>연락처</th>
			                <th>수신 게이트웨이</th>
			                <th>착용 안전모</th>
			                <th>기록 시간</th>
			                <th>착용 여부</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<c:forEach items="${rows}" var="wearLog">
                   			<c:set var="i" value="${i+1}"/>
                   			<tr onclick="location.href='/wearlog/${wearLog.workerNum}/${wearLog.recordTime}'">
	                            <th scope="row">${i}</th>
	                            <td>${wearLog.worker.name}</td>
						        <td>${wearLog.worker.phoneNum}</td>
						        <td>${wearLog.gatewayCode}</td>
						        <td>${wearLog.hatCode}</td>
						        <td>${wearLog.recordTime}</td>
						        <c:if test="${wearLog.isWear eq 'Y'}">
								  <td>착용</td>
								</c:if>
								<c:if test="${wearLog.isWear eq 'N'}">
								  <td>미착용</td>
								</c:if>
                        	</tr>
						</c:forEach> 
			        </tbody>
			    </table>
			</div>
			<div class="card-footer small text-muted">
				
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>