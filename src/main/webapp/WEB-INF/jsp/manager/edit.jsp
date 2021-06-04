<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
		<h4 class="font-weight-bold text-uppercase text-4 mb-3">안전관리자 정보 수정</h4>
			<form action="/manager" method="post" class="needs-validation" onsubmit="return check(this)" >
			<input type="hidden" name="_method" value="put" />
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">사원번호</label>
					<div class="col-lg-9">
						<input type="text" name="empNumber" value="${manager.empNumber}" class="form-control" maxlength="10" readonly>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호</label>
					<div class="col-lg-9">
						<input type="password" name="password" id="pwd" class="form-control" onchange="passwordCheck()" maxlength="20">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
					<div class="col-lg-9">
						<input type="password" name="empNumber" id="pwdCheck" class="form-control" onchange="passwordCheck()" maxlength="20">
						<label id="pwdValid" style="color: red; visibility: hidden;">비밀번호가 일치하지 않습니다.</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">이름</label>
					<div class="col-lg-9">
						<input type="text" name="name" id="name" value="${manager.name}" class="form-control" onchange="nameCheck()" maxlength="10" required>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">연락처</label>
					<div class="col-lg-9">
						<input type="text" name="phoneNumber" id="phoneNumber" value="${manager.phoneNumber}" class="form-control" maxlength="8" required>
					</div>
				</div>			
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">직책</label>
					<div class="col-lg-9">
						<input type="text" id="phoneNumber" name="phoneNumber" value="안전관리자" class="form-control" minlength="11" maxlength="11" readonly>
					</div>
				</div>	
				<input type="submit" value="수정" id="submitBtn" disabled="disabled" class="btn btn-primary btn-modern float-right" />
				<div class="col-lg-10">
					<a href="${request.getContextPath()}/manager/${sessionScope.empNumber}"><input type="button" value="취소" class="btn btn-primary btn-modern float-right" /></a>
				</div>
			</form>
			<div class="col-lg-9" id="error"></div>
		</div>
	</div>
</div>	
<!-- 위에껄로 폼 맞추기  -->
		<br>
		<h2 class="font-weight-extra-bold">안전관리자 정보 수정</h2>
		<form action="/manager" method="post">
		<input type="hidden" name="_method" value="put" />
			<div class="call-to-action with-full-borders mb-5" style="display:block; overflow:auto; width:100%; height:500px;">
				<div>
				<label style="margin-top: 50px">사원번호</label>
				<input type="text" value="${manager.empNumber}" class="form-control border-radius-0 h-auto py-2" name="empNumber" readonly/>
				
				<div>
				<label style="margin-top: 50px">비밀번호</label>
				<input type="password" value="" id="pwd" class="form-control" name="password" onchange="passwordCheck()" />
				</div>
				
				<div>
				<label style="margin-top: 50px">비밀번호 확인</label>
				<input type="password" value="" id="pwdCheck" class="form-control border-radius-0 h-auto py-2" onchange="passwordCheck()" />
				<label id="pwdValid" style="color: red; visibility: hidden;">비밀번호가 일치하지 않습니다.</label>
				</div>
				
				<div>
				<label style="margin-top: 20px">이름</label>
				<input type="text" id="name" value="${manager.name}" name="name" class="form-control border-radius-0 h-auto py-2" onchange="nameCheck()" />
				</div>
				
				<div>
				<label style="margin-top: 50px">연락처</label>
				<input type="text" id="phoneNumber" value="${manager.phoneNumber}" name="phoneNumber" class="form-control border-radius-0 h-auto py-2" />
				</div>
				
				<c:if test="${manager.job eq 'M'}">
					<label style="margin-top: 50px">직책</label>
				<input type="text" value="안전관리자" class="form-control border-radius-0 h-auto py-2" readonly/>
				</c:if>
				</div>
			</div>
				<input type="submit" id="submitBtn" class="btn btn-modern btn-primary rounded-0 mb-2" style="float: right" disabled="disabled" value="수정" />
		</form>
		
		
<script>
function passwordCheck() {
	var password = document.getElementById('pwd').value;
	var specialCharacters = ["!", "@", "#", "$", "%", "&"];
	var isSC = false;

	if (password.length < 6 || password.length > 20) {
		window.alert('6 ~ 20글자 사이의 비밀번호를 입력하세요.');
		document.getElementById('pwd').value = '';
	}
	for (var i = 0; i < specialCharacters.length; i++) {
		if (password.indexOf(specialCharacters[i]) != -1) {
			isSC = true;
		}
	}
	if (false != isSC) {
		window.alert('특수문자는 불가능합니다.')
		document.getElementById('password').value = '';
	}
	if (document.getElementById('pwd').value != '' && document.getElementById('pwdCheck').value != '') {
		if (document.getElementById('pwd').value == document.getElementById('pwdCheck').value) {
			document.getElementById('pwdValid').style.visibility = 'hidden';
			document.getElementById('submitBtn').disabled = false;
		}
		else {
			document.getElementById('pwdValid').style.visibility = 'visible';
			document.getElementById('submitBtn').disabled = true;
			document.getElementById('pwdValid').style.color = 'red';
		}
	}
}

function nameCheck() {
	var pattern = /^[가-힣]+/;
	var name = document.getElementById('name').value;
	
	if (!pattern.test(name)) {
		name.value = '';
		window.alert('유효하지 않은 이름입니다.');
	}
	
	if (name.value == null || name.value == ''){
		
	}

	return true;
}

var phoneNo = document.getElementById('phoneNumber');

phoneNo.onkeyup = function() {
  this.value = autoHypen(this.value);  
}

var autoHypen = function(str) {
	str = str.replace(/[^0-9]/g, '');
	var tmp = '';
	if ( str.length < 4) {
	    return str;
	} else if (str.length < 7) {
	    tmp += str.substr(0, 3);
	    tmp += '-';
	    tmp += str.substr(3);
	    return tmp;
	} else if (str.length < 11) {
	    tmp += str.substr(0, 3);
	    tmp += '-';
	    tmp += str.substr(3, 3);
	    tmp += '-';
	    tmp += str.substr(6);
	    return tmp;
	} else {              
	    tmp += str.substr(0, 3);
	    tmp += '-';
	    tmp += str.substr(3, 4);
	    tmp += '-';
	    tmp += str.substr(7);
	    return tmp;
	}
    return str;
}

</script>
				
		
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>