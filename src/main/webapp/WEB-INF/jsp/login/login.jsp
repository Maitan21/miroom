<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>

    <!--Meta tag Setting-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="og:title" content="M I R O O M"/>
    <meta property="og:description" content ="☕️🍹🍰🥪
	이 세상 모든 회의실 M I R O O M"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/static/dash/img/logo/miroom.png">
    <meta property="og:image" content="/static/handler/img/home/logo.png"/>
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/login/css/login.css">
</head>
<body>
 
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="/static/login/images/login.jpg" width="100%" height="100%" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
            <img src="/static/login/images/miroom.png" width="80%" height="100%" alt="Manager Page" class="img">
             		<p class="login-card-description"></p>
              	<form id="fmField" method = "post" action="/loginProcess">
                  <div class="form-group">
                    <input type="text" name="username" id="loginId" class="form-control" placeholder="아이디" required="required">
                  </div>
                  <div class="form-group">
                    <input  style="margin-bottom : 0;"type="password" name="password" id="loginPw" class="form-control" placeholder="패스워드" required="required">
                  </div>   
                  	
                   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>              	
                  <input  class="btn btn-block login-btn mb-4" type="submit" value="Login" >
               	  
                </form>
                <!-- 로그인 실패 시 출력할 메세지 -->
                <a style="color: #ff0000; margin-top:5px;">
                    <Strong> ${requestScope.loginFailMsg}</Strong>
                </a>

				
				<div class = "accounttext">
	                <a href="#!" class="forgot-password-link">로그인이 되지 않습니까?</a>
	                <p class="login-card-footer-text"> <a href="#!" class="text-reset">여기로 연락주세요!</a></p>
	                <nav class="login-card-footer-nav">
	                  <a href="tos">이용 약관. 개인 정보 정책 </a>

	                </nav>
                </div>
            
            </div>
          </div> 
        </div>  		
      </div> 
       	<div style="text-align : center;">
       		<div>
       			<p></p>
       			<img src="/static/login/images/jsol.png" width="25%" height="50%" alt="Manager Page" class="img">
       			
			</div>
				<p></p>
				<p>&copy; 2020.All Rights Reserved by JSOL. Designed by <a href="https://github.com/Maitan21" target="_blank">Maitan21</a></p>
		</div>		
    </div> 
 </main>
  
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>