<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
<div class="row justify-content-center">
	<div class="card border-width-3 border-radius-0 mb-4 col-lg-6">
		<div class="card-body">
		<h4 class="font-weight-bold text-uppercase text-4 mb-3">안전관리자 등록</h4>
			<form action="${request.getContextPath()}/manager" method="post" class="needs-validation" onsubmit="return check(this)" >
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">사원번호</label>
					<div class="col-lg-9">
						<input type="text" name="empNumber" class="form-control" maxlength="10" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호</label>
					<div class="col-lg-9">
						<input type="text" name="password" class="form-control" maxlength="20" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
					<div class="col-lg-9">
						<input type="text" id="pwdCheck" name="password" class="form-control" maxlength="20" onchange="passwordCheck()" required>
						<label id="pwdValid" style="color: red; visibility: hidden;">비밀번호가 일치하지 않습니다.</label>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">이름</label>
					<div class="col-lg-9">
						<input type="text" name="name" class="form-control" maxlength="8" required>
					</div>
				</div>			
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">연락처</label>
					<div class="col-lg-9">
						<input type="text" id="phoneNumber" name="phoneNumber" class="form-control" minlength="13" maxlength="13" required>
					</div>
				</div>	
				<input type="submit" value="등록" class="btn btn-primary btn-modern float-right" />
				<div class="col-lg-10">
					<a href="/manager"><input type="button" value="취소" class="btn btn-primary btn-modern float-right" /></a>
				</div>
			</form>
			<div class="col-lg-9" id="error"></div>
		</div>
	</div>
</div>
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