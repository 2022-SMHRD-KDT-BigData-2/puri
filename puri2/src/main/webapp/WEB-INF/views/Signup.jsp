<%@page import="kr.puri.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puri-SingUp</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/User.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="${cpath}/resources/css/login.css" rel="stylesheet" />
<style type="text/css">
</style>
</head>

<body>
	<div class="container col-md-12">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3" id="Signup">회원가입</h4>
					<hr class="mb-4">
				<form action="SignUp.do">
					<!-- 아이디 -->
					<div class="row">
						<div class="col-md-12 mb-3">
							<label class="bottommargin" for="id">아이디</label> <span
								class="signup-input"> <input class="form-control"
								style="width: 90%;" id="id" type="text" name="id">&nbsp&nbsp
								<button class="checkbtn" type="button" onclick="IdCheck()">Check</button>
							</span>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 mb-3">
							<label class="bottommargin" for="id">닉네임</label> <span
								class="signup-input"> <input class="form-control"
								style="width: 90%;" id="nick" type="text" name="nick">&nbsp&nbsp
								<button class="checkbtn" type="button" onclick="IdCheck()">Check</button>
							</span>
						</div>
					</div>
					<!-- 기존 폼 -->
					<!--  <div class="row">
						<div class="col-md-12 mb-3">
							<label for="name">닉네임</label> <input type="text"
								class="form-control" name="nick" id="nick" placeholder=""
								onchange="check_pw()" required>

						</div>
					</div>-->
					<!--<div class="row">
						<div class="col-md-12 mb-3">
							<label for="name">비밀번호</label> <input type="password"
								class="form-control" name="pw" id="pw" placeholder=""
								onchange="check_pw()" required>

						</div>
					</div>-->
					<div class="row">
						<div class="col-md-12 mb-3">
							<label class="bottommargin" for="id">비밀번호</label> <span
								class="signup-input"> <input class="form-control" id="pw"
								type="password" name="pw">&nbsp&nbsp
							</span>
						</div>
					</div>


					<div class="row">
						<div class="col-md-8 mb-3">
							<label class="bottommargin" for="root">성별</label> <span class="signup-input"> <select
								class="custom-select d-block w-100" name="gender" id="gender">
									<option value="men">남자</option>
									<option value="women">여자</option>
							</select>
							</span>
							<div class="invalid-feedback">성별 를 선택해주세요.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="code" class="bottommargin">나이</label> <span class="signup-input">
							<input type="text" style="margin-right: 0.5em;"
								class="form-control" name="age" id="age"
								>
							</span>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block"
						style="background-color: #69b27a; border-color: #69b27a;"
						type="submit" id="btncol">가입 완료</button>
				</form>
			</div>
		</div>
	</div>
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
	<!--비밀번호 길이제한-->
	<script>
    function check_pw(){
        var pw = document.getElementById('pw').value;
        var SC = ["!","@","#","$","%"];
        var check_SC = 0;

        if(pw.length < 6 || pw.length>16){
            window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
            document.getElementById('pw').value='';
        }
        for(var i=0;i<SC.length;i++){
            if(pw.indexOf(SC[i]) != -1){
                check_SC = 1;
            }
        }
        if(check_SC == 0){
            window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
            document.getElementById('pw').value='';
        }
    }
</script>






</body>
</html>