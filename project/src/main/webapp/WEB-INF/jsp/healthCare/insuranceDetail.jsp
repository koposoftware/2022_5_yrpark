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
<title>Insurance Item</title>
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
  
	<script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>
	<!-- jquery -->
	<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
	<style>
		.signBtn {
			background: white;
			color: var(--color-primary);
			border: 1px solid;
			border-radius: 2px;
			font-size: 16px; 
			padding: 8px 23px;
			border-radius: 4px;
			font-weight: bold;
		}
		.signBtn:hover {
			background: var(--color-primary);
			color: white;
		}
		
		h6.a:before {
        content: "";
        display: block;
        width: 80px;
        border-bottom: 1px solid #bcbcbc;
        margin: 20px 0px;
      }
      
      h6.b:after {
        content: "";
        display: block;
        width: 80px;
        border-bottom: 1px solid #bcbcbc;
        margin: 20px 0px;
      }
      .nav-link {
      	display: block;
	    padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
	    font-size: var(--bs-nav-link-font-size);
	    font-weight: var(--bs-nav-link-font-weight);
	    color: #6c757d;
	    text-decoration: none;
	    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
      }
      
      .nav-tabs .nav-link.active{
		  color: #0ea2bd;
		  background-color: var(--bs-nav-tabs-link-active-bg);
		  border-color: var(--bs-nav-tabs-link-active-border-color);
		}
		
		.detail {
			font-family: 'Nanum Gothic', sans-serif;
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
				<div style="border: 1px solid gray; border-radius: 10px; padding:30px 50px 30px; background: #ffffff; box-shadow: 10px 5px 5px lightgray;">
				<div class="d-flex">
				<div class="row">
				<h5 style="font-family: 'Pretendard-Regular';">${insuranceitem.companyName}</h5>
				<h3 class="fw-bold" style="font-family: 'Pretendard-Regular';">${insuranceitem.insuranceName}</h3>
				
					<div class="row">
						<h6 class="a" style="font-size: 17px; font-family: 'Pretendard-Regular';"> 보험종류 　　　　　 ${insuranceitem.insuranceType}</h6>
						<h6 style="font-size: 17px; font-family: 'Pretendard-Regular';"> 보험사 　　　　　　 ${insuranceitem.companyName}</h6>
						<h6 style="font-size: 17px; font-family: 'Pretendard-Regular'; "> 가입나이 　　　　　 ${insuranceitem.signAge} 세</h6>
						<h6 class="b" style="font-size: 17px; font-family: 'Pretendard-Regular';"> 납입방법 　　　　　 ${insuranceitem.remark}</h6> 
					</div>
				<div class="d-flex justify-content-center" style="display:inline-block;">
				
					<div class="text-center">
						<form action="${pageContext.request.contextPath}/insuranceJoin?no=${insuranceitem.no}" method="post"> 
				    		<input name="companyName" type="hidden" value="${insuranceitem.companyName}">
				    		<input name="insuranceName" type="hidden" value="${insuranceitem.insuranceName}">
				    		<input name="protectItem" type="hidden" value="${insuranceitem.protectItem}">
				    		<input name="protectFee" type="hidden" value="${insuranceitem.protectFee}">
				    		<input name="insuranceFee" type="hidden" value="${insuranceitem.insuranceFee}">
				    		<input name="signAge" type="hidden" value="${insuranceitem.signAge}">
				    		<input name="remark" type="hidden" value="${insuranceitem.remark}">
				    		<input name="insuranceType" type="hidden" value="${insuranceitem.insuranceType}">
                            
							<button type="submit" class="signBtn" onclick="nextStep()" style="font-family: 'Pretendard-Regular';"> 보험 가입하기 </button>
                        </form>
                    
				</div>
				</div>
				</div>
				<!-- <img src='./img/insert.png' style="max-width: 200px"> -->	
				</div>
				</div>
				<h6 class="text-end" style="font-family: 'Pretendard-Regular';"><i class="fa-solid fa-ban" style="color: black; font-size: 20px;"></i> 전화로 가입을 권유하지 않으니, 안심하고 보험가입 진행하세요.</h6>
				
				   <!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs mt-4" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
			
				<button class="nav-link active fw-bold " id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="font-style: bold; font-family: 'Pretendard-Regular';">주요특징</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="font-family: 'Pretendard-Regular';">보장내용</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="font-family: 'Pretendard-Regular';">꼭 알아두실 사항</button>
			</li>
		</ul>
		
				<div class="tab-content container" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
                       	 
				<div class="col-md-12">
                           <div class="form-floating">
                           <div class="row g-2 mt-4 justify-content-center">
                         <img src="./img/detail.png" style="max-width: 800px;">
                             </div>
                           </div>
                          
                           </div>
                       </div>


			</div>
			<div class="tab-pane fade" id="myreview" role="tabpanel"
				aria-labelledby="myreview-tab">내리뷰리스트 탭</div>
		</div>
				
<%-- 				보험 번호 ${insuranceitem.no}
				보험회사명 ${insuranceitem.companyName}
				보험명 ${insuranceitem.insuranceName}
				보험타입 ${insuranceitem.insuranceType}
				보장항목 ${insuranceitem.protectItem}
				보장항목 비용 ${insuranceitem.protectFee}
				보험료 ${insuranceitem.insuranceFee}
				비고 ${insuranceitem.remark}
				
				${insuranceitem.companyName} --%>
				
			</div>
			</div>
		</div>
	</section>

	<!-- ======= Footer ======= -->
  		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	<!-- End Footer -->

	  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
  <!-- Vendor JS Files -->
  <script src="<c:url value="vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="vendor/aos/aos.js"  />"></script>
  <script src="<c:url value="vendor/glightbox/js/glightbox.min.js" />"></script>
  <script src="<c:url value="vendor/isotope-layout/isotope.pkgd.min.js" />"></script>
  <script src="<c:url value="vendor/swiper/swiper-bundle.min.js" />"></script>
  <script src="<c:url value="vendor/php-email-form/validate.js" />"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value="js/main.js" />"></script>
  
  
  <script>
  

  
  function nextStep(){
		   location.href = "${ pageContext.request.contextPath}/insuranceJoin?no=" + ${insuranceitem.no}
	   }
</script>
</body>
</html>