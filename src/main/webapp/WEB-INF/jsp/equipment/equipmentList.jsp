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
		$("#equipmentView").hide();
		$("#equipmentRgst").hide();
	});
	
	//장비 등록 버튼 클릭 시
	function showEquipmentRgstForm() {
		$("#equipmentView").hide();
		$("#equipmentRgst").show();
	}
	
	// 장비 상세조회
	function showEquipmentView(code) {
		alert("장비 상세조회 : " + code);
		$("#equipmentRgst").hide();
		$.ajax({
      		url			: '/equipment/' + code + '',
      		method		: 'GET',
      		traditional	: true,
      		data        : {
      			'code'  :  code
      		},
      		success		: function(Data) {
     			$("#viewCode").val(Data.code);
     			$("#viewSort").val(Data.sort);
      			$("#viewEmpNum").val(Data.empNum);
      			$("#viewIsUse").val(Data.isUse);
      			
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
		
		$("#equipmentView").show();
	}

	// 장비 등록 검증
	function rgstValidationCheck(){
		alert("등록 검증");
		// 비어있는 값 체크
		var rgstCode = document.getElementById('rgstCode').value;
		if (rgstCode == "") {
			$("#rgstCode").attr('class', 'form-control is-invalid');
			
			return;
		} else {
			// 장비코드 중복체크
			$.ajax({
	      		url			: '/equipment/doubleCheck',
	      		method		: 'POST',
	      		traditional	: true,
	      		data        : {
	      			'code'  :  rgstCode
	      		},
	      		success		: function(Data) {
	      			if (Data == "Y") {
	      				$("#rgstCode").attr('class', 'form-control is-invalid');
	      				
	      				return;
	      			} else {
	      				$("#rgstCode").attr('class', 'form-control is-valid');
	      			}
	      		},
	      		error		: function(jqXHR, textStatus, errorThrown) {
	      			/* popup 대체요망 */
	      			alert("error 발생");
	      		}
	      	});
		}
		
		var rgstSort = document.getElementById('rgstSort').value;
		if (rgstSort == "") {
			$("#rgstSort").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstSort").attr('class', 'form-control is-valid');
		}
		
		var rgstEmpNum = document.getElementById('rgstEmpNum').value;
		if (rgstEmpNum == "") {
			$("#rgstEmpNum").attr('class', 'form-control is-invalid');
			return;
		} else {
			// 존재하는 안전관리자 사원번호인지 체크
			$.ajax({
	      		url			: '/equipment/doubleCheck',
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
		
		var rgstIsUse = document.getElementById('rgstIsUse').value;
		if (rgstIsUse == "") {
			$("#rgstIsUse").attr('class', 'form-control is-invalid');
			return;
		} else {
			$("#rgstIsUse").attr('class', 'form-control is-valid');
		}
		
		// DB 형식 체크
		rgstEquipment();
	}
	
	function rgstEquipment(){
		alert("장비 등록");
		
		var code = document.getElementById('rgstCode').value;
		var sort = document.getElementById('rgstSort').value;
		var empNum = document.getElementById('rgstEmpNum').value;
		var isUse = document.getElementById('rgstIsUse').value;
		
		$.ajax({
       		url			: '/equipment',
       		method		: 'POST',
       		traditional	: true,
       		data		: {
       			'code'   : code,
       			'sort'   : sort,
       			'empNum' : empNum,
       			'isUse'  : isUse
       		},
       		success		: function(data) {
       			location.reload();
       		},
       		error		: function(jqXHR, textStatus, errorThrown) {
       			alert("error 발생");
       		}
       	});
	}
	
	// 장비 수정 검증 TODO
	function editValidationCheck(){
		alert("장비 수정 검증");
		
		editEquipment();
	}
	
	// 근로자 수정
	function editEquipment(){
		alert("장비 수정");
		var code = document.getElementById('viewCode').value;
		var sort = document.getElementById('viewSort').value;
		var empNum = document.getElementById('viewEmpNum').value;
		var isUse = document.getElementById('viewIsUse').value;
		$.ajax({
       		url			: '/equipment',
       		method		: 'PUT',
       		traditional	: true,
       		data		: {
       			'code'    : code,
       			'sort'    : sort,
       			'empNum'  : empNum,
       			'isUse'   : isUse
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
	
	// 장비 삭제
	function delManager(){
		alert("장비 삭제");
		var code = document.getElementById('viewCode').value;
		$.ajax({
      		url			: '/equipment',
      		method		: 'DELETE',
      		traditional	: true,
      		data        : {
      			'code'  :  code
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
<!-- 상단 여백 -->
<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<h3 class="fw-bold">장비 관리</h3>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				<div class="row">
				    <div class="col-xl-9">
				        장비 목록
				    </div>
				    <div class="col-xl-3" style="float:right;">
				        <button type="button" onclick="showEquipmentRgstForm()" style="float:right;" class="btn btn-outline-primary">장비 등록</button>
					</div>
				</div>
			</div>
			<div class="card-body">
				<!-- 모든장비 / 게이트웨이/ 안전모 3단버튼
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">모든 장비</label>
				    
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">게이트웨이</label>
				
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
				    <label class="btn btn-outline-primary" for="btnradio3">안전모</label>
				</div>
				
				<ol class="breadcrumb mb-4"> 
				    <li class="breadcrumb-item active"></li>
				</ol> 
				-->
				
			    <!-- 테이블 -->
				<table id="example" class="table table-striped" style="width:100%">
			        <thead>
			            <tr>
			                <th>순번</th>
			                <th>장비번호</th>
			                <th>구분</th>
			                <th>사용 여부</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<c:forEach items="${equipmentList}" var="equipment">
	                   		<c:set var="i" value="${i+1}"/>
	                   		<tr id="tr${equipment.code}" onclick="showEquipmentView('${equipment.code}')">
	                            <th scope="row">${i}</th>
	                            <td>${equipment.code}</td>
	                            <c:if test="${equipment.sort eq 'H'}">
								  <td>안전모</td>
								</c:if>
								<c:if test="${equipment.sort eq 'G'}">
								  <td>게이트웨이</td>
								</c:if>
								<c:if test="${equipment.isUse eq 'Y'}">
								  <td>사용 중</td>
								</c:if>
								<c:if test="${equipment.isUse eq 'N'}">
								  <td>미사용</td>
								</c:if>
	                        </tr>
						</c:forEach>
			        </tbody>
			    </table>
			    
			</div>
			<div class="card-footer small text-muted">
				<!-- 상세보기 -->
				<form id="equipmentView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">장비 상세조회</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">장비코드</label>
				    <input type="text" id="viewCode" readonly class="form-control" value="">
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" readonly class="form-label">구분</label>
				    <select class="form-select" id="viewSort" required>
				      <option value="H">안전모</option>
				      <option value="G">게이트웨이</option>
				    </select>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">담당 안전관리자 사원번호</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="viewEmpNum" value="">
				      <div class="valid-feedback">
				        존재하는 안전관리자입니다.
				      </div>
				      <div class="invalid-feedback">
				        정확한 안전관리자 사원번호를 입력해주세요.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom03" class="form-label">사용 여부</label>
				    <div class="input-group mb-4">
				      <select class="form-select" id="viewIsUse" required>
				        <option value="Y">사용 중</option>
				        <option value="N">미사용</option>
				      </select>
					</div>
				    <div class="valid-feedback">
				    </div>
				  </div>
				  <div class="col-md-8"></div>
				  
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
				
				<!-- 장비 등록 폼 -->
				<form id="equipmentRgst" name="equipmentRgst" action="/equipment/rgstEquipment" method="post" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">신규 장비 등록</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">장비코드</label>
				    <input type="text" class="form-control" id="rgstCode" value="">
				    <div class="valid-feedback">
				      사용할 수 있는 장비코드입니다.
				    </div>
				    <div class="invalid-feedback">
			          중복되지 않는 장비코드를 입력하세요.
			        </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">구분</label>
				    <select class="form-select" id="rgstSort" required>
				      <option value="H">안전모</option>
				      <option value="G">게이트웨이</option>
				    </select>
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
			        </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">담당 안전관리자 사원번호</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="rgstEmpNum" value="">
				      <div class="valid-feedback">
				        존재하는 안전관리자입니다.
				      </div>
				      <div class="invalid-feedback">
				        정확한 안전관리자 사원번호를 입력해주세요.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">사용 여부</label>
				    <select class="form-select" id="rgstIsUse" required>
				      <option value="Y">사용 중</option>
				      <option value="N">미사용</option>
				    </select>
				    <div class="valid-feedback">
				    </div>
				    <div class="invalid-feedback">
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

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>