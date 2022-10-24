<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일송부</title>
 <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="./admin/css/nucleo-icons.css" rel="stylesheet" />
  <link href="./admin/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>
  <link href="./admin/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="./admin/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/table.css" />
  
  <style>
  	@font-face {
		    font-family: 'Pretendard-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
		    font-weight: 400;
		    font-style: normal;
		}
		
	table{
		font-family: 'Pretendard-Regular';
	}
	
	p {
		
		font-family: 'Pretendard-Regular';
	
	}
	
	label{
		font-family: 'Pretendard-Regular';
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
		
		.btn-getstarted, .btn-getstarted:hover{
		    font-size: 16px;
		    color: #fff;
		    background: #0ea2bd;
		    padding: 8px 23px;
		    border-radius: 4px;
		    transition: 0.3s;
		    font-family: var(--font-secondary);
		}
  </style>
</head>
<% String no=request.getParameter("no"); %>
<% String insuranceName=request.getParameter("insuranceName"); %>
<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 position-absolute w-100" style="background: #0ea2bd"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="${ pageContext.request.contextPath}/indexA.jsp" target="_blank" style="padding-top: 15px;">
        <img src="./img/logo.png" class="navbar-brand-img h-100" alt="main_logo" style="width: 160px; min-height: 60px;">
        
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link " href="${ pageContext.request.contextPath}/indexA.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">대시보드</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="${ pageContext.request.contextPath}/insuranceListA">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni text-warning text-sm opacity-10 fa-sharp fa-solid fa-list"></i>
            </div>
            <span class="nav-link-text ms-1">상품관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${ pageContext.request.contextPath}/mailService">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni fa-regular fa-envelope text-success text-sm opacity-10 fw-bold"></i>
            </div>
            <span class="nav-link-text ms-1">메일송부</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="./pages/virtual-reality.html">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
				<i class="fa-solid fa-user ni text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">회원관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="./pages/rtl.html">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-world-2 text-danger text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">설정</span>
          </a>
        </li>
        
  </aside>
  <main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">관리자</a></li>
            <li class="breadcrumb-item text-sm text-white active" aria-current="page">메일송부</li>
          </ol>
          <h6 class="font-weight-bolder text-white mb-0">메일송부</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
            <c:choose>
	                        <c:when test="${ empty loginVO }">
	                        	<a href="${ pageContext.request.contextPath}/loginA" class="nav-link text-white font-weight-bold px-0">
					                <i class="fa fa-user me-sm-1"></i>
					                <span class="d-sm-inline d-none" style="font-family: 'Pretendard-Regular';">로그인</span>
					              </a>
     
	                        </c:when>
	                       
							
	                        <c:otherwise>
	                        	<li class="nav-item p-sm-2" style="color: white">[${ loginVO.name }님이 접속하였습니다]
	                        	<a class="btn-getstarted scrollto" style="color: #fff" href="${ pageContext.request.contextPath}/logoutA"><img src="./img/enter.png" style="color: #fff; width: 15px;"> 로그아웃</a>
	                        	</li>
                        </c:otherwise>
                   </c:choose>
              
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-bell cursor-pointer"></i>
              </a>
              <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="my-auto">
                        <img src="./assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          <span class="font-weight-bold">New message</span> from Laur
                        </h6>
                        <p class="text-xs text-secondary mb-0">
                          <i class="fa fa-clock me-1"></i>
                          13 minutes ago
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="my-auto">
                        <img src="./assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          <span class="font-weight-bold">New album</span> by Travis Scott
                        </h6>
                        <p class="text-xs text-secondary mb-0">
                          <i class="fa fa-clock me-1"></i>
                          1 day
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                        <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                          <title>credit-card</title>
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                              <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(453.000000, 454.000000)">
                                  <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                  <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                </g>
                              </g>
                            </g>
                          </g>
                        </svg>
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          Payment successfully completed
                        </h6>
                        <p class="text-xs text-secondary mb-0">
                          <i class="fa fa-clock me-1"></i>
                          2 days
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    
    <div class="container-fluid py-3">

	
    <div class="container-fluid py-2">
    <div class="row">
     <div class="col-md-4">
     	<div class="card card-profile">
          
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <h5 class="mb-3">상품 관련 정보</h5>
              </div>
            </div>
            <div class="card-body pt-0">
            	<div class="mt-2">
		             <p class="mb-2" style="width: 70px; display: inline-block;">보험번호</p>
		             <p style="width: 200px; display: inline-block;"><%= no %></p>
		             <p class="mb-2" >보험명  　　LIFEPLUS 운동하는 건강보험 무배당</p>
		             <p class="mb-0" style="width: 70px; display: inline-block;">보험타입</p>
		             <p style="width: 200px; display: inline-block;">생활보험</p>
     			</div>
    		 </div>
    	 </div>
     </div>
     
     <div class="col-md-8">
     	<div class="card card-profile">
          
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <h5 class="mb-2">고객 타입</h5>
              </div>
            </div>
            <div class="card-body pt-0">
            	 <div class="mt-3">
 
             <!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">전체</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview1" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">20대</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview2" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">30대</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview3" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">40대</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview4" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">50대</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview5" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">60대</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview6" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">70대 이상</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview7" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">건강검진여부</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview8" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">미션실행여부</button>
			</li>
			<li class="nav-item m-2" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview8" type="button" role="tab"
					aria-selected="false" style="width: 120px; font-size: 14px; font-family: 'Pretendard-Regular';">보험조회여부</button>
			</li>
			
		</ul>

     			</div>
     		</div>
     	</div>
     </div>
     </div>
     </div>
     
     <div class="container-fluid py-2">
      <div class="col-md-12">
          <div class="card card-profile">
          
              <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <h5 class="mb-0">메일 송부 고객 선택</h5>
                <button id="checkVal" type="button" class="btn btn-getstarted btn-sm ms-auto" style="margin: 0; font-family: 'Pretendard-Regular';">확인</button>
              </div>
            </div>
            
            <!-- 내용 -->
		<div class="tab-content container mt-2" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
				
            <div class="card-body pt-0">
              
              <div class="text-center mt-4">
                 <table border="1" id="list">
  
    <thead>
         <tr>
            <th style="width: 30px;">
               <input type="checkbox" id="chk_all" name="chk_all" />
            </th>
           <!--  <th style="width: 200px;">
             id
            </th> -->
            <th style="width: 230px;">
             이름
            </th>
            <th style="width: 230px;">
             이메일
            </th>
            <th style="display: none;">
             이메일
            </th>
            <th style="width: 230px;">
             가입일
            </th>
            <th style="width: 230px;">
             건강검진 여부
            </th>
            <th style="width: 230px;">
             미션실행 여부
            </th>
            <th style="width: 230px;">
             보험조회 여부
            </th>
         </tr>       
    </thead>
   
              <c:forEach items="${ memberMail }" begin="0" end="10" step="1" var="memberMail" varStatus="loop">
              <c:if test="${ memberMail['USER_TYPE'] == 'U'}">
    <tbody>
         <tr>
            <td style="width: 30px;">
               <input type="checkbox" id="chk_list" name="chk_list" value="list1" />
            </td>
            <%-- <td style="width: 230px;">
                 ${memberMail['ID']} 
            </td> --%>
            <td style="width: 230px;" >
                 ${memberMail['NAME']}
            </td>
            <td style="width: 230px;">
            	
            	<c:set var="Value" value="${memberMail['EMAIL']}" />
					${fn:substring(Value,0,3)}***@${fn:split(Value,'@')[1]}
 	
            </td>
            <td style="display:none;">
            	${memberMail['EMAIL']}
            </td>
            <td style="width: 230px;">
                 ${memberMail['SIGN_DATE']}
            </td>
            <td style="width: 230px;">
                 ${memberMail['HEALTH_CHECK']}
            </td>
            <td style="width: 230px;">
            	<c:choose>
					<c:when test="${memberMail['MISSION_TYPE'] eq '운동미션'}">
						Y
					</c:when>
					<c:otherwise>
						N
					</c:otherwise>
            	</c:choose>
            </td>
            <td style="width: 230px;">
                 ${memberMail['INSURANCE_CHECK']}
            </td>
              
         </tr>       
        
    </tbody>
    </c:if>
</c:forEach>
  </table>
              </div>
            </div>
            </div>
            
            
            <!-- 20대 -->
				<div class="tab-pane fade" id="myreview1" role="tabpanel"
					aria-labelledby="myreview-tab">
					<div class="card-body pt-0">
              
              <div class="text-center mt-4">
                 <table border="1" id="list">
  
    <thead>
         <tr>
            <th style="width: 30px;">
               <input type="checkbox" id="chk_all" name="chk_all" />
            </th>
           <!--  <th style="width: 200px;">
             id
            </th> -->
            <th style="width: 230px;">
             이름
            </th>
            <th style="width: 230px;">
             이메일
            </th>
            
            <th style="width: 230px;">
             가입일
            </th>
            <th style="width: 230px;">
             건강검진 여부
            </th>
            <th style="width: 230px;">
             미션실행 여부
            </th>
            <th style="width: 230px;">
             보험조회 여부
            </th>
         </tr>       
    </thead>
   
              <c:forEach items="${ memberMail }" var="memberMail" varStatus="loop">
              <c:if test="${ memberMail['USER_TYPE'] == 'U'}">
              	 <c:set var="jumin" value="${memberMail['JUMIN1']}"/>
              	 <c:set var="now" value="<%=new java.util.Date()%>" />
				<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
				<c:set var="frontjumin" value="19${fn:substring(jumin,0,2)}"/>
				<c:set var="agejumin" value="${sysYear-frontjumin}"/>
				
               <c:set var="juminFirst" value="${fn:substring(agejumin,0,1)}"/>
               <c:if test="${juminFirst eq '2'}">
    <tbody>
         <tr>
            <td style="width: 30px;">
               <input type="checkbox" id="chk_list" name="chk_list" value="list1" />
            </td>
            <%-- <td style="width: 230px;">
                 ${memberMail['ID']} 
            </td> --%>
            <td style="width: 230px;" >
                 ${memberMail['NAME']}
            </td>
            <td style="width: 230px;">
            	
            	<c:set var="Value" value="${memberMail['EMAIL']}" />
					${fn:substring(Value,0,3)}***@${fn:split(Value,'@')[1]}
 	
            </td>
            
            <td style="width: 230px;">
                 ${memberMail['SIGN_DATE']}
            </td>
            <td style="width: 230px;">
                 ${memberMail['HEALTH_CHECK']}
            </td>
            <td style="width: 230px;">
            	<c:choose>
					<c:when test="${memberMail['MISSION_TYPE'] eq '운동미션'}">
						Y
					</c:when>
					<c:otherwise>
						N
					</c:otherwise>
            	</c:choose>
            </td>
            <td style="width: 230px;">
                 ${memberMail['INSURANCE_CHECK']}
            </td>
              
         </tr>       
        
    </tbody>
    </c:if>
    </c:if>
</c:forEach>
  </table>
              </div>
            </div>
					
            </div>
            
            
            <!-- 건강검진 여부 -->
				<div class="tab-pane fade" id="myreview7" role="tabpanel"
					aria-labelledby="myreview-tab">
					<div class="card-body pt-0">
              
              <div class="text-center mt-4">
                 <table border="1" id="list">
  
    <thead>
         <tr>
            <th style="width: 30px;">
               <input type="checkbox" id="chk_all" name="chk_all" />
            </th>
           <!--  <th style="width: 200px;">
             id
            </th> -->
            <th style="width: 230px;">
             이름
            </th>
            <th style="width: 230px;">
             이메일
            </th>
            
            <th style="width: 230px;">
             가입일
            </th>
            <th style="width: 230px;">
             건강검진 여부
            </th>
            <th style="width: 230px;">
             미션실행 여부
            </th>
            <th style="width: 230px;">
             보험조회 여부
            </th>
         </tr>       
    </thead>
   
              <c:forEach items="${ memberMail }" begin="0" end="17" var="memberMail" varStatus="loop">
              <c:if test="${ memberMail['USER_TYPE'] == 'U'}">
              <c:if test="${ memberMail['HEALTH_CHECK'] == 'Y'}">
              	
    <tbody>
         <tr>
            <td style="width: 30px;">
               <input type="checkbox" id="chk_list" name="chk_list" value="list1" />
            </td>
            <%-- <td style="width: 230px;">
                 ${memberMail['ID']} 
            </td> --%>
            <td style="width: 230px;" >
                 ${memberMail['NAME']}
            </td>
            <td style="width: 230px;">
            	
            	<c:set var="Value" value="${memberMail['EMAIL']}" />
					${fn:substring(Value,0,3)}***@${fn:split(Value,'@')[1]}
 	
            </td>
            
            <td style="width: 230px;">
                 ${memberMail['SIGN_DATE']}
            </td>
            <td style="width: 230px;">
                 ${memberMail['HEALTH_CHECK']}
            </td>
            <td style="width: 230px;">
            	<c:choose>
					<c:when test="${memberMail['MISSION_TYPE'] eq '운동미션'}">
						Y
					</c:when>
					<c:otherwise>
						N
					</c:otherwise>
            	</c:choose>
            </td>
            <td style="width: 230px;">
                 ${memberMail['INSURANCE_CHECK']}
            </td>
              
         </tr>       
        
    </tbody>
    </c:if>
    </c:if>
</c:forEach>
  </table>
              </div>
            </div>
					
            </div>
            
          </div>
        </div>
        </div>
        </div>
        
        
        <!-- mail 폼 -->
    <div class="container-fluid py-2">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <h5 class="mb-0">메일 송부하기</h5>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
               <form th:action="@{/mailService}" method="post">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label" style="font-size: 16px;">받는 분</label>
                    <input class="form-control" type="text" name="name" id="name">
                    <input type="hidden" name="address" placeholder="이메일 주소를 입력하세요" id="email">
                    
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label" style="font-size: 16px;">제목</label>
                    <input class="form-control" type="text" name="title" placeholder="제목을 입력하세요">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label" style="font-size: 16px;">내용</label>
                    <textarea class="form-control" type="text" name="content" placeholder="보낼 내용을 입력하세요">
                    	
                     </textarea>
                  </div>
                </div>
                <div class="col-md-12">
                	<div class="form-group">
		            	<label for="example-text-input" class="form-control-label" style="font-size: 16px;">첨부파일</label><br>
		            		<input type="file" name="attachFileList" class="file-input" />
	            	</div>
	            </div>
	            <div class="text-end">
                <button class="btn btn-sm ms-auto" style="background: #0ea2bd; color: #fff;">발송</button>
                </div>
                </form>
              </div>
              
              </div>
            </div>
 
          </div>
        </div>
       
      </div>
      <footer class="footer pt-3  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3 ">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Argon Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="fa fa-close"></i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0 overflow-auto">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
          <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">Dark</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <hr class="horizontal dark my-sm-4">
        <div class="mt-2 mb-5 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/argon-dashboard">Free Download</a>
        <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard">View documentation</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/creativetimofficial/argon-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/argon-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Argon%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fargon-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/argon-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
      </div>
    </div>
  </div>
  
  <!--   Core JS Files   -->
  <script src="<c:url value="admin/js/core/popper.min.js" />"></script>
  <script src="<c:url value="admin/js/core/bootstrap.min.js" />"></script>
  <script src="<c:url value="admin/js/core/perfect-scrollbar.min.js" />"></script>
  <script src="<c:url value="admin/js/core/smooth-scrollbar.min.js" />"></script>
  <script src="<c:url value="admin/js/core/chartjs.min.js" />"></script>
  
  <script src="http://code.jquery.com/jquery-latest.js"></script>
   
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  
  <script type="text/javascript">
  $(window).load(function(){
      $("input[name='chk_all']").click(function () {
          var chk_listArr = $("input[name='chk_list']");
          for (var i=0; i < chk_listArr.length; i++) {
              chk_listArr[i].checked = this.checked;
          }
      });
     
      $("input[name='chk_list']").click(function () { //리스트 항목이 모두 선택되면 전체 선택 체크
          if ($("input[name='chk_list']:checked").length == 5) {
              $("input[name='chk_all']")[0].checked = true;
          } else  {                                                //리스트 항목 선택 시 전체 선택 체크를 해제함
              $("input[name='chk_all']")[0].checked = false;
          }
      });   
     
  });
  
 $(document).ready(function(){
	 $('#checkVal').on('click', function(){
	 
	console.log("length: "+$('input[id=chk_list]:checked') )	 
	 var checkbox = $('input[id=chk_list]:checked');
	 var tr = checkbox.parent().parent();
	 
	 var td = tr.children();
	 
	 var name = td.eq(1).text();
	 var email = td.eq(3).text();
	 $('#name').val(name);
	 $('#email').val(email);
		 
	 })
 })
 
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
   <script src="<c:url value="admin/js/core/argon-dashboard.min.js?v=2.0.4" />"></script>
</body>
</html>