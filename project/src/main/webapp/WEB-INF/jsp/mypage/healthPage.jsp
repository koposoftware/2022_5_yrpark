<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="kr.ac.kopo.Util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Health Page</title>
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

<script>
	$(function() {
		$('#year').off('change').on('change', function() {
			form1.submit();
		});
		$('#month').off('change').on('change', function() {
			form1.submit();
		});
	});
</script>
<style>
	.mall {
		font-family: 'Nanum Gothic', sans-serif; 
		display: inline-block; 
		margin-left: 300px;
	}
	
	.mall:hover {
		color: var(--bs-link-hover-color);
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
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">건강 내역</h3>
			</div>
	
	<div class="container">
	<div class="d-flex" style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;">
    <h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block; padding-top: 12px;" class="m-0 font-weight-bold mb-4 fw-bolder">포인트 내역</h4>
    <%-- <div class="mall"><a href="${pageContext.request.contextPath }/pointMall"><h5 class="mb-3"><i class="fa-solid fa-store" style="font-size: 25px; color: black;"></i>  하나포인트몰</h5></a></div> --%>
	</div>
	
	<div class="row">


				 <!-- Earnings (Annual) Card Example -->
                        <div class="col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center pt-2">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                </div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
                                            하나포인트
					             			</div>
                                        </div>
                                        <div class="h4 mb-0 col text-end" style="font-family: 'Pretendard-Regular';">
                                             <c:forEach items="${memberList}" var="m">
					             				 ${m.point} P
					             			</c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-md-6 mb-4">
                            <div class="">
                                <div class="align-middle">
                                    <div class="row no-gutters justify-content-sm-center mb-4">
                                    	<div class="col-md-4">
				                    		<input type="date" class="form-control"> 
				                        </div>
				                        <div class="col-md-1 text-center pt-1">
				                        	<img src="./img/tilde.png" style="max-width: 10px; display: inline-block;">
				                        </div>
                                    	<div class="col-md-4">
				                    		<input type="date" class="form-control">
				                        </div>
				                        </div>
				                        
                                        <div class="col text-center">
                                            <button type="submit" class="btn-getstarted me-4">전체내역</button>
							         		<button type="submit" class="btn-getstarted me-4">적립내역</button>
							         		<button type="submit" class="btn-getstarted">사용내역</button>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
	
               
              
        		
            

	 <form action="" id="form1" name="sform">
		<select id="year" name="year">
			<option value="2022" <c:if test="${year eq '2022'}" /> >2022</option>
		</select><h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">년　</h4>
		
		
		<select id="month" name="month">
			<option value="1" <c:if test="${month eq '1'}">selected</c:if>>1</option>
			<option value="2" <c:if test="${month eq '2'}">selected</c:if>>2</option>
			<option value="3" <c:if test="${month eq '3'}">selected</c:if>>3</option>
			<option value="4" <c:if test="${month eq '4'}">selected</c:if>>4</option>
			<option value="5" <c:if test="${month eq '5'}">selected</c:if>>5</option>
			<option value="6" <c:if test="${month eq '6'}">selected</c:if>>6</option>
			<option value="7" <c:if test="${month eq '7'}">selected</c:if>>7</option>
			<option value="8" <c:if test="${month eq '8'}">selected</c:if>>8</option>
			<option value="9" <c:if test="${month eq '9'}">selected</c:if>>9</option>
			<option value="10" <c:if test="${month eq '10'}">selected</c:if>>10</option>
			<option value="11" <c:if test="${month eq '11'}">selected</c:if>>11</option>
			<option value="12" <c:if test="${month eq '12'}">selected</c:if>>12</option>
		</select><h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">월  사용한 의료비 내역
		</h4>
		
	</form> 
		
	
	<table border="1" width = "100%">
              <thead>
               <tr style="text-align: center;" id="list">
               	
               	<th>카드번호</th>
                <th>결제일</th>
               	<th>상호명</th>
               	<th>결제금액</th>
               	</tr>
               	</thead>
               	
               	<tbody>
	<c:forEach items="${ medicalList }" var="medicalList" varStatus="loop">
               	<tr style="text-align: center; font-family: 'Pretendard-Regular';">
                  <td class="table-light">${ medicalList['CARD_NUM'] }</td>              
                  <td class="table-light">${ medicalList['USING_DATE'] }</td>
                 <td class="table-light">${ medicalList['STORE_NAME'] }</td>
                  <td class="table-light"><fmt:formatNumber value="${ medicalList['USING_PRICE'] }" pattern="#,###원" /></td>
                </tr>  
   </c:forEach>
                </tbody>             
               
   
   			<c:forEach items="${ sum }" var="sum" varStatus="loop">
               <tr class="" style="font-family: 'Pretendard-Regular';">
               		<td></td>
               		<td></td>
               		<td class="text-md-center">${month}월 의료비 합계: </td>
               		<td class="text-md-center text-end"><fmt:formatNumber value="${ sum['SUM'] }" pattern="#,###원" /></td>
               </tr>
   			</c:forEach>
   </table>
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