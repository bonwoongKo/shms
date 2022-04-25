<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	//페이지 로드 시
	$(function(){
		//초기 상세 및 등록 화면을 모두 숨김처리
		$("#equipmentView").hide();
		$("#equipmentRgst").hide();
	});
	
	// TODO 페이징 관련
	
	//장비 등록 버튼 클릭 시
	function showEquipmentRgstForm() {
		$("#equipmentView").hide();
		$("#equipmentRgst").show();
	}
	
	// 장비 상세조회
	function showEquipmentView(code) {
		alert("장비 상세조회");
		$("#equipmentRgst").hide();
		$.ajax({
      		url			: '/equipment/' + code + '',
      		method		: 'GET',
      		traditional	: true,
      		data        : {
      			'code'  :  code
      		},
      		success		: function(Data) {
     			$("#viewEmpNum").val(Data.empNum);
      			$("#viewPhoneNum").val(Data.phoneNum);
      			$("#viewName").val(Data.name);
      			$("#viewJob").val(Data.job);
      		},
      		error		: function(jqXHR, textStatus, errorThrown) {
      			/* popup 대체요망 */
      			alert("error 발생");
      		}
      	});
		
		$("#equipmentView").show();
	}

</script>
<!-- 상단 여백 -->
<ol class="breadcrumb mb-4"> 
    <li class="breadcrumb-item active"></li>
</ol> 

<div class="row">
	<h1>장비 관리</h1>
	<div class="col-xl-12 col-md-6 mt-4">
		<div class="card mb-4">
			<div class="card-header">
				장비 목록
			</div>
			<div class="card-body">
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">모든 장비</label>
				    
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
				    <label class="btn btn-outline-primary" for="btnradio1">게이트웨이</label>
				
				    <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
				    <label class="btn btn-outline-primary" for="btnradio3">안전모</label>
				</div>
				<div class="col-xl-3" style="float:right;">
			        <button type="button" onclick="showEquipmentRgstForm()" style="float:right;" class="btn btn-outline-primary">장비 등록</button>
			    </div>
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
				    <c:forEach items="${equipmentList}" var="equipment">
                   		<c:set var="i" value="${i+1}"/>
                   		<tr id="tr${equipment.code}" onclick="showEquipmentView('${manager.empNum}')">
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
				<form id="equipmentView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">장비 상세조회</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">장비코드</label>
				    <input type="text" id="viewCode" readonly class="form-control" value="123123123">
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">구분</label>
				    <input type="text" readonly class="form-control" id="viewSort" value="123">
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">담당 안전관리자 사원번호</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="viewEmpNum" value="01011111111">
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
				    <input type="text" class="form-control" id="rgstSort" value="">
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