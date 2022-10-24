<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Recommand Insurance</title>
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

	<!-- data tables CSS -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
	
<!-- jquery -->
<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<style>
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
		
		.modal {
			    --bs-modal-width: 1600px;
		}
		
		.modal-content {
		    width: 1600px;
		    height: 800px;
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
		
		
		.wavy {
		  position: relative;
		  -webkit-box-reflect: below -12px linear-gradient(transparent, rgba(0, 0, 0, 0.2));
		}
		.wavy span {
		  position: relative;
		  display: inline-block;
		  color: black;
		  font-size: 2em;
		  text-transform: uppercase;
		  animation: animate 1.5s ease-in-out infinite;
		  animation-delay: calc(.1s * var(--i))
		}
		@keyframes animate {
		  0%, 100% {
		    transform: translateY(0px);
		  }
		  20% {
		    transform: translateY(-20px);
		  }
		  40% {
		    transform: translateY(0px);
		  }
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
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">건강검진 결과 상품 목록</h3>
			</div>
	
	<div class="container">
	
						<!-- Modal -->
<div class="modal fade" id="loading" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'Pretendard-Regular';">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div>
          <span aria-hidden="true"></span>
        </div>                   
	 <div class="modal-body text-center" >
	 	<div style="padding-top: 200px;">
      	<img src="./img/spinner.gif" style="max-width: 150px;">
      	<div class="wavy pt-5" style="font-weight: 900;">
		  <span style="--i:1; font-family: 'Pretendard-Regular';">상</span>
		  <span style="--i:2; font-family: 'Pretendard-Regular';">품</span>
		  <span style="--i:3; font-family: 'Pretendard-Regular';">검</span>
		  <span style="--i:4; font-family: 'Pretendard-Regular';">색</span>
		  <span style="--i:5; font-family: 'Pretendard-Regular';">중</span>
		  <span style="--i:6; font-family: 'Pretendard-Regular';">.</span>
		  <span style="--i:7; font-family: 'Pretendard-Regular';">.</span>
		  <span style="--i:8; font-family: 'Pretendard-Regular';">.</span>
		</div>     
		</div>
                      
                       </div>
                       
			    
			     
                                                 </div>
                                                 </div>
                                                 </div>
	
		<div id="result">
		<div class="d-flex">
		<img src="./img/petition.png" style="width: 70px; height:70px;"/>
		<div class="row px-4 pt-2">
		<h4 style="font-family: 'Pretendard-Regular';">건강검진 결과, ${ loginVO.name }님의 위험질병은 고혈압입니다.</h4>
		<h5 style="font-family: 'Pretendard-Regular';">고혈압과 관련된 보험상품은 아래와 같습니다.</h5>
		</div>
		</div>
		<table border="1" width = "100%" id="exampleTable" class="table table-bordered">
			 <thead>
			 
           <tr style="text-align: center;" id="list">
           		<th>보험번호</th>
				<th>회사명</th>
				<th>상품명</th>
				<th>보장명</th>
				<th>보장금액</th>
				<th>보험료(원)</th>
				<th>가입연령</th>
				<th>비고</th>
				<th>가입형태</th>
				
			</tr>
				</thead>
				<tbody>
				
				</tbody>
		</table>
		
		
						
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
  $(document).ready(function() {
	  document.getElementById("result").style.display = "none";
		$("#loading").modal("show");
		setTimeout(function() {
			$('#loading').modal("hide");
			}, 3000);
		
	});
  
  setTimeout(function() {
		$('#result').show();
		}, 3000);
  </script>
  <script>

  

	  	let company ='';
	  	
		$("#exampleTable").DataTable({
			displayLength: 5,
	         lengthChange: false,
	         
			ajax : {
			 url: "${pageContext.request.contextPath}/insuranceList",
			 method : 'post', 
			 dataSrc:'',
			},
			
			columns: [
				
				{targets: 0, data: "NO"},
				{targets: 1, data: "COMPANY_NAME"},
				{targets: 2, data: "INSURANCE_NAME"}, 
				{targets: 3, data: "PROTECT_ITEM"},
				{targets: 4, data: "PROTECT_FEE"},
				{targets: 5, data: "INSURANCE_FEE"},
				{targets: 6, data: "SIGN_AGE"},
				{targets: 7, data: "REMARK"},
				{targets: 8},
				{targets: 9, data: "INSURANCE_TYPE"}
				
				
			],
			 columnDefs: [ 
				 {targets: 0, width: "3%"},
				 {targets: 1, width: "6%"},
				 {targets: 2, width: "10%"},
				 {targets: 3, width: "5%"},
				 {targets: 4, width: "5%"},
				 {
	                targets: 5,
	                className : "text-end", 
	                width: "3%"
	             },
	             {targets: 6, width: "3%"},
	             {targets: 7, width: "10%", className : "target"},
	             
	             
				 {
	                targets: 9,
	                visible: false
	             }

				 
				 ,{
				    targets: 8,
					data : "NO",
					 width: "1%",
					
				    render : function(data, type, full, meta, row) {
				    	data = '<form action="${pageContext.request.contextPath}/insuranceDetail?no='
				    		+ data
				    		+ '" method="post">' 
				    		+ '<input name="companyName" type="hidden" value="'+full.COMPANY_NAME+'">'
				    		+ '<input name="insuranceName" type="hidden" value="'+full.INSURANCE_NAME+'">'
				    		+ '<input name="protectItem" type="hidden" value="'+full.PROTECT_ITEM+'">'
				    		+ '<input name="protectFee" type="hidden" value="'+full.PROTECT_FEE+'">'
				    		+ '<input name="insuranceFee" type="hidden" value="'+full.INSURANCE_FEE+'">'
				    		+ '<input name="remark" type="hidden" value="'+full.REMARK+'">'
				    		+ '<input name="insuranceType" type="hidden" value="'+full.INSURANCE_TYPE+'">'
				    		+ '<input name="signAge" type="hidden" value="'+full.SIGN_AGE+'">'
                            + '<input type="submit" class="signBtn" value="온라인 가입">'
                            + '</form>';
				    	
				    	console.log(full.COMPANY_NAME)
                     
                      return data;
                      
					    	
				    }
				  
				 
				 } ],
			
		});


	
	</script>
  
</body>
</html>