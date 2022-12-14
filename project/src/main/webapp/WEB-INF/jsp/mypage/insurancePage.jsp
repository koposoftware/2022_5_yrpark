<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insurance Page</title>
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
  	textarea {
    width: 100%;
    resize: none;
  }
  .signBtn {
			background: white;
			color: var(--color-primary);
			padding: 10px;
			padding-right: 30px;
			padding-left: 30px;
			border: 1px solid;
			border-radius: 5px;
		}
	.signBtn:hover {
		background: var(--color-primary);
		color: white;
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
    
    <section id="hero-animated" class="hero-animated2 align-items-center">
    <div id='mask_wrap2'>
			<div id="mask"></div>
			<div id="wrap2">
    
    <div class="section-header mt-4">
				<h3
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">?????? ??????
					</h3>
			</div>
	<c:forEach items="${memberList}" var="m">
		
	
			
		<%-- <c:if test="${ m.insuranceCheck eq 'N'}"> --%>
			<div align="center" style="margin-top: 30px">
				
				<h4 class="mb-5" style="font-family: 'Pretendard-Regular';">?????? ?????? ?????? ????????? ????????? ????????? ??? ????????????.</h4>
				<button type="button" class="signBtn" data-toggle="modal" data-target="#exampleModal" id="openModal" style="font-family: 'Pretendard-Regular';">
  					?????? ??????
				</button>
			</div>
		<%-- </c:if> --%>
</c:forEach>

		<!-- Modal -->
		 
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="margin-top: 140px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">??????????????? ??????.??????, ??????, ?????? ?????????</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
        </div>
      <div class="modal-body">
    
    	 <div class="row">
            <!-- F.A.Q List 1-->
            <div class="accordion acco	rdion-flush" id="faqlist1">
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1" style="font-family: 'Pretendard-Regular';">
                    ??????(??????)????????? ????????? ?????? ??????
                  </button>
                </h2>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body" style="font-family: 'Pretendard-Regular';">
                    ?????????????????? ?????? ??? ????????? ?????? ????????? ???32??? ???2?????? ?????? ????????? ????????? ?????? ???????????? ??????????????????, ?????????????????? ??? ????????????????????????, ???????????????, ??????????????????????????? ????????? ??????????????? ???????????? ?????? ????????? ???????????????.
                    <textarea cols="50" rows="10" style="font-family: 'Pretendard-Regular';">
????????? ??????(??????)??????
1. ???????????? ????????????
  - ?????????????????? (??????, ??????, ????????????, ??????, ?????????????????? ???)
  - ?????????????????? (?????????????????? ??? ??????????????????, ?????? ??? ?????? ???)
  - ?????????????????? (??????/??????/????????? ??????, ???????????? ???)
  - ????????????
  - ???????????? ??? ??????????????????, ?????? ????????? ????????????
  - ??????????????? ??? ?????????????????? ??????????????? ??????

2. ??????????????????
  - ??????????????? ??? ?????????????????? ?????????????????????	

??????(???????????? ????????????)

1. ????????????, ??????????????????
  - ???????????????,??????????????? ???????????? ?????? ??????
2. ??????????????????
  - ??????????????? ????????????, ??????, ?????? ??????
  - ????????????????????????????????? ??? ???????????? ??????????????

???????????? ????????????

????????? ?????????????????? ?????? ???????????? ???????????????

????????? ?????? ????????? ????????? ??? ????????????. ??????, ?????? ?????? ????????? ????????? ?????? ???????????? ???????????????????????? ??? ??????????????? ??????, ?????? ??? ?????? ????????? ???????????? ??? ????????? ?????? ????????????.
</textarea>
                  
				   <div class="col-12" >
				      <input type="checkbox" id="accountOpen1_agree1"
				         name="accountOpen1_agree1" required> 
				     <label
				         for="accountOpen1_agree1">???????????????.</label>
				   </div>
                  </div>
                </div>
              </div>

              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2" style="font-family: 'Pretendard-Regular';">
                    ??????[??????]????????? ??????, ????????? ?????? ??????
                  </button>
                </h2>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body" style="font-family: 'Pretendard-Regular';">
                   		????????? ????????? ??????(??????)????????? ??????, ??????????????? ?????? ???????????? ??????????????????????????? ???15??? ??? ???22???, ?????????????????? ?????? ??? ????????? ?????? ????????? ???32??? ??? ???33?????? ?????? ????????? ????????? ?????????. ?????? ????????? ????????? ????????? ????????? ?????? ????????? ??????(??????)????????? ??????, ??????????????? ???????????????.
                   		 <textarea cols="50" rows="10" style="font-family: 'Pretendard-Regular';">
??????(??????)????????? ??????, ?????? ??????

1. ???????????? ????????????

???????????????, ???????????????, ???????????? ?????? ??????, ???????????? ??????
2. ??????????????????

??????????????? ????????????, ?????? ??? ?????? ??????
??????????????? ?????????????????? ??? ???????????? ??????????????
??????, ????????? ??????(??????)????????? ??????

1. ???????????? ????????????

?????????????????? (??????, ??????, ????????????, ??????, ?????????????????? ???)
?????????????????? (?????????????????? ??? ??????????????????, ?????? ??? ?????? ???)
?????????????????? (??????/??????/????????? ??????, ???????????? ???)
????????????
???????????? ??? ??????????????????, ?????? ????????? ????????????
??????????????? ??? ?????????????????? ??????????????? ??????
?????????????????? ??? ????????????
?????? ??? ?????? ??????
??????(??????)????????? ??????, ?????? ??????

????????? ?????????????????? ?????? ???????????? ???????????????

????????? ?????? ????????? ????????? ??? ????????????. ??????, ?????? ?????? ????????? ????????? ?????? ???????????? ???????????????????????? ??? ??????????????? ??????, ?????? ??? ?????? ????????? ???????????? ??? ????????? ?????? ????????????.
</textarea>
					<div class="col-12">
                     <input type="checkbox" id="accountOpen1_agree1"
                        name="accountOpen1_agree1" required> 
                    <label
                        for="accountOpen1_agree1">???????????????.</label>
                  </div>
                   </div>
                </div>
              </div>
              </div>
              </div>
              </div>
			      <div class="modal-footer">
			      	<button type="button" class="btn btn-primary" onclick="nextStep()">??????</button>
			       	<button type="button" class="btn btn-secondary" data-dismiss="modal">??????</button>
			      </div>
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

	 <script src="http://code.jquery.com/jquery-latest.js"></script> 
	  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	 <script>
		$('#openModal').click(function(e){
			e.preventDefault();
			$('#exampleModal').modal("show");
		});
		
		 function nextStep(){

	   		   
	   			   location.href = "${ pageContext.request.contextPath}/agreePage"
	   		   }
		
	</script>
 
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