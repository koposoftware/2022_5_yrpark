<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Hana Care">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <title>HANA CARE</title>
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
	
	.section-header {
	    text-align: center;
	    padding-bottom: 2px;
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
	<div id='wrap'>

			<div id='active_imgbt'>
				<div class='main_img mt-5'>
				<h4 style="font-family: 'Pretendard-Regular'; font-weight: 400;">나를 CARE해주는 건강관리</h4>
				<h2 style="font-family: 'HanaB';">하나케어</h2>
				<p style="font-family: 'Pretendard-Regular';">나의 건강 위험도를 알려주고, <br>맞춤형 질병케어와 건강습관까지 길러주는<br> 하나케어를 지금 사용해보세요!</p>
				</div>
				<img src='./img/main-train.png'>	
				<div class='active_bt'>
					<div class='my_care_bt'>
						<a href="" class="align-items-sm-center">
						<div class='image'><img src='./img/my_care.png'></div>
						<div class='img_name'>My 헬스케어</div>
						</a>
					</div>
					<div class='record_bt'>
						<a href="">
						<div class='bt'><img src='./img/record.png'></div>
						<div class='bt_name'>미션기록</div>
						</a>
					</div>
				</div>
			</div>
			
			
        <div class="section-header mt-4 color-gray">
          <h3 style="font-family: 'Pretendard-Regular'; font-weight : 400;">보험상품을 한눈에 비교하세요</h3>
        </div>
			
			<div id='category'>
			
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-car-side"></i></div>
					<div class='item_name'>자동차 보험</div> 
				</div>
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-stethoscope"></i></div>
					<div class='item_name'>실손의료보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-person-walking-luggage"></i></div>
					<div class='item_name'>여행자보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-person-pregnant"></i></div>
					<div class='item_name'>어린이 태아보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-hospital"></i></div>
					<div class='item_name'>암보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-file-invoice-dollar"></i></div>
					<div class='item_name'>연금보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-paste"></i></div>
					<div class='item_name'>보장성보험</div> 
				</div>
				
				<div class='item'>
					<div class='item_icon'><i class="fa-solid fa-piggy-bank"></i></div>
					<div class='item_name'>저축성보험</div> 
				</div>
				
			</div>
	</div>
</div>
</section>

  </main><!-- End #main -->

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
