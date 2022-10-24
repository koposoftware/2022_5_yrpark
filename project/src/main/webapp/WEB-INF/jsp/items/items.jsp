<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보험상품</title>
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
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />


	<script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>
	<!-- jquery -->
	<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<style>
		.bx-wrapper{
			max-height: 240px;
		}
		
		.nav {
			--bs-nav-link-color: #0ea2bd;
			--bs-nav-link-hover-color: #0ea2bd;
		}
		
		
		.nav-tabs {
	    --bs-nav-tabs-border-width: none;
	    --bs-nav-tabs-border-color: #dee2e6;
	    --bs-nav-tabs-link-hover-border-color: #e9ecef #e9ecef #dee2e6;
	    --bs-nav-tabs-link-active-color: #495057;
	    --bs-nav-tabs-link-active-bg: #fff;
	    --bs-nav-tabs-link-active-border-color: #dee2e6 #dee2e6 #fff;
	    border-bottom: var(--bs-nav-tabs-border-width) solid var(--bs-nav-tabs-border-color);
	}
	.nav-tabs .nav-link.active {
	    color: #f8f9fa;
	    background-color: #0ea2bd;
	    border-color: var(--bs-nav-tabs-link-active-border-color);
	}
	
	.nav-link {
	    display: block;
	    padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
	    font-size: var(--bs-nav-link-font-size);
	    font-weight: var(--bs-nav-link-font-weight);
	    color: #868080;
	    text-decoration: none;
	    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
	}
	
	
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
		
		.signBtn {
			background: white;
			color: var(--color-primary);
			border: 1px solid;
			border-radius: 2px;
		}
		.signBtn:hover {
			background: var(--color-primary);
			color: white;
		}
		
		.bx-wrapper .bx-controls-direction a {
		    position: absolute;
		    top: 50%;
		    margin-top: -16px;
		    outline: 0;
		    width: 32px;
		    height: 32px;
		    text-indent: -9999px;
		    z-index: 2;
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
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">보험상품</h3>
			</div>
			
			<div class="container">
				<div style="margin-left: 150px;">
				<ul class="bxslider" >
					<li><button style="border: none; background: none; padding: 0; margin-top: 5px;"  onclick="location.href='myHealthCare' "><img src="./img/banner4.png" /></button></li>
					<li><img src="./img/banner2.png" style="margin-top: 5px;" /></li>
					<li><img src="./img/banner3.png" style="margin-top: 5px;"/></li>
				</ul>
				</div>
				
				<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">키워드 별 보험상품</h4>
				
				 <ul class="px-4 nav nav-tabs justify-content-between" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="width: 100px; border-radius: 50px;">전체</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview0" type="button" role="tab"
					aria-selected="false" style="width: 100px; border-radius: 50px;">여행대비</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview1" type="button" role="tab"
					aria-selected="false" style="width: 100px; border-radius: 50px;">암대비</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview2" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="width: 100px; border-radius: 50px;">큰병대비</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview3" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="width: 100px; border-radius: 50px;">이동할때</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview4" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="width: 100px; border-radius: 50px;">생활보장</button>
			</li>
		</ul>
		
		<!-- 내용 -->
		<div class="tab-content container" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
				<section id="team" class="team section-bg">
				<div class="container aos-init aos-animate" data-aos="fade-up">
				
				<div class="d-flex">
				<div class="row mt-4" style="flex-direction: colum; display: inline-block;">
							<div style="width: 150px; margin-right: 60px;" class="mb-4">
								<img src="./img/shinhan.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/kuk.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/kuk.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/trip3.png" class="img-fluid" alt="">
							</div>
				</div>	
				<div class="row">	
				<c:forEach items="${insuranceAll}" var="insuranceAll" varStatus="loop">
					<c:if test="${insuranceAll['INSURANCE_TYPE'] eq '질병보험'}">
					<div class="col-lg-12">
						<div class="mb-3 member d-flex align-items-start aos-init aos-animate justify-content-between" data-aos="zoom-in" data-aos-delay="100">
							<div class="member-info me-3" style="width: 280px;">
								
								<div class="row" style="display: inline-block;">
								<h4>${insuranceAll['INSURANCE_TYPE']}</h4> 
								<span>${insuranceAll['INSURANCE_NAME']}</span>
								</div>
								
							</div>
									<p class="text-start">${insuranceAll['REMARK']}</p>
							<div class="text-end">
								<button class="signBtn">자세히보기</button>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</div>
				</div>
		</div>
		</section>
		</div>
		
		
		<div class="tab-pane fade" id="myreview0" role="tabpanel"
				aria-labelledby="myreview-tab">
				<section id="team" class="team section-bg">
				<div class="container aos-init aos-animate" data-aos="fade-up">
				
				<div class="d-flex">
				<div class="row" style="align-items: baseline">
							<div style="width: 150px;">
								<img src="./img/trip4.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip1.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip3.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip2.png" class="img-fluid" alt="">
							</div>
				</div>	
				<div class="row">	
				<c:forEach items="${insuranceAll}" var="insuranceAll" varStatus="loop">
					<c:if test="${insuranceAll['INSURANCE_TYPE'] eq '여행자보험'}">
					<div class="col-lg-12">
						<div class="mb-3 member d-flex align-items-start aos-init aos-animate justify-content-between" data-aos="zoom-in" data-aos-delay="100">
							<div class="member-info me-3" style="width: 250px;">
								
								<div class="row" style="display: inline-block;">
								<h4>${insuranceAll['INSURANCE_TYPE']}</h4> 
								<span>${insuranceAll['INSURANCE_NAME']}</span>
								</div>
								
							</div>
									<p class="text-start">${insuranceAll['REMARK']}</p>
							<div class="text-end">
								<button class="signBtn">자세히보기</button>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</div>
				</div>
		</div>
		</section>
		</div>
		
		<div class="tab-pane fade" id="myreview1" role="tabpanel"
				aria-labelledby="myreview-tab">
				<section id="team" class="team section-bg">
				<div class="container aos-init aos-animate" data-aos="fade-up">
				
				<div class="d-flex">
				<div class="row" style="align-items: baseline">
							<div style="width: 150px;">
								<img src="./img/trip4.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip1.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip2.png" class="img-fluid" alt="">
							</div>
							<div style="width: 130px;">
								<img src="./img/trip3.png" class="img-fluid" alt="">
							</div>
				</div>	
				<div class="row">	
				<c:forEach items="${insuranceAll}" var="insuranceAll" varStatus="loop">
					<c:if test="${insuranceAll['INSURANCE_TYPE'] eq '암보험'}">
					<div class="col-lg-12">
						<div class="mb-3 member d-flex align-items-start aos-init aos-animate justify-content-between" data-aos="zoom-in" data-aos-delay="100">
							<div class="member-info me-3" style="width: 250px;">
								
								<div class="row" style="display: inline-block;">
								<h4>${insuranceAll['INSURANCE_TYPE']}</h4> 
								<span>${insuranceAll['INSURANCE_NAME']}</span>
								</div>
								
							</div>
									<p class="text-start">${insuranceAll['REMARK']}</p>
							<div class="text-end">
								<button class="signBtn">자세히보기</button>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</div>
				</div>
		</div>
		</section>
		</div>
		
		<div class="tab-pane fade" id="myreview2" role="tabpanel"
				aria-labelledby="myreview-tab">
				큰병대비 삽입
		</div>
		
		<div class="tab-pane fade" id="myreview3" role="tabpanel"
				aria-labelledby="myreview-tab">
				<section id="team" class="team section-bg">
				<div class="container aos-init aos-animate" data-aos="fade-up">
				
				<div class="d-flex">
				<div class="row" style="align-items: flex-end;">
							<div style="width: 150px; margin-right: 60px;" class="mb-4">
								<img src="./img/hanhwa1.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/mg1.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/AIG.png" class="img-fluid" alt="">
							</div>
							<div style="width: 150px;" class="mb-4">
								<img src="./img/trip2.png" class="img-fluid" alt="">
							</div>
				</div>	
				<div class="row">	
				<c:forEach items="${insuranceAll}" var="insuranceAll" varStatus="loop">
					<c:if test="${insuranceAll['INSURANCE_TYPE'] eq '운전자보험'}">
					<div class="col-lg-12">
						<div class="mb-3 member d-flex align-items-start aos-init aos-animate justify-content-between" data-aos="zoom-in" data-aos-delay="100">
							<div class="member-info me-3" style="width: 280px;">
								
								<div class="row" style="display: inline-block;">
								<h4>${insuranceAll['INSURANCE_TYPE']}</h4> 
								<span style="width: 400px;">${insuranceAll['INSURANCE_NAME']}</span>
								</div>
								
							</div>
									<p class="text-start">${insuranceAll['REMARK']}</p>
							<div class="text-end">
								<button class="signBtn">자세히보기</button>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</div>
				</div>
		</div>
		</section>
		</div>
		</div>
		
		<div class="tab-pane fade" id="myreview4" role="tabpanel"
				aria-labelledby="myreview-tab">
				생활보장 삽입
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
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>

<script type="text/javascript">
$(function(){
	  $('.bxslider').bxSlider({
	    mode: 'fade',
	    captions: true,
	    slideWidth: 850
	    
	  });
	});
</script>

</body>
</html>