<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
	
	
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
				<div class="col-xl-3" style="float:right;">
			        <button type="button" onclick="showWorkerRgstForm()" style="float:right;" class="btn btn-outline-primary">근로자 등록</button>
			    </div>
			    <!-- 테이블 -->
				<table class="table table-striped table-hover">
				    <thead>
				    <tr>
				        <th scope="col">#</th>
				        <th scope="col">근로자 이름</th>
				        <th scope="col">연락처</th>
				        <th scope="col">기록 시간</th>
				        <th scope="col">착용 여부</th>
				        <th scope="col">게이트웨이 코드</th>
				        <th scope="col">안전모 코드</th>
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