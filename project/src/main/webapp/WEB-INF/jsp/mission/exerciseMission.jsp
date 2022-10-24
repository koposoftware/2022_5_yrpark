<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>Exercise Mission</title>
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
	
	<style>
		.box {
		    width: 220px;
		    height: 220px; 
		    border-radius: 70%;
		    overflow: hidden;
		    font-size:16px;
		    text-align:center;
		    
		}
		.profile {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		}
				
		.nav-tabs .nav-link {
		    margin-bottom: calc(var(--bs-nav-tabs-border-width) * -1);
		    background: #fff;
		    border: var(--bs-nav-tabs-border-width) solid;
		    border-top-left-radius: var(--bs-nav-tabs-border-radius);
		    border-top-right-radius: var(--bs-nav-tabs-border-radius);
		    border-radius: 10px;
		}
		
		.nav-tabs {
		    --bs-nav-tabs-border-width: 1px;
		    --bs-nav-tabs-border-color: #dee2e6;
		    --bs-nav-tabs-link-hover-border-color: #e9ecef #e9ecef #dee2e6;
		    --bs-nav-tabs-link-active-color: #495057;
		    --bs-nav-tabs-link-active-bg: #fff;
		    --bs-nav-tabs-link-active-border-color: #dee2e6 #dee2e6 #dee2e6;
		     border-bottom: none;
		}
		
		.nav-link {
			color: gray;
		}
		
		.nav-tabs .nav-link:hover {
			border-color: #0ea2bd;
			background: #0ea2bd;
			color: #fff;
		}
		
		.nav-tabs .nav-link.active {
		    color: #fff;
		    background-color: #0ea2bd;
		    
		}
		
		
		.fa-solid {
		    margin-top: 10px;
		    font-size: 1rem;
		    color: #dc3545;
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
		$('#day').off('change').on('change', function() {
			form1.submit();
		});
	});
</script>

