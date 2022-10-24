<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.vo.CalendarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="kr.ac.kopo.Util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Record Mission</title>
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
  
  <!-- fullCalendar CSS File -->
  <link href="fullcalendar-5.11.2/lib/main.css" type="text/css" rel="stylesheet" />
  
  <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>

 	<!-- calendar를 위한 라이브러리들 지우면 안됨 -->
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script src='https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js'></script>
  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css'rel='stylesheet'/>
  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css' rel='stylesheet' media='print'/>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>

	<!-- sweet alert  -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<style>
	.pop-modal{
		border: 2px solid gray;
		border-radius: 20px;
		width: 150px; 
		height: 150px;
		display: inline-block; 
		text-align: center;
	}
	
	.nav-mission {
		    border: 0;
		    padding: 18px 20px;
		    color: var(--color-secondary);
		    box-shadow: 5px 5px 25px rgba(var(--color-secondary-rgb), 0.15);
		    border-radius: 0;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    flex-direction: column;
		    transition: 0s;
		    cursor: pointer;
		    height: 100%;
		   
	}
	
	.nav-mission h4{
		 font-size: 20px;
		    font-weight: 600;
		    margin: 10px 0 0 0;
		    color: var(--color-secondary);
	}
	
	.fc .fc-toolbar {  
	    display: flex;
	    align-items: center;
	    justify-content: center;
	}

	.fc .fc-view-harness-active > .fc-view{
		    background-color: white;
	}
	
	.modal{
		--bs-modal-margin: 10rem;
    	--bs-modal-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
	}
	
	/* .modal-backdrop {
	  z-index: -1;
	} */
	.event-icon {
	  width: 24px;
	}
	.fc-event {
	 background: none;
	  border: none;
	  color: black;
	}
	
	.fc-toolbar-title {
		font-family: 'Pretendard-Regular';
	}
	
	.fc-toolbar-chunk {
	  display: flex;
	  align-items: center;
	}
	
	.fc .fc-toolbar-title {
	    font-size: 1.75em;
	    margin: 0;
	    padding-left: 15px;
	    padding-right: 15px;
    }

	 .signBtn {
			background: white;
			color: var(--color-primary);
			padding: 5px;
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
		
	.btn-getstarted {
	    font-size: 16px;
	    color: var(--color-white);
	    background: var(--color-primary);
	    border-radius: 4px;
	    padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
	    transition: 0.3s;
	    border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
	    font-family: var(--font-secondary);
    }
	
	</style>
</head>
<body>
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
	
	<!-- Navbar -->
	<header id="header" class="header fixed-top" data-scrollto-offset="0">
		<jsp:include page="/WEB-INF/jsp/include/topNav.jsp" />
		<!-- Close Navbar -->

		<!-- Header -->

		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<!-- Close Header -->


	<section id="hero-animated"
		class="hero-animated2 align-items-center">
		
		<div id='mask_wrap2'>
			<div id="mask"></div>
			<div id="wrap2">
			<div class="section-header mt-4">
				<h3
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">기록 미션</h3>
			</div>


		<div class="container" style="margin-left: 50px;">
		<div id='active_imgbt'>
		
			<!-- button -->
			
			<div align="center" class="active_bt center">
				<div id="features" class="features">
      <div data-aos="fade-up">
      <div class="container mb-4">
      <h3 style="font-family: 'Nanum Gothic', sans-serif;" class="m-0 font-weight-bold mb-4 fw-bolder">미션 카테고리</h3>
      </div>
		
        <ul class="nav nav-tabs row gy-4">

          <li class="nav-item col-6 col-md-4 col-lg-6">
            <a class="nav-mission" data-bs-toggle="tab" data-bs-target="#tab-2">
           		<img src="./img/weight-scale.png" style="max-width: 50px"/>
              
              <h4 style="font-family: 'Pretendard-Regular';">다이어트</h4>
            </a>
          </li><!-- End Tab 2 Nav -->

          <li class="nav-item col-6 col-md-4 col-lg-6">
            <a class="nav-mission" data-bs-toggle="tab" data-bs-target="#tab-3">
              
              <img src="./img/pills.png" style="max-width: 50px"/>
              <h4 style="font-family: 'Pretendard-Regular';">약·영양제</h4>
            </a>
          </li><!-- End Tab 3 Nav -->

          <li class="nav-item col-6 col-md-4 col-lg-6">
            <a class="nav-mission" data-bs-toggle="tab" data-bs-target="#tab-4">
              <img src="./img/bottle.png" style="max-width: 50px"/>
              <h4 style="font-family: 'Pretendard-Regular';">금주·금연</h4>
            </a>
          </li><!-- End Tab 4 Nav -->

          <li class="nav-item col-6 col-md-4 col-lg-6">
            <a class="nav-mission" data-bs-toggle="tab" data-bs-target="#tab-5"  data-toggle="modal" data-target="#bloodModal" id="openModal">
              <img src="./img/blood-pressure.png" style="max-width: 50px"/>
              <h4 style="font-family: 'Pretendard-Regular';">혈압·혈당</h4>
            </a>
          </li><!-- End Tab 5 Nav -->
			
		 <li class="nav-item">
         <a  class="nav-mission" href="${ pageContext.request.contextPath}/healthPage">
         
              <img src="./img/token.png" style="max-width: 40px"/>
              <h4 style="font-family: 'Pretendard-Regular';">누적 포인트 보러가기</h4>
 
            </a>
			</li>
        </ul>
        </div>
        </div>
        </div>
   
       
				<!-- End Button -->
				
		
      <!-- calendar -->
      			
					<div class="me-5">
					<div style="display: flex;justify-content: flex-end;position: absolute;margin-left: 580px; z-index: 1" data-aos="fade-up">
						<button type="button" class="signBtn" data-toggle="modal" data-target="#listModal" id="openModal1" style="font-family: 'Pretendard-Regular';">
		  					내역조회
						</button>
					</div>
				<div class="container calendar-container px-5" data-aos="fade-up">
					<div id="calendar" style="min-width:650px; max-height:450px;  font-family: 'Pretendard-Regular';"></div>
					<div>
						<h6 style="font-family: 'Pretendard-Regular';">· 건강 미션 포인트는 가장 먼저 달성한 기록을 기준으로 1일 1회 지급됩니다.</h6>
					</div>
					
					</div>
				</div>
				
			</div>
			</div>
		</div>
		
		<!-- Modal1 -->
<div class="modal fade" id="bloodModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fw-bold" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">혈압·혈당</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
        </div>
      <div class="modal-body">
      <form:form action="${ pageContext.request.contextPath}/mission/proc" method="post" modelAttribute="calendarVO">
      	<div class="row justify-content-center">
                    <div class="wow" data-wow-delay="0.3s">
					
                 <!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
			<input type="hidden" id="missionCode" name="missionCode" value="혈압">
				<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true"  style="font-family: 'Pretendard-Regular';">혈압</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview" type="button" role="tab"
					aria-controls="myreview" aria-selected="false"  style="font-family: 'Pretendard-Regular';">혈당</button>
			</li>
		</ul>
		
		<!-- 내용 -->
		<div class="tab-content container" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
                       	 
				<div class="col-md-12"  style="font-family: 'Pretendard-Regular';">
                           <div class="form-floating">
                           <div class="row g-2 mt-2">
                           	<label for="high">날짜</label>
                           	<form:input type="date" class="form-control" path="start" />
                           	<label for="high">시간</label>
                           	<form:input type="time" class="form-control" path="startTime" />
                               
                               <label for="high">수축기 혈압 / 이완기 혈압(mmHg)</label>
                               <form:input type="text" class="form-control" path="content" placeholder="수축기/이완기" />
                        
                             </div>
                           </div>
                          
                           </div>
                       </div>


			</div>
			<div class="tab-pane fade" id="myreview" role="tabpanel"
				aria-labelledby="myreview-tab">내리뷰리스트 탭</div>
		</div>
                       	
                       
                      
                       </div>
                       
			      <div class="modal-footer">
			      	<input type="submit" class="btn btn-getstarted" id="nextModal" onclick="nextStep()" value="등록">
			       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			      </div>
			       </form:form>
                                                 </div>
                    </div>
                </div>

      </div>
      
      <!-- modal 2 -->
      <div class="modal fade" id="listModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title fw-bold" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">내역조회</h5>
		        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true"></span>
		        </button>
		        </div>
		        
		      <div class="modal-body">
		      <select id="year" name="year">
			<option value="2022" <c:if test="${year eq '2022'}" /> >2022</option>
		</select><h6 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="fw-bolder">년　</h6>
		
		
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
		</select><h6 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="fw-bolder">월 미션 내역
		</h6>
		
		<table border="1" width = "100%">
              <thead>
               <tr style="text-align: center;" id="list">
               	
               	<th>카테고리</th>
               	<th>측정시간</th>
                <th>내용</th>
               	<th>작성일</th>
               	
               	</tr>
               	</thead>
               	
               	<tbody>
				<c:forEach items="${ historyList }" var="historyList" varStatus="loop">
	               	<tr style="text-align: center; font-family: 'Pretendard-Regular';">
	                  <td class="table-light">${ historyList['MISSION_CODE'] }</td>              
	                  <td class="table-light">${ historyList['START_TIME'] }</td>              
	                  <td class="table-light">${ historyList['CONTENT'] }</td>
	                 <td class="table-light">${ historyList['START_CAL'] }</td>
	                  
	                </tr>  
	   			</c:forEach>
                </tbody>
                </table>
		
		     </div>
		      <div class="modal-footer">
		      	<input type="button" class="btn btn-getstarted" value="확인">
		       	
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

  <!-- FullCalendar JS File -->		
  <script src="<c:url value="fullcalendar-5.11.2/lib/main.js" />"></script>
  <script type="text/javascript">
  
  $(document).ready(function() {
	    
		
        	var calendarEl = document.getElementById('calendar');
        	
	       var calendar = new FullCalendar.Calendar(calendarEl, {

	        	  
	         headerToolbar: {
	           left: 'prevYear,prev',
	           center: 'title', 
	           right: 'next,nextYear'
	           
	         },
	         initialDate: '2022-10-01',
	         navLinks: true, // can click day/week names to navigate views
	         editable: true,
	         dayMaxEvents: true, // allow "more" link when too many events
	         locale: 'ko',
	         eventSources : [{
	        	 
	         events: function(info, successCallback, failureCallback){
	        	 $.ajax({
	        	 
	        		 type: 'GET'
	        	 
	        	 , dataType: 'json'
	     	      ,  url : '${pageContext.request.contextPath}/calendarPlan'
	     	       
	     
	     	      , success : function(calendarlist) {
	     	        	console.log(calendarlist);
	     	        	var events = [];
	     		        $.each(calendarlist, function(index, data){
	     		        	
	     		        	events.push({
	     		        		title : data.MISSION_CODE
	     		        		, start : data.START_CAL
	     		        		, content : data.CONTENT
	     		        		
	     		        		
	     		        	});
	     		       
	     		        });
	     		        	
	     		       successCallback(events);
	     		       
	     		       
	     		        }, 
	     		       

	     	        	
	     	        });
	         }, 
	         
	          
	         }], 
	        
	           
	         eventContent: { 
                 html: `<a class="fc-daygrid-more-link fc-more-link" title="Show 1 more event" aria-expanded="false" aria-controls tabindex="0"><img src="./img/dollar.png" style="max-width:30px;"></a>`
                 }, 
	              
	           
	          
	       });
	       calendar.render();


	        
	    });
	
  </script>
  
   <script src="http://code.jquery.com/jquery-latest.js"></script> 
	  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	 <script>
		$('#openModal').click(function(){
			
			$('#bloodModal').modal("show");
		});
		
		$('#openModal1').click(function(){
			
			$('#listModal').modal("show");
		});
   		   
		/* $('#nextModal').click(function(){
			 
			$('#bloodModal').modal("hide");
			$('#pointModal').modal("show");
		}); */
		
		 
		
		 function nextStep(){
			setTimeout(function() { 
				$('#bloodModal').hide();
				}, 5000),
			
			Swal.fire('10 포인트 적립이 완료되었습니다.')
			
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