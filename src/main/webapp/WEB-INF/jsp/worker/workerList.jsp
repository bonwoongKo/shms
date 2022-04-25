<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
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
		// 비어있는 값 체크
		var rgstEmpNum = document.getElementById('rgstEmpNum').value;
		if (rgstEmpNum == "") {
			$("#rgstEmpNum").attr('class', 'form-control is-invalid');
		} else {
			// 사원번호 중복체크
			$.ajax({
	      		url			: '/manager/doubleCheck',
	      		method		: 'POST',
	      		traditional	: true,
	      		data        : {
	      			'empNum'  :  rgstEmpNum
	      		},
	      		success		: function(Data) {
	      			Data = "N";
	      			if (Data == "Y") {
	      				$("#rgstEmpNum").attr('class', 'form-control is-invalid');
	      			} else {
	      				$("#rgstEmpNum").attr('class', 'form-control is-valid');
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
		} else {
			$("#rgstName").attr('class', 'form-control is-valid');
		}
		
		var rgstPhoneNum = document.getElementById('rgstPhoneNum').value;
		if (rgstPhoneNum == "") {
			$("#rgstPhoneNum").attr('class', 'form-control is-invalid');
		} else {
			$("#rgstPhoneNum").attr('class', 'form-control is-valid');
		}
		
		var rgstJob = document.getElementById('rgstJob').value;
		if (rgstJob == "") {
			$("#rgstJob").attr('class', 'form-control is-invalid');
		} else {
			$("#rgstJob").attr('class', 'form-control is-valid');
		}
		
		
		// form-control is-valid
		// form-control is-invalid
		// DB 형식 체크
		rgstManager();
	}
	
	// 안전관리자 사원번호 중복체크
	function empNumDoubleCheck() {
		alert("사원번호 중복체크");
		
	}
	
	// 안전 관리자 등록
	function rgstManager(){
		alert("안전관리자 등록");
		//var ajaxFrm = $('form[name=managerRgst]').serialize();
		
		var empNum = document.getElementById('rgstEmpNum').value;
		var name = document.getElementById('rgstName').value;
		var phoneNum = document.getElementById('rgstPhoneNum').value;
		var job = document.getElementById('rgstJob').value;
		$.ajax({
       		url			: '/manager/rgstManager',
       		method		: 'POST',
       		traditional	: true,
       		data		: {
       			'empNum'   : empNum,
       			'name'     : name,
       			'phoneNum' : phoneNum,
       			'job'      : job
       		},
       		success		: function(data) {
       			alert("success");
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 안전 관리자 수정 검증
	function editValidationCheck(){
		alert("수정검증");
		
		editManager();
	}
	
	// 안전 관리자 수정
	function editManager(){
		alert("안전관리자 수정");
		//var ajaxFrm = $('form[name=managerRgst]').serialize();
		
		var empNum = document.getElementById('viewEmpNum').value;
		var name = document.getElementById('viewName').value;
		var phoneNum = document.getElementById('viewPhoneNum').value;
		var job = document.getElementById('viewJob').value;
		$.ajax({
       		url			: '/manager/editManager',
       		method		: 'POST',
       		traditional	: true,
       		data		: {
       			'empNum'   : empNum,
       			'name'     : name,
       			'phoneNum' : phoneNum,
       			'job'      : job
       		},
       		success		: function(data) {
       			alert("success");
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 안전 관리자 삭제
	function delManager(){
		alert("안전관리자 삭제");
		
		var empNum = document.getElementById("viewEmpNum").value;
		alert("empNum : " + empNum);
		$.ajax({
      		url			: '/manager/deleteManager',
      		method		: 'POST',
      		traditional	: true,
      		data        : {
      			'empNum'  :  empNum
      		},
      		success		: function(Data) {
      			/* popup 대체요망 */
     			alert("success");
      		},
      		error		: function(jqXHR, textStatus, errorThrown) {
      			/* popup 대체요망 */
      			alert("error 발생");
      		}
      	});
	}
	
	// 비밀번호 초기화
	function resetPw(){
		alert("비밀번호 초기화");
		
		var empNum = document.getElementById("viewEmpNum").value;
		alert("empNum : " + empNum);
		$.ajax({
      		url			: '/manager/resetPw',
      		method		: 'POST',
      		traditional	: true,
      		data        : {
      			'empNum'  :  empNum
      		},
      		success		: function(Data) {
      			/* popup 대체요망 */
     			alert("success");
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
				</div>
			</div>
			<div class="card-body">
				<div class="col-xl-3" style="float:right;">
			        <button type="button" onclick="showWorkerRgstForm()" style="float:right;" class="btn btn-outline-primary">근로자 등록</button>
			    </div>
			    <!-- 테이블 -->
				<table class="table table-striped table-hover">
				    <thead>
				    <tr>
				        <th scope="col">#</th>
				        <th scope="col">사원번호</th>
				        <th scope="col">성함</th>
				        <th scope="col">연락처</th>
				        <th scope="col">담당 안전관리자 사원번호</th>
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
				
				<!-- 페이징 -->
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center"">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>	
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
				
				<!-- 안전 관리자 등록 폼 -->
				<form id="workerRgst" name="workerRgst" action="/worker/rgstWorker" method="post" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">신규 안전관리자 등록</p>
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
				      안전관리자 사원번호를 입력하세요.
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