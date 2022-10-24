<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Insurance</title>
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
.myButton {
	box-shadow: 0px 0px 0px 0px #276873;
	background-color:#599bb3;
	border-radius:24px;
	border:1px solid #29668f;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:12px 40px;
	text-decoration:none;
	text-shadow:0px 1px 0px #3d768a;
	width: 400px;
}

.rankimg {
	width: 40px; 
	height : 40px;
	display: inline-block;
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
		    font-size: 14px;
		    color: var(--color-white);
		    background: var(--color-primary);
		    border-radius: 4px;
		    padding: 5px;
		    transition: 0.3s;
		    border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
		    font-family: var(--font-secondary);
    	}
    	
    	.btn-started:hover {
		    font-size: 14px;
		    color: var(--color-primary);
		    background: var(--color-white);
		    border-radius: 4px;
		    padding: 5px;
		    transition: 0.3s;
		    border: var(--bs-btn-border-width) solid var(--color-primary);
		    font-family: var(--font-secondary);
    	}
    	
    	.downbtn {
    		font-size: 14px;
    		color: var(--color-primary);
    		background: #f7f7f7;
    	}
    	
    	td a:link {
	    color: #fff;
	    text-decoration: 
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
					<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">보험 내역</h3>
				</div>
				
				<div class="container">
    			<h4 style="font-family: 'Nanum Gothic', sans-serif;" class="m-0 font-weight-bold mb-4 fw-bolder">My 보험</h4>

				<table border="1"  width="100%" class="mb-5" style="font-family: 'Pretendard-Regular';">
				
				 	<tr class="text-center" id="list">				 			
			               	<th>보험번호</th>
			               	<th>보험명</th>
			                <th>보험종류</th>
			               	<th>보험회사명</th>
			               	<th>보험료</th>
			               	<th>가입서류</th>
			        </tr>
				
				<c:forEach items="${ insuranceList }" var="insuranceList" varStatus="loop">
			               	<tr class="text-center" id="list">
			                 <td class="table-light">${ insuranceList['NO'] }</td>
			                 <td class="table-light">${ insuranceList['INSURANCE_NAME'] }</td>
			                 <td class="table-light">${ insuranceList['INSURANCE_TYPE'] }</td>
			                 <td class="table-light">${ insuranceList['COMPANY_NAME'] }</td>
			                 <td class="table-light text-end"><fmt:formatNumber value="${ insuranceList['INSURANCE_FEE'] }" pattern="#,### 원" /></td>         
			                 <td class="table-light"><button class="downbtn" style="padding: 5px 10px; border:none;" onclick="window.open('${pagecontext.request.contextpath}/project/signInfo', 'window_name', 'width=430, height=500, location=no, status=no, scrollbars=yes');">pdf 다운로드</button></td>
			                 <%-- <td class="table-light"><a style="text-decoration:none;" type="button" class="btn-started" href="${ pageContext.request.contextPath}/download/insurance.pdf">파일 다운로드</a></td> --%>
			                 <%-- <td>
				                 <form id="pdf" action="${ pagecontext.request.contextpath }/project/agreePage" method="post">
									<input type="hidden" id="pdf_value" name="pdf_value" value="">
									<input type="button" id="button_pdf" value="pdf보기">
								 </form>
							</td> --%>	 
			                </tr>  
			   </c:forEach>
			   <c:forEach items="${ insuranceSum }" var="insuranceSum" varStatus="loop">
			               	<tr class="text-center">
			                 <td></td>
			                 <td></td>
			                 <td></td>
			                 <td>보험료 합계</td>
			                 <td class="table-light text-end"><fmt:formatNumber value="${ insuranceSum['SUM'] }" pattern="#,### 원" /></td>         
			                </tr>  
			   </c:forEach>
			   </table>
			   
			   
			   <div class="d-flex" style="justify-content: space-between;">
			   <div style="display: inline-block;">
			   
			   <h4 style="font-family: 'Nanum Gothic', sans-serif;" class="mb-1 font-weight-bold fw-bolder text-center">
			   		또래 보험 가입 순위
			   </h4>
			   
			   <h5 style="font-family: 'Pretendard-Regular';" class="mb-4 text-center">
			   	<c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
				   	 <c:if test="${ insuranceRank['RANK'] eq 1}">
			               또래의 보험 가입 1순위는 ${ insuranceRank['INSURANCE_TYPE'] }입니다.
			          </c:if>
	          	</c:forEach>
			   </h5>
			   
			   <div class="d-flex mx-4">
			   <div class="row">
			   		<div class="d-flex mb-2">
			   		
			   			<img src="./img/number1.png" class="rankimg me-3">
			   		<c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
			               	
		               	<c:if test="${ insuranceRank['RANK'] eq 1}">
		               		<h4 class="pt-2 mx-2" style="font-family: 'Pretendard-Regular';">${ insuranceRank['INSURANCE_TYPE'] }</h4>
		               	</c:if>
		               	
				    </c:forEach>
					</div>
					
					<div class="d-flex mb-2">
			   		
			   			<img src="./img/number2.png" class="rankimg me-3">
				    <c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
			               	
		               	<c:if test="${ insuranceRank['RANK'] eq 2}">
		               		<h4 class="pt-2 mx-2" style="font-family: 'Pretendard-Regular';">${ insuranceRank['INSURANCE_TYPE'] }</h4>
		               	</c:if>
		               	
				    </c:forEach>
				    </div>
				    
				    <div class="d-flex mb-2">
			   		
			   			<img src="./img/number3.png" class="rankimg me-3">
				    <c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
			               	
		               	<c:if test="${ insuranceRank['RANK'] eq 3}">
		               		<h4 class="pt-2 mx-2" style="font-family: 'Pretendard-Regular';">${ insuranceRank['INSURANCE_TYPE'] }</h4>
		               	</c:if>
		               	
				    </c:forEach>
				    </div>
				    
				    <div class="d-flex mb-2">
			   		
			   			<img src="./img/number4.png" class="rankimg me-3">
				    <c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
			               	
		               	<c:if test="${ insuranceRank['RANK'] eq 4}">
		               		<h4 class="pt-2 mx-2" style="font-family: 'Pretendard-Regular';">${ insuranceRank['INSURANCE_TYPE'] }</h4>
		               	</c:if>
		               	
				    </c:forEach>
				    </div>
				    
				    <div class="d-flex mb-2">
			   		
			   			<img src="./img/number5.png" class="rankimg me-3">
				    <c:forEach items="${ insuranceRank }" var="insuranceRank" varStatus="loop">
			               	
		               	<c:if test="${ insuranceRank['RANK'] eq 5}">
		               		<h4 class="pt-2 mx-2" style="font-family: 'Pretendard-Regular';">${ insuranceRank['INSURANCE_TYPE'] }</h4>
		               	</c:if>
		               	
				    </c:forEach>
				    </div>
				               	
			   </div>
			   </div>
			</div>
			
			<div style="display: inline-block;">
				<h4 style="font-family: 'Nanum Gothic', sans-serif;" class="mb-1 font-weight-bold fw-bolder text-center">
			   		또래 평균 월납 보험료
			   </h4>

				<div>
				   <h5 style="font-family: 'Pretendard-Regular';" class="mb-4 text-center">
				   		또래보다 월  
				   
			   <c:forEach items="${ insuranceFee }" var="insuranceFee" varStatus="loop">
				   	<c:if test="${insuranceFee['AVG_FEE'] - insuranceFee['USER_FEE'] ge 0}">
				   		<div style="color: blue; display: inline-block;">
				   			<fmt:formatNumber value="${insuranceFee['AVG_FEE'] - insuranceFee['USER_FEE'] }" pattern="#,###원" />
				   		</div>
				   		
				   			덜 내고 있습니다.
				   		
				   </c:if>
				   <c:if test="${insuranceFee['AVG_FEE'] - insuranceFee['USER_FEE'] lt 0}">
				   		<div style="color: red; display: inline-block;">
				   			<fmt:formatNumber value="${insuranceFee['AVG_FEE'] - insuranceFee['USER_FEE'] }" pattern="#,###원" />
				   		</div>
				   		
				   			더 내고 있습니다.
				   		
				   </c:if>
			   </c:forEach>
			   </h5>
			   </div>
				<div style="width:600px; height:300px; display: inline-block;">
				<canvas id="bar-chart"></canvas>
				</div>
				
				</div>
		</div>
		</div>
		</div>
		</div>
	
</section>

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
<script>

window.onload = function() {
	let data = [];
	
	<c:forEach items="${ insuranceFee }" var="insuranceFee" varStatus="loop">
		data.push(${insuranceFee['USER_FEE']});
		data.push(${insuranceFee['AVG_FEE']});
	</c:forEach>
new Chart(document.getElementById("bar-chart"), {
	
    type: 'bar',
    data: {
      labels: ["내 보험료", "또래 보험료"],
      datasets: [{
          label: "보험료 (단위: 원)",
          backgroundColor: ['rgba(121, 192, 242, 0.5)', 
        	  'rgba(255, 142, 166, 0.5)'],
          data: data
        }]
    },
    options: {
      legend: { display: false },
      title: {
        display: false,
        
      },
      
      scales: {
    	  xAxes: [{
              barPercentage: 0.4
          }], 
          
  		yAxes: [ {
  			
  			ticks: {
  				beginAtZero: true, // 0부터 시작하게 합니다.
  				stepSize: 20000   // 10000 씩 증가하도록 설정합니다.
  			} 
  			
  			
  		} ]
  	}, 
  	 showValue:{
         fontStyle: '', //Default Arial
         fontSize: 20
  }, 
  animation: { startup: true,                 
	  duration: 1000,                 
	  easing: 'linear' }

    }, 
    bar: {groupWidth: "100%"}
});

};
</script>
	
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