<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String redirectPath = request.getParameter("redirect");
	if(redirectPath == null || "null".equals(redirectPath)) {
		redirectPath = "";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>LOGIN</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon" />
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Source+Sans+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="vendor/aos/aos.css" rel="stylesheet" />
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

  <!-- Variables CSS Files. Uncomment your preferred color scheme -->
  <link rel="stylesheet" type="text/css" href="css/variables.css">
  
   <!-- Template Main CSS File  -->
  <link href="css/main.css" type="text/css" rel="stylesheet" />	
  <link rel="stylesheet" type="text/css" href="css/main2.css" />
  
  <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 
 <style>
 	  	@font-face {
		    font-family: 'Pretendard-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
		    font-weight: 400;
		    font-style: normal;
		}
		
	@font-face {
		    font-family: 'HanaB';
		    src: url("./font/HanaB.ttf");
		   
		}
 </style>
  <!-- =======================================================
  * Template Name: HeroBiz - v2.2.0
  * Template URL: https://bootstrapmade.com/herobiz-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- Navbar -->
	<header id="header" class="header fixed-top" data-scrollto-offset="0"> 
    	<jsp:include page="/WEB-INF/jsp/include/topNav.jsp" />
	<!-- Close Navbar -->

	<!-- Header -->
   
    	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
    </header>
    <!-- Close Header -->

	
	<section id="hero-animated" class="hero-animated d-flex align-items-center">
   <div id='mask'></div>
<div id='mask_wrap'> 
	
	<div class="section-header mt-4">
      <h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight : 700;">로그인</h3>
   	</div>
	
	<div align="center">
		
		
	<form:form action="${ pageContext.request.contextPath }/login" method="post" modelAttribute="memberVO">	
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
					<form:input type="password" path="password" style="width: 200px; border: none; border-bottom: 2px solid; background-color: #F7F7F7" />
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
				<input type="hidden" name="redirectPath" value="<%=redirectPath%>">
	</form:form>
	<form:form id="kakaoLogin" method="post">
    	<input type="hidden" name="email"/>
    	<input type="hidden" name="redirectPath" value="<%=redirectPath%>">
    </form:form>
<!--     <div class="section-header mt-4 color-gray"></div> -->
    </div>
    </div>
	</section>
	<!-- ======= Footer ======= -->
  		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	<!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="<c:url value="vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="vendor/aos/aos.js"  />"></script>
  <script src="<c:url value="vendor/glightbox/js/glightbox.min.js" />"></script>
  <script src="<c:url value="vendor/isotope-layout/isotope.pkgd.min.js" />"></script>
  <script src="<c:url value="vendor/swiper/swiper-bundle.min.js" />"></script>
  <script src="<c:url value="vendor/php-email-form/validate.js" />"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value="js/main.js" />"></script>

	<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script  type="text/javascript">
Kakao.init('');
console.log(Kakao.isInitialized()); // sdk초기화여부판단

 function kakaoLogin() {
    Kakao.Auth.login({
          scope: 'account_email',
           success: function(response) {
               Kakao.API.request({ // 사용자 정보 가져오기 
                   url: '/v2/user/me',
                   data: {
                       property_keys: [
                         'properties.nickname',
                         'kakao_account.email',
                       ],
                     },
                   success: (response) => {
                      var kakaoemail = response.kakao_account.email;
                      $('#kakaoLogin input[name=email]').val(kakaoemail);
                      document.querySelector('#kakaoLogin').submit();
                   }
               });
               // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
           },
           fail: function(error) {
               alert(error);
           }
       });
   }

   function createHiddenLoginForm(kakaoId){
      
      var frm = document.createElement('form');
      frm.setAttribute('method', 'post');
      frm.setAttribute('action', '/member/kakaoLogin.go');
      var hiddenInput = document.createElement('input');
      hiddenInput.setAttribute('type','hidden');
      hiddenInput.setAttribute('name','userid');
      hiddenInput.setAttribute('value',kakaoId);
      frm.appendChild(hiddenInput);
      document.body.appendChild(frm);
      frm.submit();
      
   }
 
   function kakaoLogout() {
        if (Kakao.Auth.getAccessToken()) {
          Kakao.API.request({
            url: '/v1/user/unlink',
            success: function (response) {
                console.log(response)
            },
            fail: function (error) {
              console.log(error)
            },
          })
          Kakao.Auth.setAccessToken(undefined)
        }
      }  

</script>
	 
</body>
</html>