</head>
<body style="font-family: 'Pretendard-Regular';">
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
	String day = request.getParameter("day");
	
	if(year==null || year.equals("")) {
		year=Util.getStringNowYear();
	}
	if(month==null || month.equals("")) {
		month=Util.getStringNowMonth();
	}
	if(day==null || day.equals("")) {
		day=Util.getStringNowDay();
	}
	
	%>	
	<c:set var="year" value="<%=year%>" />
	<c:set var="month" value="<%=month%>" />
	<c:set var="day" value="<%=day%>" />
	<c:set var="now" value="<%=new java.util.Date()%>" />
	
	<section  id="hero-animated" class="hero-animated2 align-items-center">
		
		<div id='mask_wrap2'>
			<div id="mask"></div>
			<div id="wrap2">
			<div class="section-header mt-4">
				<h3
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">운동 미션</h3>
			</div>
	
			<div class="container">
				<%-- <form name="updateWalkgoal" method="POST" action="${ pageContext.request.contextPath}/exerciseMission">
					<label>목표 걸음수 설정</label>
					<input name="id" type="hidden">
					<input type="number" name="walkGoal" id="walkGoal"></input>
					<input type="submit" class="btn btn-getstarted" value="등록">
				</form> --%>
				
			<div class="row" >
				<h4 style="font-family: 'Nanum Gothic', sans-serif;" class="m-0 font-weight-bold fw-bolder">걸음수(현재 걸음 수/목표 걸음 수)</h4>
				
				 <form action="${ pageContext.request.contextPath}/pointProc" method="post" name="insertPoint">
				<h4 style="font-family: 'Pretendard-Regular';" class="pt-3">
				<c:forEach items="${ selectSteps }" var="selectSteps" varStatus="loop">
					${ selectSteps['WALK_STEPS'] } 걸음
			    </c:forEach>
				/
				<c:forEach items="${ selectGoal }" var="selectGoal">	   
					${ selectGoal['WALK_GOAL'] } 걸음
			   </c:forEach>
			
				<c:forEach items="${ selectSteps }" var="selectSteps" varStatus="loop">
					<c:forEach items="${ selectGoal }" var="selectGoal" varStatus="loop">
					<c:if test="${ selectSteps['WALK_STEPS'] ge selectGoal['WALK_GOAL']}">
					 	<input id="point" style="max-height: 35px; max-width: 100px; padding: 5px; margin-left: 10px; font-family: 'Pretendard-Regular';" type="submit" class="btn btn-getstarted" value="포인트 받기">
					</c:if>
					 </c:forEach>
				</c:forEach>
				</h4>
				</form>
				<div>
			 	<h5 style="display:inline-block; margin-right:10px; font-family: 'Pretendard-Regular';"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm" />기준</h5>
			 	<h6 style="display:inline-block; font-family: 'Pretendard-Regular';"><i class="fa-solid fa-circle-exclamation pe-1"></i>걸음수는 10분 단위로 업데이트 됩니다</h6>
			 	</div>
				</div>
				 
				
			   <div class="d-flex">
			   <!-- <div class="box" style="background: #BDBDBD;">
				    <img class="profile" src="./img/football-shoes.gif">
				</div> -->
				
				<div class="row" style="font-family: 'Pretendard-Regular';">
				
				
				<div>
  		<div class="d-flex justify-content-between mt-4">
  		 <div id="chart"  style="font-family: 'Pretendard-Regular';">
      </div>
  				
  				<div class="pt-4">
				 	<div class="box" style="border: 5px solid #0ea2bd;background: #fff;padding-top: 70px;">
					<h3 style="font-family: 'Pretendard-Regular';">월 누적</h3>
					<c:forEach items="${ selectMonth }" var="selectMonth">	
						<h4><fmt:formatNumber value="${ selectMonth['WALK_STEPS'] }" pattern = "#,###" />걸음</h4>  
				   </c:forEach>
				   
					</div>	
				</div>
				<div class="pt-4">
					<div class="box" style="border: 5px solid #0ea2bd;background: #fff;padding-top: 70px;">
					<h3 style="font-family: 'Pretendard-Regular';">일 평균</h3>
				   <c:forEach items="${ selectAvg }" var="selectAvg">	   
				   		<h4><fmt:formatNumber value="${ selectAvg['AVG_WALK'] }" pattern = "#,###" />걸음</h4>  
				   </c:forEach>
				  </div>
				  </div>
				  <div class="pt-4">
				  <div class="box" style="border: 5px solid #0ea2bd;background: #fff;padding-top: 70px;"> 
				   <h3 style="font-family: 'Pretendard-Regular';">소요 칼로리</h3>
				   <c:forEach items="${ selectSteps }" var="selectStep">	   
				   		<h4><fmt:formatNumber value="${ selectStep['CALORIE'] }"  />Kcal</h4>  
				   </c:forEach>
				   </div>
				   </div>
			   </div>
	</div>
				
		<h4 style="font-family: 'Nanum Gothic', sans-serif;" class="mb-4 mt-4 font-weight-bold fw-bolder">운동 기록</h4>		
				
					             <!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs justify-content-between" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active fw-bold" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="width: 300px; font-size: 20px;">걷기</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview1" type="button" role="tab"
					aria-selected="false" style="width: 300px; font-size: 20px;">달리기</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview2" type="button" role="tab"
					aria-controls="myreview" aria-selected="false" style="width: 300px; font-size: 20px;">사이클링</button>
			</li>
		</ul>
		
		<!-- 내용 -->
		<div class="tab-content container mt-4" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
				
				<div class="row">
				<div class="d-flex justify-content-between">
               <h4 style="font-family: 'Pretendard-Regular';" class="m-0 mb-4">경로</h4>        	 
				<h4 style="font-family: 'Pretendard-Regular'; padding-right: 550px;" class="m-0 mb-4">걸음수</h4>
                </div>
                <div class="row">
                <div class="d-flex justify-content-between align-items-center">
				<div id="map1" style="width:50%;height:280px;"></div>
				<div>
				  <canvas id="canvas" width="600" height="300"></canvas>
				</div>
				</div>
				
				
				
				</div>

			</div>
		</div>
			<div class="tab-pane fade" id="myreview1" role="tabpanel"
				aria-labelledby="myreview-tab">달리기 차트</div>
			<div class="tab-pane fade" id="myreview2" role="tabpanel"
				aria-labelledby="myreview-tab">사이클링 차트</div>
				
				
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

  <!-- Vendor JS Files -->
  <script src="<c:url value="vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="vendor/aos/aos.js"  />"></script>
  <script src="<c:url value="vendor/glightbox/js/glightbox.min.js" />"></script>
  <script src="<c:url value="vendor/isotope-layout/isotope.pkgd.min.js" />"></script>
  <script src="<c:url value="vendor/swiper/swiper-bundle.min.js" />"></script>
  <script src="<c:url value="vendor/php-email-form/validate.js" />"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value="js/main.js" />"></script>
	
  <!-- naver map -->
  <script type="text/javascript" src=""></script>
 	<script id="data">
