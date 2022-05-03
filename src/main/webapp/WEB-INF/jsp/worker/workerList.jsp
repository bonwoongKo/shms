<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	//table
	$(document).ready(function() {
	    $('#example').DataTable();
	});
	
	//페이지 로드 시
	$(function(){
		//초기 상세 및 등록 화면을 모두 숨김처리
		$("#workerView").hide();
		$("#workerRgst").hide();
	});
	
	// TODO 페이징 관련
	
	// 근로자 등록 버튼 클릭 시
    function showWorkerRgstForm() {
    	$("#workerView").hide();
    	$("#workerRgst").show();
    }
	
	//안전관리자 상세조회
	function showWorkerView(workerNum){
		alert("근로자 상세조회 : " + workerNum);
		$("#workerRgst").hide();
		$.ajax({
      		url			: '/worker/' + workerNum + '',
      		method		: 'GET',
      		traditional	: true,
      		data        : {
      			'workerNum'  :  workerNum
      		},
      		success		: function(Data) {
     			$("#viewWorkerNum").val(Data.workerNum);
      			$("#viewName").val(Data.name);
      			$("#viewPhoneNum").val(Data.phoneNum);
      			$("#viewCardNum").val(Data.cardNum);
      			$("#viewEmpNum").val(Data.empNum);
      			
      			$("#theFstRgstDttm").val(Data.theFstRgstDttm);
      			$("#theFstRgstUserId").val(Data.theFstRgstUserId);
      			$("#fnlChngDttm").val(Data.fnlChngDttm);
      			$("#fnlChngUserId").val(Data.fnlChngUserId);
      		},
      		error		: function(jqXHR, textStatus, errorThrown) {
      			/* popup 대체요망 */
      			alert("error 발생");
      		}
      	});
		
		$("#workerView").show();
	}
	
	// 근로자 등록 검증
	function rgstValidationCheck(){
		alert("등록 검증");
		//var rgstEmpNum = document.getElementById('rgstEmpNum').value;
		var rgstWorkerNum = document.getElementById('rgstWorkerNum').value;
		if (rgstWorkerNum == "") {
			$("#rgstWorkerNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			// 근로자 중복체크
			$.ajax({
	      		url			: '/worker/doubleCheck',
	      		method		: 'POST',
	      		traditional	: true,
	      		data        : {
	      			'workerNum'  :  rgstWorkerNum
	      		},
	      		success		: function(Data) {
	      			if (Data == "Y") {
	      				$("#rgstWorkerNum").attr('class', 'form-control is-invalid');
	      				return;
	      			} else if (Data == "N") {
	      				$("#rgstWorkerNum").attr('class', 'form-control is-valid');
	      			}
	      		},
	      		error		: function(jqXHR, textStatus, errorThrown) {
	      			/* popup 대체요망 */
	      			alert("error 발생");
	      		}
	      	});
		}
		
		var rgstName = document.getElementById('rgstName').value;
		if (rgstName == "") {
			$("#rgstName").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstName").attr('class', 'form-control is-valid');
		}
		
		var rgstPhoneNum = document.getElementById('rgstPhoneNum').value;
		if (rgstPhoneNum == "") {
			$("#rgstPhoneNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstPhoneNum").attr('class', 'form-control is-valid');
		}
		
		var rgstCardNum = document.getElementById('rgstCardNum').value;
		if (rgstCardNum == "") {
			$("#rgstCardNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstCardNum").attr('class', 'form-control is-valid');
		}
		
		var rgstEmpNum = document.getElementById('rgstEmpNum').value;
		if (rgstEmpNum == "") {
			$("#rgstEmpNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			// 존재하는 안전관리자 사원번호인지 체크
			$.ajax({
	      		url			: '/worker/doubleCheck',
	      		method		: 'POST',
	      		traditional	: true,
	      		data        : {
	      			'empNum'  :  rgstEmpNum
	      		},
	      		success		: function(Data) {
	      			if (Data == "Y") {
	      				$("#rgstEmpNum").attr('class', 'form-control is-valid');
	      			} else if (Data == "N") {
	      				$("#rgstEmpNum").attr('class', 'form-control is-invalid');
	      				return;
	      			}
	      		},
	      		error		: function(jqXHR, textStatus, errorThrown) {
	      			/* popup 대체요망 */
	      			alert("error 발생");
	      		}
	      	});
		}
		
		// DB 형식 체크
		rgstManager();
	}
	
	// 근로자 등록
	function rgstManager(){
		alert("근로자 등록");
		
		var workerNum = document.getElementById('rgstWorkerNum').value;
		var empNum = document.getElementById('rgstEmpNum').value;
		var name = document.getElementById('rgstName').value;
		var phoneNum = document.getElementById('rgstPhoneNum').value;
		var cardNum = document.getElementById('rgstCardNum').value;
		$.ajax({
       		url			: '/worker',
       		method		: 'POST',
       		traditional	: true,
       		data		: {
       			'workerNum'  : workerNum,
       			'empNum'     : empNum,
       			'name'       : name,
       			'phoneNum'   : phoneNum,
       			'cardNum'    : cardNum
       		},
       		success		: function(data) {
       			location.reload();
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 근로자 수정 검증
	function editValidationCheck(){
		alert("근로자 수정 검증");
		
		editManager();
	}
	
	// 근로자 수정
	function editManager(){
		alert("근로자 수정");
		var workerNum = document.getElementById('viewWorkerNum').value;
		var empNum = document.getElementById('viewEmpNum').value;
		var name = document.getElementById('viewName').value;
		var phoneNum = document.getElementById('viewPhoneNum').value;
		var cardNum = document.getElementById('viewCardNum').value;
		$.ajax({
       		url			: '/worker',
       		method		: 'PUT',
       		traditional	: true,
       		data		: {
       			'workerNum' : workerNum,
       			'empNum'    : empNum,
       			'name'      : name,
       			'phoneNum'  : phoneNum,
       			'cardNum'   : cardNum
       		},
       		success		: function(data) {
       			if (data == 'Y') {
       				alert("success");
           			location.reload();
       			} else if (data == 'N') {
       				alert("수정 실패");
       			}
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 안전 관리자 삭제
	function delManager(){
		alert("안전관리자 삭제");
		var workerNum = document.getElementById('viewWorkerNum').value;
		$.ajax({
      		url			: '/worker',
      		method		: 'DELETE',
      		traditional	: true,
      		data        : {
      			'workerNum'  :  workerNum
      		},
      		success		: function(Data) {
      			if (Data == 'Y') {
           			location.reload();
       			} else if (Data == 'N') {
       				alert("삭제 실패");
       			}
      		},
      		error		: function(jqXHR, textStatus, errorThrown) {
      			/* popup 대체요망 */
      			alert("error 발생");
      		}
      	});
	}
	
</script>

<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<h3 class="fw-bold">근로자 관리</h3>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				<div class="row">
				    <div class="col-xl-9">
				        근로자 목록
				    </div>
				    <div class="col-xl-3" style="float:right;">
				        <button type="button" onclick="showWorkerRgstForm()" style="float:right;" class="btn btn-outline-primary">근로자 등록</button>
				    </div>
				</div>
			</div>
			<div class="card-body">
				<!-- 테이블 -->
				<table id="example" class="table table-striped" style="width:100%">
			        <thead>
			            <tr>
			                <th>순번</th>
			                <th>사원번호</th>
			                <th>성함</th>
			                <th>연락처</th>
			                <th>담당 안전관리자 사원번호</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<c:forEach items="${workerList}" var="worker">
	                   		<c:set var="i" value="${i+1}"/>
	                   		<tr id="tr${worker.workerNum}" onclick="showWorkerView('${worker.workerNum}')">
	                            <th scope="row">${i}</th>
	                            <td>${worker.workerNum}</td>
						        <td>${worker.name}</td>
						        <td>${worker.phoneNum}</td>
						        <td>${worker.empNum}</td>
	                        </tr>
						</c:forEach>
			        </tbody>
			    </table>
			</div>
			<div class="card-footer small text-muted">
				<!-- 상세보기 -->
				<form id="workerView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">근로자 상세조회</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" id="viewWorkerNum" readonly class="form-control" value="123123123">
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="viewName" value="123">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
			          근로자 성함을 입력하세요.
			        </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="viewPhoneNum" value="01011111111">
				      <div class="valid-feedback">
				      </div>
				      <div class="invalid-feedback">
			            근로자 연락처를 입력하세요.
			          </div>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom03" class="form-label">카드번호</label>
				    <div class="input-group mb-3">
					  <input type="text" class="form-control" id="viewCardNum" value="01011111111">
					</div>
				    <div class="invalid-feedback">
				      Please provide a valid city.
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom03" class="form-label">담당 안전관리자 사원번호</label>
				    <div class="input-group mb-3">
					  <input type="text" class="form-control" id="viewEmpNum" value="01011111111">
					</div>
				    <div class="invalid-feedback">
				      Please provide a valid city.
				    </div>
				  </div>
				  <div class="col-md-4"></div>
				  
				  <div class="col-md-3">
				    <label for="validationCustom01" class="form-label">최초 등록일</label>
				    <input type="text" readonly class="form-control-plaintext" id="theFstRgstDttm" value="2022-04-20">
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustom02" class="form-label">최초 등록 사용자</label>
				    <input type="text" readonly class="form-control-plaintext" id="theFstRgstUserId" value="구본웅">
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustomUsername" class="form-label">최종 수정일</label>
				    <div class="input-group has-validation">
				        <input type="text" readonly class="form-control-plaintext" id="fnlChngDttm" value="2022-04-20">
				    </div>
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustomUsername" class="form-label">최종 수정 사용자</label>
				    <div class="input-group has-validation">
				      <input type="text" readonly class="form-control-plaintext" id="fnlChngUserId" value="구본웅">
				    </div>
				  </div>
				  <div class="col-md-12">
				    <div class="d-grid gap-2 d-md-block" style="float:right;"> 
				      <button type="button" onclick="editValidationCheck()" class="btn btn-outline-primary">저장</button>
				      <button type="button" onclick="delManager()" class="btn btn-outline-danger">삭제</button>
			    	</div>
				  </div>
				</form>
				
				<!-- 근로자 등록 폼 -->
				<form id="workerRgst" name="workerRgst" action="/worker/rgstWorker" method="post" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">신규 근로자 등록</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" class="form-control" id="rgstWorkerNum" value="">
				    <div class="valid-feedback">
				      사용할 수 있는 사원번호입니다.
				    </div>
				    <div class="invalid-feedback">
			          중복되지 않는 사원번호를 입력하세요.
			        </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="rgstName" value="">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
			          성함을 입력하세요.
			        </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="rgstPhoneNum" value="">
				      <div class="valid-feedback">
				      </div>
				      <div class="invalid-feedback">
				        연락처를 입력하세요.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">카드번호</label>
				    <input type="text" class="form-control" id="rgstCardNum" value="">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				      카드번호를 입력하세요.
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">담당 안전관리자 사원번호</label>
				    <input type="text" class="form-control" id="rgstEmpNum" value="">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				      정확한 안전관리자 사원번호를 입력하세요.
				    </div>
				  </div>
				  <div class="col-md-12">
				    <div class="d-grid gap-2 d-md-block" style="float:right;"> 
				      <button type="button" onclick="rgstValidationCheck()" class="btn btn-outline-primary">저장</button>
			    	</div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  팝업 테스트
</button>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>