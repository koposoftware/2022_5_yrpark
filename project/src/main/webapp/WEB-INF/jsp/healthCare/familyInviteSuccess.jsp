<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Family Invite Success</title>
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon" />
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https:/	/fonts.gstatic.com" crossorigin>
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
  <link rel="stylesheet" type="text/css" href="css/table.css" />
   <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>
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
<!-- jquery -->
<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

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
	
	<section  id="hero-animated" class="hero-animated2 align-items-center">
		<div id='mask_wrap2'>
				<div id="mask"></div>
				<div id="wrap2" style="display:flex; justify-content:center; align-items:center;">
				<!-- <div class="section-header mt-4">
					<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">가족 구성원 초대 수락</h3>
				</div> -->
							
				<div class="container text-center">
					<div class="row">
						<h1 style="font-family: 'Pretendard-Regular'; display: inline-block;" class="mb-4 fw-bolder">우리가족케어 초대를 수락하셨습니다.</h1>
						<div class="d-flex justify-content-center mt-4">
							<button class="btn-getstarted me-4" style="min-width:210px; font-family: 'Pretendard-Regular'; border-radius: 30px; background: #fff; color: #0ea2bd; border: 1px solid #0ea2bd ">하나케어 홈 가기</button>
							<button class="btn-getstarted" style="min-width:210px; font-family: 'Pretendard-Regular'; border-radius: 30px; ">우리가족케어 바로가기</button>
						</div>
					</div>
				</div>
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
</body>
</html>