<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="./admin/css/nucleo-icons.css" rel="stylesheet" />
  <link href="./admin/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="./admin/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="./admin/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
</head>
<body>
	 <div class="container position-sticky z-index-sticky top-0">
    <div class="row">
      <div class="col-12">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg blur border-radius-lg top-0 z-index-3 shadow position-absolute mt-4 py-2 start-0 end-0 mx-4">
          <div class="container-fluid">
            <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="../pages/dashboard.html">
              Argon Dashboard 2
            </a>
            <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon mt-2">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </span>
            </button>
            <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                  <a class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="../pages/dashboard.html">
                    <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>
                    Dashboard
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/profile.html">
                    <i class="fa fa-user opacity-6 text-dark me-1"></i>
                    Profile
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/sign-up.html">
                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                    Sign Up
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/sign-in.html">
                    <i class="fas fa-key opacity-6 text-dark me-1"></i>
                    Sign In
                  </a>
                </li>
              </ul>
              <ul class="navbar-nav d-lg-block d-none">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/product/argon-dashboard" class="btn btn-sm mb-0 me-1 btn-primary">Free Download</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- End Navbar -->
      </div>
    </div>
  </div>
  <main class="main-content  mt-0">
    <section>
      <div class="page-header min-vh-100">
        <div class="container">
          <div class="row">
            <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
              <div class="card card-plain">
                <div class="card-header pb-0 text-start">
                  <h4 class="font-weight-bolder">Sign In</h4>
                  <div align="center">
		
		
	<form:form action="${ pageContext.request.contextPath }/loginA" method="post" modelAttribute="memberVO">	
		<table>
			<tr>
				<th style="width: 100px">ID</th>
				<td>
					<form:input path="id" style="width: 200px; border: none; border-bottom: 2px solid; background-color: #F7F7F7 "  />
					<form:errors path="id" style="width: 200px; border: none; border-bottom: 2px solid; background-color: #F7F7F7" />
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px">Password</th>
				<td>
					<form:input path="password" style="width: 200px; border: none; border-bottom: 2px solid; background-color: #F7F7F7" />
					<form:errors path="password" style="width: 200px; border: none; border-bottom: 2px solid; background-color: #F7F7F7" />
						
				</td>
			</tr>
		</table>
		
		<ul>
		<div class="text-start mt-3" style="font-size: 13px; width: 330px;">
		아직 회원이 아니신가요? 회원가입 <br>
		비밀번호를 잊어버리셨나요? 비밀번호 찾기 <br>
		</div>
		</ul>
		<input style="width: 300px; margin-bottom:10px" type="submit" value="로그인" class="btn-getstarted py-2 mt-3"> <br>
				<a id="custom-login-btn" href="javascript:kakaoLogin();">
				  <img
				    src="./img/kakao_login.png"
				    width="300"
				    alt="카카오 로그인 버튼"/>
				</a>
				<br>
				
	</form:form>
	<form:form id="kakaoLogin" method="post">
    	<input type="hidden" name="email"/>
    </form:form>
<!--     <div class="section-header mt-4 color-gray"></div> -->
    </div>
              </div>
            </div>
            <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
              <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden" style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/signin-ill.jpg');
          background-size: cover;">
                <span class="mask bg-gradient-primary opacity-6"></span>
                <h4 class="mt-5 text-white font-weight-bolder position-relative">"Attention is the new currency"</h4>
                <p class="text-white position-relative">The more effortless the writing looks, the more effort the writer actually put into the process.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  <!--   Core JS Files   -->
  <script src="./admin/js/core/popper.min.js"></script>
  <script src="./admin/js/core/bootstrap.min.js"></script>
  <script src="./admin/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="./admin/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="./admin/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>
</html>