<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<div class="call-to-action with-full-borders mb-5">
			<form action="/worker" method="post">
				<label>사원번호</label> 
				<input type="text" name="empNumber" class="form-control border-radius-0 h-auto py-2" maxlength="10"/> <br>
				<label>이름</label>
				<input type="text" name="name" class="form-control border-radius-0 h-auto py-2" /> <br>
				<label>카드번호</label>
				<input type="text" name="cardNumber" class="form-control border-radius-0 h-auto py-2" maxlength="8"/> <br>
				<label>핸드폰번호</label>
				<input type=text id="phoneNumber" name="phoneNumber" class="form-control border-radius-0 h-auto py-2" minlength="13" maxlength="13" /> <br>
				<input type="submit" class="btn btn-primary mb-2" value="등록" />	
			</form>
		</div>
		
		<script>
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