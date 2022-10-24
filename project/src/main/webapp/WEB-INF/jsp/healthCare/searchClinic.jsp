<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검진기관 찾기</title>
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
  <link rel="stylesheet" type="text/css" href="css/table.css" />
  
  <!-- datepicker CSS -->
   <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>

	<!-- jquery -->
	<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
    <style>
    	.border-box.v1 .box-title {
    padding: 15px 30px;
    border-bottom: 1px dashed #d5d5d5;
    }
    
    .border-box.v1 .box-cont {
    padding: 25px 30px;
	}
	
	.border-box {
    border: 1px solid #e1e3e6;
    }
    </style>
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
			<div id="wrap2">
			<div class="section-header mt-4">
				<h3
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">검진기관찾기</h3>
			</div>
	
	<div class="container">
		<button id="ajaxButton"></button>
		<div id="ajaxList"></div>
		
		<div class="border-box v1 mt40">
		<div class="box-title"><p class="color-point font-bold"><i class="fa-solid fa-triangle-exclamation" style="color: black; font-size: 20px;"></i>  알려드려요</p></div>

		<div class="box-cont">
			<ul class="list-text v1">
				<li>본 화면의 정보는 입력시점과 검색시점의 차이로 현재 정보와 다를 수 있습니다. <span class="color-red"><strong>방문 전 반드시 유선으로 확인</strong></span>하시기 바랍니다.</li>
				<li>의료이용 편익정보(진료/점심/접수시간, 휴진, 주차정보 등)는 해당 검진기관이 직접 입력한 정보입니다.</li>
				<li>공휴일검진기관의 자세한 정보는 검진기관명을 클릭하여 확인하시기 바랍니다. (토요일 검진 정보는 제공하지 않습니다.)</li>
				<li>장애친화검진기관의 자세한 정보는 상세보기를 클릭하여 확인하시기 바랍니다.</li>
			</ul>
			
			<p class="help-text mt10">
				해당 검진기관에서 입력한 정보가 잘못된 경우, 검색되지 않을 수 있으니 이점 양해하여 주시기 바랍니다.
			</p>
			<p class="help-text mt10">
				전체는 일반건강검진, 구강건강검진, 영유아건강검진, 암검진을 의미합니다.(폐암검진기관: 종합병원인 경우만 해당)
			</p>
			<p class="help-text mt10">
				[검진기관 찾기] 는 위치기반으로 인근 검진기관 정보와 최근 실시한 검진기관 평가결과 우수기관(우수등급, 최우수등급) 정보를 제공하는 서비스입니다.
			</p>
			<p class="help-text mt10">
				우수 검진기관 조회 체크 시 선택한 검진유형이 모두 우수인 검진기관만 조회됩니다.
			</p>
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