<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	//페이지 로드 시
	$(function(){
		$("#viewEmpNum").val("${userInfo.empNum}");
		$("#viewName").val("${userInfo.name}");
		$("#viewPhoneNum").val("${userInfo.phoneNum}");
		$("#viewJob").val("${userInfo.job}");
	});
	
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
	
	// 비밀번호 초기화
	function resetPw(){
		var empNum = document.getElementById("viewEmpNum").value;
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
	<h3 class="fw-bold">내 정보</h3>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-body">
			    <!-- 상세보기 -->
				<form id="managerView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" id="viewEmpNum" readonly class="form-control" value="">
				    <div class="valid-feedback">
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="viewName" value="">
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
				   	  성함을 입력하세요.
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="viewPhoneNum" value="">
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
					<div class="valid-feedback">
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
			    	</div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>