<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	// table
	$(document).ready(function() {
	    $('#example').DataTable();
	});

	//페이지 로드 시
	$(function(){
		//초기 상세 및 등록 화면을 모두 숨김처리
		$("#managerView").hide();
		$("#managerRgst").hide();
	});
	
	//안전 관리자 등록 버튼 클릭 시
    function showManagerRgstForm() {
    	$("#managerView").hide();
    	$("#managerRgst").show();
    }
	
	//안전관리자 상세조회
	function showManagerView(empNum){
		alert("안전관리자 상세조회");
		$("#managerRgst").hide();
		$.ajax({
      		url			: '/manager/' + empNum + '',
      		method		: 'GET',
      		traditional	: true,
      		data        : {
      			'empNum'  :  empNum
      		},
      		success		: function(Data) {
     			$("#viewEmpNum").val(Data.empNum);
      			$("#viewPhoneNum").val(Data.phoneNum);
      			$("#viewName").val(Data.name);
      			$("#viewJob").val(Data.job);
      			
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
		
		$("#managerView").show();
	}
	
	// 안전 관리자 등록 검증
	function rgstValidationCheck(){
		alert("등록 검증");
		// 비어있는 값 체크
		var rgstEmpNum = document.getElementById('rgstEmpNum').value;
		if (rgstEmpNum == "") {
			$("#rgstEmpNum").attr('class', 'form-control is-invalid');
			
			return;
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
	      			if (Data == "Y") {
	      				$("#rgstEmpNum").attr('class', 'form-control is-invalid');
	      				
	      				return;
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
		
		var rgstJob = document.getElementById('rgstJob').value;
		if (rgstJob == "") {
			$("#rgstJob").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstJob").attr('class', 'form-control is-valid');
		}
		
		// DB 형식 체크
		rgstManager();
	}
	
	// 안전 관리자 등록
	function rgstManager(){
		alert("안전관리자 등록");
		var empNum = document.getElementById('rgstEmpNum').value;
		var name = document.getElementById('rgstName').value;
		var phoneNum = document.getElementById('rgstPhoneNum').value;
		var job = document.getElementById('rgstJob').value;
		$.ajax({
       		url			: '/manager',
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
       			location.reload();
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 안전 관리자 수정 검증
	function editValidationCheck(){
		var viewName = document.getElementById('viewName').value;
		if (viewName == "") {
			$("#viewName").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#viewName").attr('class', 'form-control is-valid');
		}
		
		var viewPhoneNum = document.getElementById('viewPhoneNum').value;
		if (viewPhoneNum == "") {
			$("#viewPhoneNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#viewPhoneNum").attr('class', 'form-control is-valid');
		}
		
		var viewJob = document.getElementById('viewJob').value;
		if (viewJob == "") {
			$("#viewJob").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#viewJob").attr('class', 'form-control is-valid');
		}
		
		editManager();
	}
	
	// 안전 관리자 수정
	function editManager(){
		var empNum = document.getElementById('viewEmpNum').value;
		var name = document.getElementById('viewName').value;
		var phoneNum = document.getElementById('viewPhoneNum').value;
		var job = document.getElementById('viewJob').value;
		$.ajax({
       		url			: '/manager',
       		method		: 'PUT',
       		traditional	: true,
       		data		: {
       			'empNum'   : empNum,
       			'name'     : name,
       			'phoneNum' : phoneNum,
       			'job'      : job
       		},
       		success		: function(data) {
       			location.reload();
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
      		url			: '/manager',
      		method		: 'DELETE',
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
      		method		: 'PUT',
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
	<h3 class="fw-bold">안전 관리자 관리</h3>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				<div class="row">
				    <div class="col-xl-9">
				        안전 관리자 목록
				    </div>
				    <div class="col-xl-3" style="float:right;">
				        <button type="button" onclick="showManagerRgstForm()" style="float:right;" class="btn btn-outline-primary">안전 관리자 등록</button>
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
			                <th>직책</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<c:forEach items="${managerList}" var="manager">
                   			<c:set var="i" value="${i+1}"/>
                   			<tr id="tr${manager.empNum}" onclick="showManagerView('${manager.empNum}')">
	                            <th scope="row">${i}</th>
	                            <td>${manager.empNum}</td>
						        <td>${manager.name}</td>
						        <td>${manager.phoneNum}</td>
						        <c:if test="${manager.job eq 'A'}">
								  <td>관리자</td>
								</c:if>
								<c:if test="${manager.job eq 'M'}">
								  <td>사용자</td>
								</c:if>
                        	</tr>
						</c:forEach> 
			        </tbody>
			    </table>
			</div>
			<div class="card-footer small text-muted">
				<!-- 상세보기 -->
				<form id="managerView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">안전관리자 상세조회</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" id="viewEmpNum" readonly class="form-control" value="123123123">
				    <div class="valid-feedback">
				      사용할 수 있는 사원번호입니다.
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="viewName" value="123">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				   	  성함을 입력하세요.
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="viewPhoneNum" value="01011111111">
				      <div class="valid-feedback">
				      </div>
				      <div class="invalid-feedback">
				   	    연락처를 입력하세요.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-5">
				    <label for="validationCustom03" class="form-label">비밀번호</label>
				    <div class="input-group mb-3">
					  <input type="password" class="form-control" id="viewPw" value="**********">
					  <button class="btn btn-outline-secondary" onclick="resetPw()" type="button" id="button-addon2">비밀번호 초기화</button>
					</div>
				    <div class="invalid-feedback">
				    </div>
				  </div>
				  <div class="col-md-3"></div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">직책</label>
				    <select class="form-select" id="viewJob" required>
				      <option value="M">사용자</option>
				      <option value="A">관리자</option>
				    </select>
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				    </div>
				  </div>
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
				<form id="managerRgst" name="managerRgst" action="/manager/rgstManager" method="post" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">신규 안전관리자 등록</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" class="form-control" id="rgstEmpNum" value="">
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
				    <label for="validationCustom04" class="form-label">직책</label>
				    <select class="form-select" id="rgstJob" required>
				      <option value="A">관리자</option>
				      <option value="M">사용자</option>
				    </select>
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				      직책을 선택하세요.
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