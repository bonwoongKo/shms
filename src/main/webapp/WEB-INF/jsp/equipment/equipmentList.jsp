<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<h1>장비 관리</h1>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				장비 목록
				<div class="btn-group" style="float:right;" role="group" aria-label="Basic radio toggle button group">
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">모든 장비</label>
				    
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">게이트웨이</label>
				
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
				    <label class="btn btn-outline-primary" for="btnradio3">안전모</label>
				</div>
			</div>
			<div class="card-body">
			    <!-- 테이블 -->
				<table class="table table-striped table-hover">
				    <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">장비번호</th>
				      <th scope="col">구분</th>
				      <th scope="col">사용 여부</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>H001</td>
				      <td>안전모</td>
				      <td>사용중</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>H002</td>
				      <td>안전모</td>
				      <td>사용중</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>G001</td>
				      <td>게이트웨이</td>
				      <td>사용중</td>
				    </tr>
				  </tbody>
				</table>
			</div>
			<div class="card-footer small text-muted">
				<ol class="breadcrumb" style="float:right;"> 
				    <li class="breadcrumb-item active">추후 000 분에 조회되었습니다로 하단에 체크</li>
				</ol> 
			</div>
		</div>
	</div>
</div>



<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>