// 경로로 표시할 배열(array)
// naver.maps.LatLng 위도 경도 변수
var polylinePath = [
    new naver.maps.LatLng(37.57765002, 126.8808497),
    new naver.maps.LatLng(37.57765002, 126.8808497),
    new naver.maps.LatLng(37.57765002, 126.8808497),
    new naver.maps.LatLng(37.57901214, 126.873738),
    new naver.maps.LatLng(37.57901214, 126.873738),
    new naver.maps.LatLng(37.57901214, 126.873738),
    new naver.maps.LatLng(37.57706011, 126.8683527),
    new naver.maps.LatLng(37.57706011, 126.8683527),
    new naver.maps.LatLng(37.57706011, 126.8683527),
    new naver.maps.LatLng(37.57338577, 126.8698987),
    new naver.maps.LatLng(37.57338577, 126.8698987),
    new naver.maps.LatLng(37.57338577, 126.8698987),
    new naver.maps.LatLng(37.57338577, 126.8698987),
    new naver.maps.LatLng(37.57338577, 126.8698987),
    new naver.maps.LatLng(37.56953633, 126.8762443),
    new naver.maps.LatLng(37.56953633, 126.8762443),
    new naver.maps.LatLng(37.56953633, 126.8762443),
    new naver.maps.LatLng(37.56953633, 126.8762443),
    new naver.maps.LatLng(37.57123595, 126.8818561),
    new naver.maps.LatLng(37.57123595, 126.8818561),
    new naver.maps.LatLng(37.57123595, 126.8818561),
    new naver.maps.LatLng(37.57329614, 126.8879203),
    new naver.maps.LatLng(37.57329614, 126.8879203),
    new naver.maps.LatLng(37.57329614, 126.8879203),
    new naver.maps.LatLng(37.57329614, 126.8879203),
    new naver.maps.LatLng(37.5694431, 126.8913672),
    new naver.maps.LatLng(37.5694431, 126.8913672),
    new naver.maps.LatLng(37.5694431, 126.8913672),
    new naver.maps.LatLng(37.5694431, 126.8913672),
    new naver.maps.LatLng(37.5694431, 126.8913672),
    
];
</script>

<script id="code">
    //지도 표시
    var map = new naver.maps.Map('map1', {
        zoom: 14,
        center: new naver.maps.LatLng(37.57765002, 126.8808497)
    });

    //위의 배열을 이용해 라인 그리기
    var polyline = new naver.maps.Polyline({
        path: polylinePath,      //선 위치 변수배열
        strokeColor: '#FF0000', //선 색 빨강 #빨강,초록,파랑
        strokeOpacity: 0.8, //선 투명도 0 ~ 1
        strokeWeight: 6,   //선 두께
        map: map           //오버레이할 지도
    });

    // 배열 마지막 위치를 마크로 표시함
    var marker = new naver.maps.Marker({
        position: polylinePath[polylinePath.length-1], //마크 표시할 위치 배열의 마지막 위치
        map: map
    });
</script>
<!-- apex -->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <!-- chart js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns/dist/chartjs-adapter-date-fns.bundle.min.js"></script>
<script>
window.onload = function() {
	let data = [];
	var labels = new Array();

	var data2 = new Array();

	
	<c:forEach items="${ selectTime }" var="selectTime">
	var json = new Object();
			data2.push(${selectTime['WALK_STEP']});
			labels.push(${selectTime['TIME']});
			
		</c:forEach>

	<c:forEach items="${ selectSteps }" var="selectSteps" varStatus="loop">
		<c:forEach items="${ selectGoal }" var="selectGoal" varStatus="loop">
		<c:set var="total" value="${ selectSteps['WALK_STEPS'] } / ${ selectGoal['WALK_GOAL'] } * 100"/>
			
			data.push((${total}).toFixed());
		
		</c:forEach>
	</c:forEach>
 var options = {
			
          series: [data],
          chart: {
          height: 300,
          type: 'radialBar',
          
         
        },
        plotOptions: {
          radialBar: {
            hollow: {
              margin: 15,
              size: '70%',
              image: './img/footprints.png',
              imageWidth: 80,
              imageHeight: 80,
              imageClipped: false, 
              
              
            },
            dataLabels: {
              name: {
                show: false,
                color: '#fff'
              },
              
              value: {
                show: true,
                color: '#333',
                offsetY: 70,
                fontSize: '22px'
                
              }
            }
          }
        },
         fill: {
        	 colors: ['#0ea2bd'],
         	 
        },
        stroke: {
          lineCap: 'round'
        },
       
        labels: ['Volatility'],
        	
        };
 var chart = new ApexCharts(document.querySelector("#chart"), options);
 chart.render();

 new Chart(document.getElementById("canvas"), {
	    type: 'line',
	    data: {
	        labels: ['2022-10-07', '2022-10-08', '2022-10-09', '2022-10-10', '2022-10-11'],
	        datasets: [{
	            data: data2,
	            borderColor: "rgba(14,162,189, 1)",
	           
	            fill: false,
	            lineTension: 0
	        }]
	    },
	    options: {
	        responsive: true,
	        title: {
	            display: true,
	        },
	        tooltips: {
	            mode: 'index',
	            intersect: false,
	        },
	        hover: {
	            mode: 'nearest',
	            intersect: true
	        },
	        
                legend: {
                    display: false
                
            },
	        scales: {
	        	
	            xAxes: [{
	                display: true,
	                scaleLabel: {
	                    display: true,
	                    
	                }
	                
	                
	            }],
	            yAxes: [{
	                display: true,
	                ticks: {
	                    suggestedMin: 0,
	                },
	                scaleLabel: {
	                    display: true,
	                   
	                }
	            }]
	        }
	    }
	});
};
        </script>  
<!-- sweet alert  -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script>
		 
		  
		$("#point").bind("click", function(){
			$("#point").attr("disabled",true);
			Swal.fire('10 포인트 적립이 완료되었습니다.');
		 
		});
		</script>
		
		


</body>
</html>