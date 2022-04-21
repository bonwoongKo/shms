<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<!-- <div class="col-xl-9 col-md-6 mt-2">
		<h3>실시간 모니터링</h3>
		<div id="map" style="width:100%;height:500px;"></div>
		<ol class="breadcrumb mb-4"> 
		    <li class="breadcrumb-item active">추후 000 분에 조회되었습니다로 하단에 체크</li>
		</ol> 	
	</div> -->
	<h1>실시간 모니터링</h1>
	<div class="col-xl-9 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				근로자 위치
			</div>
			<div class="card-body">
				<!-- 지도 영역 -->
			    <div id="map" style="width:100%;height:500px;"></div>
			</div>
			<div class="card-footer small text-muted" >
				<ol class="breadcrumb" style="float:right;"> 
				    <li class="breadcrumb-item active">추후 000 분에 조회되었습니다로 하단에 체크</li>
				</ol> 
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-md-6 mt-4">
	    <!-- 근로자 목록 영역 -->
	    <div class="card mb-4">
			<div class="card-header">
				근로자 목록
			</div>
			<div class="card-body">
				<!-- 근로자 목록 리스트 -->
				<ul class="list-group list-group-flush">
				<div style="overflow-y:auto; overflow-x:hidden; width:100%; height:500px;">
					 <li class="list-group-item">An item</li>
				  <li class="list-group-item">A second item</li>
				  <li class="list-group-item">A third item</li>
				  <li class="list-group-item">A fourth item</li>
				  <li class="list-group-item">And a fifth one</li>
				</div>
				
				</ul>
				<!-- TODO : foreach문 근로자 리스트 뿌리기 -->
				<ul class="list-group list-group-flush">
				    <div style="overflow-y:auto; overflow-x:hidden; width:100%; height:500px;">
				        <li class="list-group-item d-flex justify-content-between align-items-center">
						    A list item
						    <span class="badge bg-primary rounded-pill">확인</span>
						</li>
						<li class="list-group-item">An item</li>
						
						<li class="list-group-item d-flex justify-content-between align-items-center">
						    A second list item
						    <span class="badge bg-primary rounded-pill"></span>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
						    A third list item
						    <span class="badge bg-primary rounded-pill">확인</span>
						</li>
				    </div>
				</ul>
				<!-- <ul class="list-group list-group-flush">
					<div  style="overflow-y:auto; overflow-x:hidden; width:100%; height:500px;">
						<li class="list-group-item">An item</li>
					    <li class="list-group-item">A second item</li>
					    <li class="list-group-item">A third item</li>
					    <li class="list-group-item">A fourth item</li>
					    <li class="list-group-item">And a fifth one</li>
					    <li class="list-group-item">An item</li>
					    <li class="list-group-item">A second item</li>
					    <li class="list-group-item">A third item</li>
					    <li class="list-group-item">A fourth item</li>
					    <li class="list-group-item">And a fifth one</li>
					    <li class="list-group-item">An item</li>
					    <li class="list-group-item">A second item</li>
					    <li class="list-group-item">A third item</li>
					</div>	
				</ul> -->
			</div>
			<div class="card-footer small text-muted">
				<div class="btn-group" role="group" aria-label="Basic mixed styles example">
				    <button type="button" class="btn btn-danger">미착용 보기</button>
				    <button type="button" class="btn btn-success">전체보기</button>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 지도 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=84df5ba3fe6d380ae81cc0059ae8ae59"></script> 

<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
</script>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>