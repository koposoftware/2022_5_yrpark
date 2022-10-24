<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Family Care</title>
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
		    font-weight: 700;
		    
		}
		
		h5  {
			font-family: 'Pretendard-Regular';
		}
		
		h6 {
			font-family: 'Pretendard-Regular';
		}
		
		.Mdetail5 {
			display: inline-block;
			width: 80px;
		}
		
		.Mdetail6 {
			display: inline-block;
			width: 370px;
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
					<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">가족건강지킴이</h3>
				</div>
				
				<div class="container">
				
					<div class="d-flex">
						<img src="./img/big-family.png" style="width: 70px; height:70px;"/>
							<div class="row px-4 pt-2">
							<h4 style="font-family: 'Pretendard-Regular';">가족을 초대해보세요</h4>
							<h5 style="font-family: 'Pretendard-Regular';">가족의 건강정보로 가족력 확인과 가족의 보험 정보도 확인할 수 있습니다!</h5>
							</div>
					</div>
					<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mt-4 fw-bolder">우리 가족 케어</h4>
					<div class="d-flex">
					<c:forEach items="${ familyList }" var="familyList" varStatus="loop">
						
							<c:if test="${ familyList['GROUP_ID'] eq loginVO.groupId}">
							
								<c:if test="${ familyList['ID'] ne loginVO.id}">
									<div class="row me-2" style="display: inline-block;">
										<img src="./img/user.png" style="width: 80px;"  class="mb-2"/>
										<h6 style="font-family: 'Pretendard-Regular';" class="text-center">${ familyList['NAME'] }</h6>
									</div>
								</c:if>
							</c:if>
						
					</c:forEach>
						<a type="button" id="inviteMsg"><i class="fa-solid fa-circle-plus" style="color: black; margin: 0px; font-size: 55px;"></i></a>
					</div>
					
					
		<!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
			<li class="nav-item me-5" role="presentation">
				<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="width: 300px; font-size: 18px;">건강정보</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview1" type="button" role="tab"
					aria-selected="false" style="width: 300px; font-size: 18px;">보험정보</button>
			</li>
			
		</ul>
		
		<!-- 내용 -->
		<div class="tab-content container mt-4" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
				
				<div id = "checkList" class="mb-4">
				
	<form action="" id="form1" name="sform">
	<c:forEach items="${ familyList }" var="familyList" varStatus="loop">
					<c:if test="${ familyList['ID'] eq 'mom'}">
					
						<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">${ familyList['NAME']}님,</h4>
						<select id="year" name="year">
			<option value="2021" <c:if test="${year eq '2021'}" /> >2021</option>
		</select><h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">년 건강검진 결과</h4>
						
					</c:if>
					</c:forEach>
			</form>
	
	 <table border="1"  width="100%" class="mb-5">
				
				 	<tr class="text-center" id="list">
				 			<th>예상질환</th>
			               	<th>검진항목</th>
			                <th>검진수치</th>
			                <th>검진결과</th>
			               	<th>참고범위</th>
			               	
			        </tr>
				
				<c:forEach items="${ familyList }" var="familyList" varStatus="loop">
					<c:if test="${ familyList['ID'] eq 'mom'}">
			               	<tr class="text-center" style="font-family: 'Pretendard-Regular';">
			               	 <td rowspan="2">고혈압</td>
			               	 
			               	 
			                 <td>수축기</td>
			                 <td>${ familyList['BP_HIGH'] } mmHg</td>
			                 
		                 	<c:choose>
		                 
			        		 <c:when test="${ familyList['BP_HIGH_RESULT'] eq '위험' }">          
			                 	<td><div class="danger" href="#">위험</div></td>
			                 </c:when>
			                 <c:when test="${ familyList['BP_HIGH_RESULT'] eq '정상'}">          
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
				                 <td>${ familyList['BP_LWST'] } mmHg</td>
				                 <c:choose>
			                 
				        		 <c:when test="${ familyList['BP_LWST_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['BP_LWST_RESULT'] eq '정상' }">          
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
			                 	<td>${ familyList['HMG'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['HMG_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['HMG_RESULT'] eq '정상' }">          
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
			                 	<td>${ familyList['CREATININE'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['CREATININE_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['CREATININE_RESULT'] eq '정상' }">          
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
			                 	<td>${ familyList['E_GFR'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['E_GFR_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['E_GFR_RESULT'] eq '정상' }">          
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
			                 	<td>${ familyList['SGOT_AST'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['SGOT_AST_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['SGOT_AST_RESULT'] eq '정상'}">          
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
			                 	<td>${ familyList['SGPT_ALT'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['SGPT_ALT_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['SGPT_ALT_RESULT'] eq '정상'}">          
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
			                 	<td>${ familyList['GAMMA_GTP'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['GAMMA_GTP_RESULT'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['GAMMA_GTP_RESULT'] eq '정상'}">          
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
			                 	<td>${ familyList['OLIG_PROTE_CD'] }</td>
			                 	<c:choose>
			                 
				        		 <c:when test="${ familyList['OLIG_PROTE_CD'] eq '위험' }">          
				                 	<td><div class="danger" href="#">위험</div></td>
				                 </c:when>
				                 <c:when test="${ familyList['OLIG_PROTE_CD'] eq '정상'}">          
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
			                 </c:if>
			   </c:forEach>
			   </table>
			    <div class="text-end">
			   <a class="btn-getstarted scrollto" style="font-family: 'Pretendard-Regular';" type="button" id="clickBtn" onclick="nextStep()">우리가족 위험 질병 분석</a>
				</div>
				
				
		</div>
				
				<!-- 우리가족 위험질병 분석 차트 -->
				<div id="familyResult">
				<div class="row pt-2 pb-4">
					<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">건강검진 결과로 우리 가족 건강 챙겨요!</h4>
					<h5 style="font-family: 'Pretendard-Regular';">건강검진 결과에서 주의, 위험를 받은 질병을 보여드립니다.</h5>
					<h5 style="font-family: 'Pretendard-Regular';">가족력이 있는 질병을 찾고 미리 대비해 보세요.</h5>
				</div>
				<canvas id="myChart"></canvas>
				</div>
				
				</div>
				 

		<!-- 보험 탭 -->
			<div class="tab-pane fade" id="myreview1" role="tabpanel"
				aria-labelledby="myreview-tab">
					
					<c:forEach items="${ familyInsu }" var="familyInsu" varStatus="loop">
					<c:forEach items="${ countInsu }" var="countInsu" varStatus="loop">
						<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">${ familyInsu['NAME']}님의 보험은 ${countInsu['CNT']}건입니다.</h4><br>
						<h4 style="font-family: 'Nanum Gothic', sans-serif; display: inline-block;" class="mb-4 mt-4 fw-bolder">월 보험료 <fmt:formatNumber value="${ familyInsu['INSURANCE_FEE']}" pattern="#,###원" /></h4>
					</c:forEach>
					
						<!-- Earnings (Annual) Card Example -->
                        <div class="col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                <div class="d-flex justify-content-between">
                                
                                    <div class="row no-gutters align-items-center pt-2">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                </div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800" style="font-family: 'Pretendard-Regular';">
                                            ${ familyInsu['INSURANCE_TYPE'] }
                                            
					             			</div>
					             			<h5>${ familyInsu['COMPANY_NAME'] }</h5>
                                        </div>
                                        </div>
                                        
                                		<a type="button" data-toggle="modal" data-target="#exampleModal" id="openModal"><i class="fa-solid fa-ellipsis-vertical" style="color: #dddddd; font-size: 30px;"></i></a>
                                
                                				<!-- Modal -->
		 
										<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog" role="document" style="margin-top: 140px;">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h5 class="modal-title fw-bold" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">보험 정보 자세히 보기</h5>
										        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
										          <span aria-hidden="true"></span>
										        </button>
										        </div>
										      <div class="modal-body" style="font-family: 'Pretendard-Regular';">
										    		
										    		<h5 class="Mdetail5"> 보험회사 </h5>
										    		<h6 class="Mdetail6">${ familyInsu['COMPANY_NAME'] }</h6>
										    		<h5 class="Mdetail5"> 보험명 </h5>
										    		<h6 class="Mdetail6">${ familyInsu['INSURANCE_NAME'] }</h6>
										    		<h5 class="Mdetail5"> 보험료 </h5>
										    		<h6 class="Mdetail6"><fmt:formatNumber value="${ familyInsu['INSURANCE_FEE']}" pattern="#,###원" /></h6>
										    		<h5 class="Mdetail5"> 보장명 </h5>
										    		<h6 class="Mdetail6">${ familyInsu['PROTECT_ITEM']} / ${ familyInsu['PROTECT_ITEM2']} / ${ familyInsu['PROTECT_ITEM3']} / ${ familyInsu['PROTECT_ITEM4']}</h6>
										    		<h5 class="Mdetail5"> 보장금액 </h5>
										    		<h6 class="Mdetail6">${ familyInsu['PROTECT_FEE']} / ${ familyInsu['PROTECT_FEE2']} / ${ familyInsu['PROTECT_FEE3']} / ${ familyInsu['PROTECT_FEE4']}</h6>
										    		<h5 class="Mdetail5"> 가입날짜 </h5>
										    		<h6 class="Mdetail6"><fmt:formatDate value="${ familyInsu['JOIN_DATE'] }" pattern="yyyy-MM-dd" /></h6>
										    		
										    	 
							                  </div>
							               
										      <div class="modal-footer">
										      	<button type="button" class="btn btn-getstarted" onclick="nextStep()" style="padding: 7px 14px; border-radius: 6px; font-family: 'Pretendard-Regular';">확인</button>
										       	<button type="button" class="btn btn-secondary" data-dismiss="modal" style="font-family: 'Pretendard-Regular';">닫기</button>
										      </div>
							                   </div>
							              </div>
										  
										 </div>
										    </div>
                                        <div class="h4 mb-0 col text-end" style="font-family: 'Pretendard-Regular';">
                                           
					             				<fmt:formatNumber value="${ familyInsu['INSURANCE_FEE']}" pattern="#,###원" />
                                        </div>
                                    </div>
                                </div>
                            </div>
					</c:forEach>
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
	<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script>
      const userName = '${ loginVO.name }'
      const groupId = '${ loginVO.groupId }'
     const urlParams = new URL(location.href).searchParams;

    Kakao.init('55b0f3bc1679b402cdeae61679ecd995'); // 이건 각자 발급받은 키 사용하셔야 합니다!!
    
   
    
    	 Kakao.Share.createDefaultButton({
             container: '#inviteMsg',
             objectType: 'feed',
             content: {
               title: '초대 알림',
               description: userName + '님이 우리가족케어에 초대하셨습니다.',
               imageUrl:
                 'http://k.kakaocdn.net/dn/io46A/btrMHIZQ8xY/HHRZg0qbiHV5415SPnoDAK/kakaolink40_original.png',
               link: {
            	   webUrl: 'http://localhost:8090/project/familyInvite?groupId='+groupId,
                 androidExecutionParams: 'test',
               },
             },
             
             
             buttons: [
               {
                 title: '웹으로 이동',
                 link: {
                	 webUrl: 'http://localhost:8090/project/familyInvite?groupId='+groupId,
                 }
               }
             ]
       });
    
   
    
   
    </script>
  
	
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	
<script>

window.onload = function() {
	let data = [];
	let data2 = [];
	
	<c:forEach items="${ familyList }" var="familyList" varStatus="loop">
		<c:if test="${familyList['ID'] eq 'yura'}">
			data.push(${familyList['BP_HIGH']});
			data.push(${familyList['BP_LWST']});
		
			data.push(${familyList['SGOT_AST']});
			data.push(${familyList['SGPT_ALT']});
		
		</c:if>
		<c:if test="${familyList['ID'] eq 'mom'}">
			data2.push(${familyList['BP_HIGH']});
			data2.push(${familyList['BP_LWST']});
			
			data2.push(${familyList['SGOT_AST']});
			data2.push(${familyList['SGPT_ALT']});
			
		</c:if>
			
	</c:forEach>
	$(function(){
	    let ctx = document.getElementById('myChart').getContext('2d');
	    let chart = new Chart(ctx, {
	        type: 'bar',
	        data: chartData,
	        options: chartOptions
	    })
	})

	// chart data and options
	let chartData = {
	    labels: ['수축기', '이완기', 'AST(SGOT)', 'ALT(SGPT)'],
	    datasets: [
	        {
	            label: '박유라',
	            yAxisID: 'y',
	            data: data,
	            backgroundColor: [
	            	'rgba(121, 192, 242, 0.5)'
	          	  
	            ],
	            borderColor: [
	                'rgba(121, 192, 242, 1)'
	               
	            ],
	            borderWidth: 1
	        },
	        {
	        	label: '조하나',
	            yAxisID: 'y',
	            data: data2,
	            backgroundColor: [
	            	'rgba(255, 142, 166, 0.5)'
	               
	            ],
	            borderColor: [
	                'rgba(255, 142, 166, 1)',
	              
	            ],
	            borderWidth: 1
	        }
	    ]
	}

	let chartOptions = {
	    responsive:true,
	    // maintainAspectRatio: false,
	    scales: {
	        x: {
	            title: {
	                display: true,
	                text: '질병명'
	            }
	        },
	        y: {
	            type: 'linear',
	            position: 'left',
	            title: {
	                display: true,
	                text: '수치'
	            },
	            grid: {
	                display: false
	            }
	        },
	        
	    }
	}

};
</script>

 <script>
	  document.getElementById("familyResult").style.display = "none";
	  function nextStep(){
	  $('#clickBtn').click(function(e){
			e.preventDefault();
			$('#clickBtn').hide();			
			$('#familyResult').show();
		});
	}
	  
	  $('#openModal').click(function(e){
			e.preventDefault();
			$('#exampleModal').modal("show");
		});
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
</script>
</body>
</html>