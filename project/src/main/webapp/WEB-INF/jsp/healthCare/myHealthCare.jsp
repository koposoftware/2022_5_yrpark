<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Health Care</title>
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
	.normal{
		 background-color: #70bf64;
		 color: #fff;
		 font-family: Arial;
		 font-size: 14px;
		 font-weight: 600;
		 font-style: normal;
		 text-decoration: none;
		 padding: 4px 20px;
		 border: 0px solid #000;
		 border-radius: 48px;
		 display: inline-block;
		 box-shadow: 0px 0px 5px 0px rgba(69.31156396865845,69.31156396865845,69.31156396865845,0.5);
		}

	.warn{
		 background-color: #faa20a;
		 color: #fff;
		 font-family: Arial;
		 font-size: 14px;
		 font-weight: 600;
		 font-style: normal;
		 text-decoration: none;
		 padding: 4px 20px;
		 border: 0px solid #000;
		 border-radius: 48px;
		 display: inline-block;
		 box-shadow: 0px 0px 5px 0px rgba(69.31156396865845,69.31156396865845,69.31156396865845,0.5);
		}

	.danger{
		background-color: #ed2b00; 
		 color: #fff;
		 font-family: Arial;
		 font-size: 14px;
		 font-weight: 600;
		 font-style: normal;
		 text-decoration: none;
		 padding: 4px 20px;
		 border: 0px solid #000;
		 border-radius: 48px;
		 display: inline-block;
		 box-shadow: 0px 0px 5px 0px rgba(69.31156396865845,69.31156396865845,69.31156396865845,0.5);
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
		
		.btn-started {
		    font-size: 16px;
		    color: var(--color-white);
		    background: var(--color-primary);
		    border-radius: 4px;
		    padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
		    transition: 0.3s;
		    border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
		    font-family: var(--font-secondary);
    	}
    	
    	.btn-started:hover {
		    font-size: 16px;
		    color: var(--color-primary);
		    background: var(--color-white);
		    border-radius: 4px;
		    padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
		    transition: 0.3s;
		    border: var(--bs-btn-border-width) solid var(--color-primary);
		    font-family: var(--font-secondary);
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
<%
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	if(year==null || year.equals("")) {
		year=Util.getStringNowYear();
	}
	if(month==null || month.equals("")) {
		month=Util.getStringNowMonth();
	}
	
%>	
	<c:set var="year" value="<%=year%>" />
	<c:set var="month" value="<%=month%>" />
	
	<section  id="hero-animated" class="hero-animated2 align-items-center">
		
		<div id='mask_wrap2'>
			<div id="mask"></div>
			<div id="wrap2">
			<div class="section-header mt-4">
				<h3
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">My 헬스케어</h3>
			</div>
	
	<div class="container">
	<h4 style="font-family: 'Nanum Gothic', sans-serif;" class="m-0 font-weight-bold mb-4 fw-bolder">건강검진</h4>
	
	
	<div class="row">


				 <!-- Earnings (Annual) Card Example -->
                        <div class="col-md-6 mb-4" >
                            <div class="card border-left-success shadow h-100">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
 											<c:forEach items="${selectAge}" var="selectAge">
 											<c:choose>
 													<c:when test="${ year % 2 ==1 }">
 												<c:choose>
	 												<c:when test="${selectAge['AGEMOD'] eq 1}">
							               			<div class="h5 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
														<%=year%>년 국가건강검진 대상자입니다.
													</div>
		                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="font-family: 'Pretendard-Regular';">
		                                            	건강검진으로 건강을 꾸준히 관리하세요!
							             			</div>
								               		</c:when>
								               		
								               		<c:otherwise>
												<div class="h5 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
												<%=year%>년 국가건강검진 비대상자입니다.
											</div>
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="font-family: 'Pretendard-Regular';">
                                            	건강검진 전까지 건강을 꾸준히 관리하세요!
					             			</div>
					             					</c:otherwise>
					             					</c:choose>
					             					</c:when>
					             					
					             					
					             					<c:otherwise>
					             					<c:choose>
					             						<c:when test="${selectAge['AGEMOD'] eq 0}">
							               			<div class="h5 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
														<%=year%>년 국가건강검진 대상자입니다.
													</div>
		                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="font-family: 'Pretendard-Regular';">
		                                            	건강검진으로 건강을 꾸준히 관리하세요!
							             			</div>
								               		</c:when>
								               		
								               		<c:otherwise>
												<div class="h5 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
												<%=year%>년 국가건강검진 비대상자입니다.
											</div>
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="font-family: 'Pretendard-Regular';">
                                            	건강검진 전까지 건강을 꾸준히 관리하세요!
					             			</div>
					             					</c:otherwise>
					             					</c:choose>
					             					</c:otherwise>
											</c:choose>
 											</c:forEach>
                                        </div>
                                        <div class="col-auto">
                                            <img src="./img/advice.png" style="max-width: 80px; display: inline-block;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-md-6 mb-4">
                            <div class="">
                                <div class="align-middle">
         
                                        <div class="col text-center">
							         		<a type="button" style="font-family: 'Pretendard-Regular';" class="btn-getstarted col-md-4 signBtn" href="${ pageContext.request.contextPath}/searchClinic">검진기관 찾기</a>
							         		<a type="button" style="font-family: 'Pretendard-Regular';" class="btn-getstarted col-md-4 signBtn" href="${ pageContext.request.contextPath}/searchClinic">공휴일 검진기관</a>
                                            <button type="button" style="font-family: 'Pretendard-Regular';" class="btn-getstarted col-md-8 mt-3 signBtn" data-toggle="modal" data-target="#bloodModal" id="openModal">이전 검진결과 보기</button>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
     	<!-- Modal -->
<div class="modal fade" id="bloodModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'Pretendard-Regular';">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fw-bolder" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">이전 검진결과 보기</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
        </div>                   
	 <div class="modal-body text-center" >
      
      	
				<img src='./img/healthlogo.png' style="max-width: 200px;" class="pb-3"><br>
				<h6 style="font-family: 'Pretendard-Regular'; font-size: 20px;"  >국민건강보험공단에서 건강검진결과를 확인하고자 합니다.<br>
				수락하시겠습니까?</h6>
                       	
                       
                      
                       </div>
                       
			      <div class="modal-footer">
			      	<input type="submit" class="btn btn-started" id="clickBtn" onclick="nextStep()" value="확인">
			       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			      </div>
			     
                                                 </div>
                                                 </div>
                                                 </div>
               
              
	
	
	<div id = "checkList">
	<form action="" id="form1" name="sform">
		<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">${loginVO.name}님,</h4>
		<select id="year" name="year">
			<option value="2021" <c:if test="${year eq '2021'}" /> >2021</option>
		</select><h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">년 건강검진 결과</h4>
	</form>
	
	<table border="1"  width="100%" class="mb-5">
				
				 	<tr class="text-center" id="list" >
				 			<th>예상질환</th>
			               	<th>검진항목</th>
			                <th>검진수치</th>
			                <th>검진결과</th>
			               	<th>참고범위</th>
			               	
			        </tr>
				
				<c:forEach items="${ checkUpList }" var="checkUpList" varStatus="loop">
			               	<tr class="text-center" style="font-family: 'Pretendard-Regular';">
			               	 <td rowspan="2">고혈압</td>
			               	 
			               	 
			                 <td>수축기</td>
			                 <td>${ checkUpList['BP_HIGH'] } mmHg</td>
			                 
		                 	<c:choose>
		                 
			        		 <c:when test="${ checkUpList['BP_HIGH_RESULT'] eq '위험' }">          
			                 	<td><div class="danger" href="#">위험</div></td>
			                 </c:when>
			                 <c:when test="${ checkUpList['BP_HIGH_RESULT'] eq '정상'}">          
			                 	<td><div class="normal" href="#">정상</div></td>                 	
			                 </c:when>
			                 <c:otherwise>
			                 	<td><div class="warn" href="#">주의</div></td>
			                 </c:otherwise>
				                 
			                 </c:choose>
			                 
			                 <td rowspan="2">
			                 	고혈압 전단계(수축기 120-139 또는 이완기 80-89)<br>
			                 	고혈압 의심(140 이상 또는 90 이상)
			                 </td>
			                
			                 </tr>
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
				                 <td>이완기</td>
				                 <td>${ checkUpList['BP_LWST'] } mmHg</td>
				                 <c:choose>
			                 
				        		 <c:when test="${ checkUpList['BP_LWST_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['BP_LWST_RESULT'] eq '정상' }">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                
			                 </tr>
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td>빈혈 등</td>
			                 	<td>혈색소(g/dL)</td>
			                 	<td>${ checkUpList['HMG'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['HMG_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['HMG_RESULT'] eq '정상' }">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		남 13.0 ~ 16.5 / 여 12.0 ~ 15.5
			                 	</td>
				              
			                 </tr>
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td rowspan="2">신장질환</td>
			                 	<td>혈청크레아티닌(mg/dL)</td>
			                 	<td>${ checkUpList['CREATININE'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['CREATININE_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['CREATININE_RESULT'] eq '정상' }">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		1.2 이하
			                 	</td>
				              
			                 </tr> 
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td>신사구체여과율(e-GFR)</td>
			                 	<td>${ checkUpList['E_GFR'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['E_GFR_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['E_GFR_RESULT'] eq '정상' }">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		60.0 이상
			                 	</td>
				              
			                 </tr> 
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td rowspan="3">간장질환</td>
			                 	<td>AST(SGOT) (IU/L)</td>
			                 	<td>${ checkUpList['SGOT_AST'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['SGOT_AST_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['SGOT_AST_RESULT'] eq '정상'}">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		33.0 이하
			                 	</td>
				              
			                 </tr> 
			                 
			                 
			                 <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td>ALT(SGPT) (IU/L)</td>
			                 	<td>${ checkUpList['SGPT_ALT'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['SGPT_ALT_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['SGPT_ALT_RESULT'] eq '정상'}">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		38.0 이하
			                 	</td>
				          
			                 </tr> 
	             
	             			<tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td>감마지티피 (IU/L)</td>
			                 	<td>${ checkUpList['GAMMA_GTP'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['GAMMA_GTP_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['GAMMA_GTP_RESULT'] eq '정상'}">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		남 56.0 이하 / 여 38.0 이하
			                 	</td>
				              
			                 </tr> 
			                 
			                  <tr class="text-center" style="font-family: 'Pretendard-Regular';">
			                 	<td>요단백</td>
			                 	<td>요단백</td>
			                 	<td>${ checkUpList['OLIG_PROTE_CD'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ checkUpList['OLIG_PROTE_CD'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ checkUpList['OLIG_PROTE_CD'] eq '정상'}">          
				                 	<td><div class="normal" href="#">정상</div></td>
				                 </c:when>
				                 <c:otherwise>
				                 	<td><div class="warn" href="#">주의</div></td>
				                 	
				                 </c:otherwise>
					                 
				                 </c:choose>
				                 <td>
			                 		-
			                 	</td>
				             
			                 </tr> 
			   </c:forEach>
			   </table>
			   <div class="text-end">
			   <a class="btn-getstarted scrollto" style="font-family: 'Pretendard-Regular';" href="${ pageContext.request.contextPath}/exerciseMission">미션하러 가기</a>
			   <a class="btn-getstarted scrollto" style="font-family: 'Pretendard-Regular';" href="${ pageContext.request.contextPath}/myInsurance">건강검진 결과 상품 조회</a>
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
		$('#openModal').click(function(){
			
			$('#bloodModal').modal("show");
		});
		
</script>


  
  <script>
	  document.getElementById("checkList").style.display = "none";
	  function nextStep(){
	  $('#clickBtn').click(function(e){
			e.preventDefault();
			$('#bloodModal').modal("hide");			
			$('.modal-backdrop').remove();	
			$('#checkList').show();
		});
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