<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보험 가입</title>
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
  
  
	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>

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
		
		body {
			font-family: 'Pretendard-Regular';
		}
		
		.fa-solid {
		    margin-top: 10px;
		    font-size: 1rem;
		    color: #dc3545;
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
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">보험가입</h3>
			</div>
			
			<div class="container">
			
		<!-- 보험가입 폼 start -->
		<div class="row">
		
		
		
	
		<h4 style="font-family: 'Pretendard-Regular';" class="mb-4">보험 가입 신청서</h4>
                    <div class="col-lg-12 wow fadeInUp" data-wow-delay="0.3s">
                        
                       <div class="d-flex">
                       <div style="width: 1400px;">
                      <h5 style="font-family: 'Pretendard-Regular';">신청인 정보</h5>
                    	<table>
                    			<tr>
                    				<th rowspan="4">신청인</th>
                    				<td>성명</td>
                    				<td>${loginVO.name}</td>
                    			</tr>
                    			<tr>
                    				<td>주민등록번호</td>
                    				<td>${loginVO.jumin1} - ${loginVO.jumin2}</td>
                    			</tr>
                    			<tr>
                    				<td>자택주소</td>
                    				<td>${loginVO.mainAddr}</td>
                    				<td>${loginVO.detailAddr}</td>
                    			</tr>
                    			<tr>
                    				<td>연락처</td>
                    				<td>${loginVO.tel}</td>
                    			</tr>
                    		
                    	</table>
                         </div> 
                          
                        
                     <div>    	
                        <h5 style="font-family: 'Pretendard-Regular';">보험 정보</h5>
                        <form action="${ pageContext.request.contextPath}/joinproc" method="post" name="insertInsurance">
                	
                    <div class="row g-3">
                    	<input name="no" type="hidden" value="${insuranceitem.no}">
                    	<input name="companyName" type="hidden" value="${insuranceitem.companyName}">
				 		<input name="insuranceName" type="hidden" value="${insuranceitem.insuranceName}">
				 		<input name="insuranceFee" type="hidden" value="${insuranceitem.insuranceFee}">
				 		<input name="insuranceType" type="hidden" value="${insuranceitem.insuranceType}">
                        <table>
                      			<tr>
                      				<th rowspan="3" style="width: 70px;" class="text-center">보험정보</th>
                      				<td style="width: 100px;">보험회사명</td>
                      				<td><input style="border: none; background: none;" name="companyName" id="companyName" placeholder="${insuranceitem.companyName}" disabled="disabled"></td>
                      				
                      			</tr>
                      			<tr>
                      				<td>보험명</td>
                      				<td><input style="border: none; background: none; width: 420px;" name="insuranceName" id="insuranceName" placeholder="${insuranceitem.insuranceName}" disabled="disabled"></td>
                      			</tr>
                      			<tr>
                      				<td>보험종류</td>
                      				<td><input style="border: none; background: none;" name="insuranceType" id="insuranceType" placeholder="${ insuranceitem.insuranceType }" disabled="disabled"></td>
                      			</tr>
                      			<tr>
                      				<th rowspan="3" class="text-center">보험료</th>
                      				<td>보험료</td>
                      				<td><input style="border: none; background: none;" name="insuranceFee" id="insuranceFee" placeholder="<fmt:formatNumber value="${insuranceitem.insuranceFee}" pattern="#,### 원" />" disabled="disabled"></td>
                      			</tr>
                      			<tr>
                      				<td>포인트</td>
                      				<td>
                      					<input type="text" id="point" style="width: 100px;" value="0">P 
										<c:forEach items="${ selectPoint }" var="selectPoint" varStatus="loop">
											(총 포인트: ${ selectPoint['POINT'] }P)
										</c:forEach>
										<button class="btn-getstarted" style="font-family: 'Pretendard-Regular'; font-size: 14px; padding: 3px 7px 3px 7px;" type="button" onclick="minus()">포인트 사용</button>
									</td>
                      				
                      			</tr>
                      			<tr>
                      				<td>최종가입료</td>
                      				<td>
                      					<span id="result"><fmt:formatNumber value="${insuranceitem.insuranceFee}" pattern="#,### 원" /></span>

									<td>
                      				
                      			</tr>
                      	</table>
                      	
                      	<h6 style="font-family: 'Pretendard-Regular'; margin: 0;" class="mt-2">※ 포인트로 인한 보험료 할인은 최초 가입시만 적용됩니다.</h6>
                      	<h6 style="font-family: 'Pretendard-Regular'; margin: 0;" class="mt-2">※ 실제 보험료는 보험기간, 납입기간, 가입금액 등 선택에 따라 달라질 수 있습니다.</h6>
                      	
      				</div>
      			</div>
      		</div>
      	</div>
    
        
		
		<!-- 보험 가입 동의 start -->
		<div class="mt-5">
			<h4 style="font-family: 'Pretendard-Regular';">보험 가입 동의서</h4>
			<h6 style="font-family: 'Pretendard-Regular';"><i class="fa-solid fa-circle-exclamation pe-1"></i>본 동의서는 요약 동의서이며, 「신용정보의 이용 및 보호에 관한 법률」에 따라, 상세동의서의 주요 사항만을 발췌한 동의서입니다. </h6>
			<h6 class="mx-3" style="font-family: 'Pretendard-Regular';">요약 동의서에 동의하시면 상세 동의서에 대한 동의는 생략합니다.</h6>
			<div class="d-flex">
			<div class="row" style="width: 1200px;">
              <span style="font-size: 21px;">[필수]계약 체결 ‧ 이행을 위한 상세 동의서 (개인금융성 신용보험용)</span>
			<label for="agree_all" style="margin-bottom: 15px; margin-top: 20px;">
              <input type="checkbox" name="agree_all" id="agree_all" style ="width: 18px; height: 16px;">
              <span style="font-size: 20px; text-align: center;">모두 동의합니다</span>
            </label>
            
            <div class="accordion acco	rdion-flush" id="faqlist1" style="width: 1000px;">
           		 <div class="accordion-item">
                   <h2 class="accordion-header" id="headingone">
                     <label for="agree" style="width:980px">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1" style="width:974px;">
	                       <input type="checkbox" name="agree" value="1" style ="width: 16px; height: 15px;">
	                       <span style="font-size: 16px;">&nbsp개인(신용)정보의 수집·이용 목적</span>
                       </button>
                     </label>
                  </h2>
                  <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body">
                    「신용정보의 이용 및 보호에 관한 법률」 제32조 제2항에 따라 귀사가 아래와 같은 내용으로 손해보험협회, 생명보험협회 등 신용정보집중기관, 금융위원회, 금융감독원으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
                    <textarea cols="100" rows="10" style="border: none">
o 보험계약의 인수 심사·체결·유지·관리(부활 및 갱신 포함)
o 보험금 등 지급·심사
o 순보험요율의 산출·검증
o 민원 처리 및 분쟁 대응
o 적부 및 사고조사(보험사기 조사 포함)
o 보험모집질서의 유지
o 기존 계약자에 대한 보험계약 상담(당사 및 당사 설계사에 한함)
o 금융거래 관련 업무(금융거래 신청, 자동이체 등)
</textarea>
                  
				 
                  </div>
                </div>
             </div>
		</div>
		
            <div class="accordion acco	rdion-flush" id="faqlist2" style="width: 1000px;">
           		 <div class="accordion-item">
                   <h2 class="accordion-header" id="headingone">
                     <label for="agree" style="width:980px">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2" style="width:974px;">
	                       <input type="checkbox" name="agree" value="1" style ="width: 16px; height: 15px;">
	                       <span style="font-size: 16px;">&nbsp수집·이용할 개인(신용)정보의 내용</span>
                       </button>
                     </label>
                  </h2>
                  <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                  <div class="accordion-body">
                    「신용정보의 이용 및 보호에 관한 법률」 제32조 제2항에 따라 귀사가 아래와 같은 내용으로 손해보험협회, 생명보험협회 등 신용정보집중기관, 금융위원회, 금융감독원으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
                    <textarea cols="100" rows="10" style="border: none">
o 개인식별정보(성명,주민등록번호, 외국인등록번호, 주소, 성별, 직업, 전화번호, 휴대전화번호, 전자우편 주소)
o 당사, 신용정보집중기관 및 보험요율 산출기관에서 수집·관리하는 보험계약 정보, 피보험자의 질병 및 상해에 관한 정보, 보험금 지급 관련 정보(사고정보, 본인의 위임을 받아 취득한 각종 조사서, 판결문, 증명서, 확인서, 진료기록 등)
o 계약 전 알릴 의무 사항, 소득 및 재산 사항
o 법률 및 국제협약 등의 의무이행을 위한 정보
o 금융거래 업무(보험료 및 보험금 등 출·수납) 관련 정보
</textarea>
                  
				 
                  </div>
                </div>
             </div>
		</div>
		
            <div class="accordion acco	rdion-flush" id="faqlist3" style="width: 1000px;">
           		 <div class="accordion-item">
                   <h2 class="accordion-header" id="headingone">
                     <label for="agree" style="width:980px">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3" style="width:974px;">
	                       <input type="checkbox" name="agree" value="1" style ="width: 16px; height: 15px;">
	                       <span style="font-size: 16px;">&nbsp개인(신용)정보의 보유·이용기간</span>
                       </button>
                     </label>
                  </h2>
                  <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist3">
                  <div class="accordion-body">
                    「신용정보의 이용 및 보호에 관한 법률」 제32조 제2항에 따라 귀사가 아래와 같은 내용으로 손해보험협회, 생명보험협회 등 신용정보집중기관, 금융위원회, 금융감독원으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
                    <textarea cols="100" rows="10" style="border: none">
o 수집·이용 동의일로부터 거래종료 후 5년까지 (단, 거래종료 후 5년이 경과한 후에는 보험금 지급, 금융사고 조사, 보험사기 방지∙적발, 민원처리, 법령상 의무이행을 위한 경우에 한하여 보유·이용하며, 별도 보관)
</textarea>
                  
				 
                  </div>
                </div>
             </div>
		</div>
		
		<div class="accordion acco	rdion-flush" id="faqlist4" style="width: 1000px;">
           		 <div class="accordion-item">
                   <h2 class="accordion-header" id="headingone">
                     <label for="agree" style="width:980px">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-4" style="width:974px;">
	                       <input type="checkbox" name="agree" value="1" style ="width: 16px; height: 15px;">
	                       <span style="font-size: 16px;">&nbsp민감정보 및 고유 식별정보의 처리에 관한 사항</span>
                       </button>
                     </label>
                  </h2>
                  <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist4">
                  <div class="accordion-body">
                    「신용정보의 이용 및 보호에 관한 법률」 제32조 제2항에 따라 귀사가 아래와 같은 내용으로 손해보험협회, 생명보험협회 등 신용정보집중기관, 금융위원회, 금융감독원으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
                    <textarea cols="100" rows="10" style="border: none">
o 수집·이용 동의일로부터 거래종료 후 5년까지 (단, 거래종료 후 5년이 경과한 후에는 보험금 지급, 금융사고 조사, 보험사기 방지∙적발, 민원처리, 법령상 의무이행을 위한 경우에 한하여 보유·이용하며, 별도 보관)
</textarea>
                  
				 
                  </div>
                </div>
             </div>
		</div>
		</div>
		
		
		</div>
		
		</div>
		<!-- 보험 가입 동의 end -->
		
		
		
		</div>
		
		<div class="col-2 mt-4" style="margin-left: 450px;">
                            <button class="btn signBtn w-100 py-3 mb-4" type="submit">가입하기</button>
        </div>
                    
                </form>

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
   const agreeChkAll = document.querySelector('input[name=agree_all]');
   
   agreeChkAll.addEventListener('change', (e) => {
      let agreeChk = document.querySelectorAll('input[name=agree]');
      for(let i = 0; i < agreeChk.length; i++){
        agreeChk[i].checked = e.target.checked;
      }
   });
   
 /*   function nextStep(){
		   location.href = "${ pageContext.request.contextPath}/index.jsp"
	   } */
   
   function minus() {
   const point = document.querySelector("#point").value;
   const insuranceFee = parseInt("${insuranceitem.insuranceFee}");
   
   const result = (Number(insuranceFee) - Number(point)).toLocaleString();
   document.querySelector("#result").innerText = result + " 원";
   
   }
</script>

</body>
</html>
                              				