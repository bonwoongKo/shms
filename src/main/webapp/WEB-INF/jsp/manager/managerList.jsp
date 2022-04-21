<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>

<script type="text/javascript">
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
		$("#managerRgst").hide();
		$.ajax({
      		url			: '/shms/manager/' + empNum + '',
      		method		: 'GET',
      		traditional	: true,
      		data		: {
      			'empNum' : empNum
      		},
      		success		: function(Data) {
      			$("#managerViewEmpNum").val(Data.empNum);
      			$("#managerViewPhone").val(Data.phoneNum);
      			$("#managerViewName").val(Data.name);
      			$("#managerViewName").val(Data.name);
      		},
      		error		: function(jqXHR, textStatus, errorThrown) {
      			/* popup 대체요망 */
      			alert("error 발생");
      		}
      	});
		
		$("#managerView").show();
	}
	
</script>

<!-- 상단 여백 -->
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
				</div>
			</div>
			<div class="card-body">
				<div class="col-xl-3" style="float:right;">
			        <button type="button" onclick="showManagerRgstForm()" style="float:right;" class="btn btn-outline-primary">안전 관리자 등록</button>
			    </div>
			    <!-- 테이블 -->
				<table class="table table-striped table-hover">
				    <thead>
				    <tr>
				        <th scope="col">#</th>
				        <th scope="col">사원번호</th>
				        <th scope="col">성함</th>
				        <th scope="col">연락처</th>
				        <th scope="col">직책</th>
				    </tr>
				</thead>
				<tbody>
				    <tr id="tr2016244114" onclick="showManagerView('shms000001')">
				        <th scope="row">1</th>
				        <td>2016244114</td>
				        <td>구본웅</td>
				        <td>01024141414</td>
				        <td>관리자</td>
				    </tr>
				    <tr>
				        <th scope="row">2</th>
				        <td>2016244114</td>
				        <td>구본웅</td>
				        <td>01024141414</td>
				        <td>관리자</td>
				    </tr>
				    <tr>
				        <th scope="row">3</th>
				        <td>2016244114</td>
				        <td>구본웅</td>
				        <td>01024141414</td>
				        <td>관리자</td>
				    </tr>
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
				<form id="managerView" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">안전관리자 상세 조회</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" id="managerViewEmpNum" readonly class="form-control" value="2016244114">
				    <div class="valid-feedback">
				      Looks good!
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="managerViewName" value="구본웅">
				    <div class="valid-feedback">
				      Looks good!
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="managerViewPhone" value="01052412414">
				      <div class="invalid-feedback">
				        Please choose a username.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-5">
				    <label for="validationCustom03" class="form-label">비밀번호</label>
				    <div class="input-group mb-3">
					  <input type="password" class="form-control" id="managerViewPw">
					  <button class="btn btn-outline-secondary" type="button" id="button-addon2">비밀번호 초기화</button>
					</div>
				    <div class="invalid-feedback">
				      Please provide a valid city.
				    </div>
				  </div>
				  <div class="col-md-3"></div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">직책</label>
				    <select class="form-select" id="validationCustom04" required>
				      <option>관리자</option>
				      <option>사용자</option>
				    </select>
				    <div class="invalid-feedback">
				      Please select a valid state.
				    </div>
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustom01" class="form-label">최초 등록일</label>
				    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="2022-04-20">
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustom02" class="form-label">최초 등록 사용자</label>
				    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="구본웅">
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustomUsername" class="form-label">최종 수정일</label>
				    <div class="input-group has-validation">
				        <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="2022-04-20">
				    </div>
				  </div>
				  <div class="col-md-3">
				    <label for="validationCustomUsername" class="form-label">최종 수정 사용자</label>
				    <div class="input-group has-validation">
				      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="구본웅">
				    </div>
				  </div>
				</form>
				
				<!-- 안전 관리자 등록 폼 -->
				<form id="managerRgst" class="row g-3 needs-validation" novalidate>
				  <div class="col-md-12">
				    <p class="fs-6">신규 안전관리자 등록</p>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom01" class="form-label">사원번호</label>
				    <input type="text" class="form-control" id="staticEmail" value="">
				    <div class="valid-feedback">
				      Looks good!
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom02" class="form-label">성함</label>
				    <input type="text" class="form-control" id="staticEmail" value="">
				    <div class="valid-feedback">
				      Looks good!
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustomUsername" class="form-label">연락처</label>
				    <div class="input-group has-validation">
				      <input type="text" class="form-control" id="staticEmail" value="">
				      <div class="invalid-feedback">
				        Please choose a username.
				      </div>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <label for="validationCustom03" class="form-label">비밀번호</label>
				    <div class="input-group mb-3">
				      <!-- 의미없는 값임 서비스에서 고정으로 지정할 것 -->
					  <input type="password" readonly class="form-control" id="inputPassword" value="shms@123">
					</div>
				    <div class="invalid-feedback">
				      Please provide a valid city.
				    </div>
				  </div>
				  <div class="col-md-3"></div>
				  <div class="col-md-4">
				    <label for="validationCustom04" class="form-label">직책</label>
				    <select class="form-select" id="validationCustom04" required>
				      <option>관리자</option>
				      <option>사용자</option>
				    </select>
				    <div class="invalid-feedback">
				      Please select a valid state.
				    </div>
				  </div>
				</form>
				
				<div class="d-grid gap-2 d-md-block" style="float:right;"> 
				    <button type="button" class="btn btn-outline-success">저장</button>
				    <button type="button" class="btn btn-outline-danger">삭제</button>
			    </div>
			</div>
		</div>
	</div>
</div>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  팝업 테스트
</button>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>