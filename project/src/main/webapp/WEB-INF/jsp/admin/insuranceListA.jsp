<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 관리</title>
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
		
	table {
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
		
		a:hover {
    		color: #0ea2bd;
    		text-decoration: none;
		}
		
  </style>
</head>

<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 position-absolute w-100" style="background: #0ea2bd"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main" style="z-index:1">
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
          <a class="nav-link active" href="${ pageContext.request.contextPath}/insuranceListA">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni text-warning text-sm opacity-10 fa-sharp fa-solid fa-list"></i>
            </div>
            <span class="nav-link-text ms-1">상품관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="${ pageContext.request.contextPath}/mailService">
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
            <li class="breadcrumb-item text-sm text-white active" aria-current="page">상품관리</li>
          </ol>
          <h6 class="font-weight-bolder text-white mb-0">상품관리</h6>
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
<div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
	            <div class="justify-content-between">
	              <h5 style="position: absolute">보험 상품 목록</h5>
	              <h6 class="text-end"><a type="button" id="addList" href="${ pageContext.request.contextPath }/insertItemA"><i class="fa-solid fa-circle-plus" style="color: #ff000087; margin: 0px; font-size: 20px; padding-right: 5px;"></i>상품추가</a></h6>
	            </div>
	            
            </div>
            
            
            <!-- 탭 메뉴 -->			
        <ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
			<li class="nav-item me-5" role="presentation">
				<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
						data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
						aria-selected="true" style="width: 300px; font-size: 18px;">자사보험</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
					data-bs-target="#myreview1" type="button" role="tab"
					aria-selected="false" style="width: 300px; font-size: 18px;">타사보험</button>
			</li>
			
		</ul>
		
		<!-- 내용 -->
		<div class="tab-content container mt-4" id="myTabContent">
			<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
				aria-labelledby="userinfo-tab">
				
				<div id = "checkList" class="mb-4">
				
	
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="align-items-center mb-0" id="list" style="width: 90%; margin-left: 50px;">
                  <thead>
                    <tr>
                      <th class="text-uppercase  text-sm font-weight-bold"><h6>보험번호</h6></th>
                      <th class="text-uppercase  text-sm font-weight-bold ps-2" style="width: 80px;"><h6>보험타입</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold" style="width: 80px;"><h6>보험회사</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold "><h6>보험명</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold "><h6>비고</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold" style="width: 60px;"><h6>보험료</h6></th>
                      <th class="text-center opacity-7"></th>
                    </tr>
                  </thead>
                  <c:forEach items="${ insuranceAll }" var="insuranceAll" varStatus="loop">
                  
                  <!-- Modal -->
		 
					<div class="modal fade" id="A${insuranceAll['NO']}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document" style="margin-top: 140px;">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">보험 상품 삭제</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true"></span>
					        </button>
					        </div>
					      <div class="modal-body" style="font-family: 'Pretendard-Regular'; font-size: 18px;">
					    	 	<h6 class="body-contents" id="text-contents"></h6>
					    		${insuranceAll['INSURANCE_NAME']} 상품을 삭제하시겠습니까?
					              </div>
								      
								      <div class="modal-fo oter text-end mx-3">
								     <form action="${ pageContext.request.contextPath}/deleteproc" method="post" name="deleteItem">
						
										<input name="no" type="hidden" value="${insuranceAll['NO']}">
								      	<button type="submit" class="btn" style="background: #0ea2bd; color: #fff;">삭제</button>
								   	</form>
								       	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								      </div>
								      
					              </div>
					              </div>
					 </div>
					 <!-- modal end  -->
					 
                  <tbody>
                    <tr>
                      <td>
                        <div class="px-2 py-1">
                          
                          <div class="d-flex flex-column justify-content-center">
                            <p class="text-sm mb-0">${insuranceAll['NO']}</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-sm mb-0">${insuranceAll['INSURANCE_TYPE']}</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-sm mb-0">${insuranceAll['COMPANY_NAME']}</p>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-sm ">${insuranceAll['INSURANCE_NAME']}</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-sm ">${insuranceAll['REMARK']}</span>
                      </td>
                      <td class="align-middle text-center" style="width: 80px;">
                        <span class="text-sm"><fmt:formatNumber value="${insuranceAll['INSURANCE_FEE']}" pattern="#,###원" /></span>
                      </td>
                      <td class="align-middle" style="width: 310px;">
                         <div class="ms-auto text-end">
		                    
		                    <form method="post" style="display:inline-block;">
		                    	<input name="no" type="hidden" value="${insuranceAll['NO']}">
		                    	<input name="insuranceType" type="hidden" value="${insuranceAll['INSURANCE_TYPE']}">
		                    	<input name="companyName" type="hidden" value="${insuranceAll['COMPANY_NAME']}">
		                    	<input name="insuranceName" type="hidden" value="${insuranceAll['INSURANCE_NAME']}">
		                    	<input name="remark" type="hidden" value="${insuranceAll['REMARK']}">
		                    	<input name="insuranceFee" type="hidden" value="${insuranceAll['INSURANCE_FEE']}">
		                    	<input name="protectItem" type="hidden" value="${insuranceAll['PROTECT_ITEM']}">
		                    	<input name="protectFee" type="hidden" value="${insuranceAll['PROTECT_FEE']}">
		                    	<input name="signAge" type="hidden" value="${insuranceAll['SIGN_AGE']}">
		                    	<input name="signType" type="hidden" value="${insuranceAll['SIGN_TYPE']}">
		                    	<button type="submit" onclick ="javascript: form.action='${ pageContext.request.contextPath}/insuranceDetailA?no=${insuranceAll['NO']}';" class="btn btn-link text-dark px-3 mb-0"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>상세보기</button>

		                    	<a href="${ pageContext.request.contextPath}/mailService?no=${insuranceAll['NO']}" class="btn btn-link text-dark px-3 mb-0"><i class="ni fa-regular fa-envelope text-dark me-2" aria-hidden="true"></i>메일송부</a>
		                  	</form>
		
		                  	<button class="btn btn-link text-danger text-gradient px-3 mb-0" data-bs-toggle="modal" data-bs-target="#A${insuranceAll['NO']}" data-id="${insuranceAll['COMPANY_NAME']}" style="font-family: 'Pretendard-Regular';"><i class="far fa-trash-alt me-2"></i>Delete</button>
		                  </div>
                      </td>
                    </tr>
                   
                  </tbody>
                  
                    </c:forEach>
                </table>
              </div>
            </div>
            
            </div>
            </div>
            
            	<!-- 타사보험 -->
				<div class="tab-pane fade" id="myreview1" role="tabpanel"
					aria-labelledby="myreview-tab">
					<div id = "checkList" class="mb-4">
				
	
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="align-items-center mb-0" id="list" style="width: 90%; margin-left: 50px;">
                  <thead>
                    <tr>
                      <th class="text-uppercase  text-sm font-weight-bold"><h6>보험번호</h6></th>
                      <th class="text-uppercase  text-sm font-weight-bold ps-2" style="width: 80px;"><h6>보험타입</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold" style="width: 80px;"><h6>보험회사</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold "><h6>보험명</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold "><h6>비고</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold" style="width: 60px;"><h6>보험료</h6></th>
                      <th class="text-center opacity-7"></th>
                    </tr>
                  </thead>
                  <c:forEach items="${ insuranceAll }" var="insuranceAll" varStatus="loop">
                  
                  <!-- Modal -->
		 
					<div class="modal fade" id="A${insuranceAll['NO']}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document" style="margin-top: 140px;">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Pretendard-Regular';">보험 상품 삭제</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true"></span>
					        </button>
					        </div>
					      <div class="modal-body">
					    	 	<h6 class="body-contents" id="text-contents"></h6>
					    		${insuranceAll['INSURANCE_NAME']} 상품을 삭제하시겠습니까?
					              </div>
								      
								      <div class="modal-fo oter text-end" style="padding-right: 20px;">
								     <form action="${ pageContext.request.contextPath}/deleteproc" method="post" name="deleteItem">
						
										<input name="no" type="hidden" value="${insuranceAll['NO']}">
								      	<button type="submit" class="btn btn-primary">완료</button>
								   	</form>
								       	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								      </div>
								      
					              </div>
					              </div>
					 </div>
					 <!-- modal end  -->
					 
                  <tbody>
                    <tr>
                      <td>
                        <div class="px-2 py-1">
                          
                          <div class="d-flex flex-column justify-content-center">
                            <p class="text-sm mb-0">${insuranceAll['NO']}</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-sm mb-0">${insuranceAll['INSURANCE_TYPE']}</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-sm mb-0">${insuranceAll['COMPANY_NAME']}</p>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-sm ">${insuranceAll['INSURANCE_NAME']}</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-sm ">${insuranceAll['REMARK']}</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-sm ">${insuranceAll['INSURANCE_FEE']}</span>
                      </td>
                      <td class="align-middle" style="width: 310px;">
                         <div class="ms-auto text-end">
		                    
		                    <form method="post" style="display:inline-block;">
		                    	<input name="no" type="hidden" value="${insuranceAll['NO']}">
		                    	<input name="insuranceType" type="hidden" value="${insuranceAll['INSURANCE_TYPE']}">
		                    	<input name="companyName" type="hidden" value="${insuranceAll['COMPANY_NAME']}">
		                    	<input name="insuranceName" type="hidden" value="${insuranceAll['INSURANCE_NAME']}">
		                    	<input name="remark" type="hidden" value="${insuranceAll['REMARK']}">
		                    	<input name="insuranceFee" type="hidden" value="${insuranceAll['INSURANCE_FEE']}">
		                    	<input name="protectItem" type="hidden" value="${insuranceAll['PROTECT_ITEM']}">
		                    	<input name="protectFee" type="hidden" value="${insuranceAll['PROTECT_FEE']}">
		                    	<input name="protectItem2" type="hidden" value="${insuranceAll['PROTECT_ITEM2']}">
		                    	<input name="protectFee2" type="hidden" value="${insuranceAll['PROTECT_FEE2']}">
		                    	<input name="signAge" type="hidden" value="${insuranceAll['SIGN_AGE']}">
		                    	<input name="signType" type="hidden" value="${insuranceAll['SIGN_TYPE']}">
		                    	<button type="submit" onclick ="javascript: form.action='${ pageContext.request.contextPath}/insuranceDetailA?no=${insuranceAll['NO']}';" class="btn btn-link text-dark px-3 mb-0"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>상세보기</button>

		                    	<a href="${ pageContext.request.contextPath}/mailService?no=${insuranceAll['NO']}" class="btn btn-link text-dark px-3 mb-0"><i class="ni fa-regular fa-envelope text-dark me-2" aria-hidden="true"></i>메일송부</a>
		                  	</form>
		
		                  	<button class="btn btn-link text-danger text-gradient px-3 mb-0" data-bs-toggle="modal" data-bs-target="#A${insuranceAll['NO']}" data-id="${insuranceAll['COMPANY_NAME']}" style="font-family: 'Pretendard-Regular';"><i class="far fa-trash-alt me-2"></i>Delete</button>
		                  </div>
                      </td>
                    </tr>
                   
                  </tbody>
                  
                    </c:forEach>
                </table>
              </div>
            </div>
            
            </div>
				</div>
            </div>
          </div>
        </div>
      </div>
      
      

              
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h5>보험 가입자 수 순위</h5>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="align-items-center justify-content-center mb-0" id="list" style="width: 90%; margin-left: 50px;">
                  <thead>
                    <tr>
                      <th class="text-center text-uppercase text-sm font-weight-bold"><h6>순위</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold"><h6>보험번호</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold"><h6>보험타입</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold"><h6>보험회사</h6></th>
                      <th class="text-center text-uppercase  text-sm font-weight-bold"><h6>보험명</h6></th>
                      <th></th>
                    </tr>
                  </thead>
                  
                   <c:forEach items="${ adminList }" var="adminList" varStatus="loop">
                  <tbody class="text-center">
                    <tr>
                      <td>
                        <div class="px-2">
                          
                          <div class="my-auto">
                            <p class="mb-0 text-sm">${ adminList['RANK'] }</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-sm mb-0">${ adminList['NO'] }</p>
                      </td>
                      <td>
                        <span class="text-sm">${ adminList['INSURANCE_TYPE'] }</span>
                      </td>
                      <td class="align-middle text-center">
                        <div class="d-flex align-items-center justify-content-center">
                          <span class="me-2 text-sm">${ adminList['COMPANY_NAME'] }</span>
                          
                        </div>
                      </td>
                      <td>
                        <p class="text-sm mb-0">${ adminList['INSURANCE_NAME'] }</p>
                      </td>
                      <td class="align-middle">
                        <button class="btn btn-link text-secondary mb-0">
                          <i class="fa fa-ellipsis-v text-xs"></i>
                        </button>
                      </td>
                    </tr>
                    
                  </tbody>
                  </c:forEach>
                </table>
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
  </main>
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
        <div class="d-flex my-3">
          <h6 class="mb-0">Navbar Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
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
  <script src="<c:url value="admin/js/pulgins/perfect-scrollbar.min.js" />"></script>
  <script src="<c:url value="admin/js/pulgins/smooth-scrollbar.min.js" />"></script>
  <script src="<c:url value="admin/js/pulgins/chartjs.min.js" />"></script>
  
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <script src="http://code.jquery.com/jquery-latest.js"></script> 
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script>
	
		
		function deleteList(){

			   location.href = "${ pageContext.request.contextPath}/deleteproc"
		   }
	
	</script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
   <script src="<c:url value="admin/js/core/argon-dashboard.min.js?v=2.0.4" />"></script>
</body>
</html>