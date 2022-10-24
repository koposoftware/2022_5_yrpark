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
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">보험 내역
					</h3>
			</div>
	<c:forEach items="${memberList}" var="m">
		
	
			
		<%-- <c:if test="${ m.insuranceCheck eq 'N'}"> --%>
			<div align="center" style="margin-top: 30px">
				
				<h4 class="mb-5" style="font-family: 'Pretendard-Regular';">보험 내역 조회 동의를 하셔야 조회할 수 있습니다.</h4>
				<button type="button" class="signBtn" data-toggle="modal" data-target="#exampleModal" id="openModal" style="font-family: 'Pretendard-Regular';">
  					보험 조회
				</button>
			</div>
		<%-- </c:if> --%>
</c:forEach>

		<!-- Modal -->
		 
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="margin-top: 140px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">마이데이터 수집.이용, 조회, 제공 동의서</h5>
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
                    개인(신용)정보의 조회에 관한 사항
                  </button>
                </h2>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body" style="font-family: 'Pretendard-Regular';">
                    「신용정보의 이용 및 보호에 관한 법률」 제32조 제2항에 따라 귀사가 아래와 같은 내용으로 손해보험협회, 생명보험협회 등 신용정보집중기관, 금융위원회, 금융감독원으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
                    <textarea cols="50" rows="10" style="font-family: 'Pretendard-Regular';">
조회할 개인(신용)정보
1. 주식회사 하나케어
  - 개인식별정보 (성명, 주소, 전화번호, 직업, 전자우편주소 등)
  - 신용거래정보 (개인대출현황 및 보증채무현황, 연체 등 정보 등)
  - 신용능력정보 (재산/채무/소득의 총액, 납세실적 등)
  - 공공정보
  - 신용등급 및 신용평점정보, 다른 기관의 신용정보
  - 금융위원회 및 금융감독원의 금융사고자 정보

2. 손해보험협회
  - 금융위원회 및 금융감독원의 금융사고자정보	

개인(신용정보 조회목적)

1. 하나케어, 하나금융그룹
  - 보험설계사,보험대리점 위촉여부 판단 목적
2. 손해보험협회
  - 보험설계사 자격등록, 관리, 말소 업무
  - 보험설계사자격시험관리 및 증빙서류 발급·보존

조회동의 유효기간

동의서 제출일로부터 상기 조회목적 달성시까지

귀하는 상기 동의를 거부할 수 있습니다. 다만, 이에 대한 동의를 하시지 않을 경우에는 보험위촉계약체결 및 보험설계사 시험, 등록 및 말소 업무가 불가능할 수 있음을 알려 드립니다.
</textarea>
                  
				   <div class="col-12" >
				      <input type="checkbox" id="accountOpen1_agree1"
				         name="accountOpen1_agree1" required> 
				     <label
				         for="accountOpen1_agree1">동의합니다.</label>
				   </div>
                  </div>
                </div>
              </div>

              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2" style="font-family: 'Pretendard-Regular';">
                    개인[신용]정보의 수집, 이용에 관한 사항
                  </button>
                </h2>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body" style="font-family: 'Pretendard-Regular';">
                   		귀사가 본의의 개인(신용)정보를 수집, 이용하고자 하는 경우에는 「개인정보보호법」 제15조 및 제22조, 「신용정보의 이용 및 보호에 관한 법률」 제32조 및 제33조에 따라 동의를 얻어야 합니다. 이에 본인은 귀사가 아래의 내용과 같이 본인의 개인(신용)정보를 수집, 이용하는데 동의합니다.
                   		 <textarea cols="50" rows="10" style="font-family: 'Pretendard-Regular';">
개인(신용)정보의 수집, 이용 목적

1. 주식회사 하나케어

보험설계사, 보험대리점, 위촉여부 판단 목적, 설문조사 목적
2. 손해보험협회

보험설계사 자격등록, 관리 및 말소 업무
보험설계사 자격시험관리 및 증빙서류 발급·보존
수집, 이용할 개인(신용)정보의 내용

1. 주식회사 하나케어

개인식별정보 (성명, 주소, 전화번호, 직업, 전자우편주소 등)
신용거래정보 (개인대출현황 및 보증채무현황, 연체 등 정보 등)
신용능력정보 (재산/채무/소득의 총액, 납세실적 등)
공공정보
신용등급 및 신용평점정보, 다른 기관의 신용정보
금융위원회 및 금융감동원의 금융사고자 정보
시험결과점수 및 합격여부
등록 및 말소 정보
개인(신용)정보의 보유, 이용 기간

동의서 제출일로부터 상기 조회목적 달성시까지

귀하는 상기 동의를 거부할 수 있습니다. 다만, 이에 대한 동의를 하시지 않을 경우에는 보험위촉계약체결 및 보험설계사 시험, 등록 및 말소 업무가 불가능할 수 있음을 알려 드립니다.
</textarea>
					<div class="col-12">
                     <input type="checkbox" id="accountOpen1_agree1"
                        name="accountOpen1_agree1" required> 
                    <label
                        for="accountOpen1_agree1">동의합니다.</label>
                  </div>
                   </div>
                </div>
              </div>
              </div>
              </div>
              </div>
			      <div class="modal-footer">
			      	<button type="button" class="btn btn-primary" onclick="nextStep()">완료</button>
			       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
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