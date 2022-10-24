<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
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
	
	p {
		
		font-family: 'Pretendard-Regular';
	
		}
	
	label{
		font-family: 'Pretendard-Regular';
		font-size: 16px;
		}
	
	.form-floating>.form-control, .form-floating>.form-select {
	    height: calc(2.5rem + 2px);
	    line-height: 1.25;
	}
	
	.form-floating>.form-control:not(:placeholder-shown) {
	    padding-top: 0rem;
	    padding-bottom: 0rem;
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
<form action="${ pageContext.request.contextPath}/insertProc" method="post" name="insertItem">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <p class="mb-0  text-bold" style="font-size: 20px;">보험 상품 추가</p>
                <button class="btn btn-getstarted btn-sm ms-auto">상품 추가</button>
              </div>
            </div>
            <div class="card-body">
              <p class="text-uppercase text-lg text-bold">보험 상품 정보</p>
              
              <div class="row">
              <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보험 번호</label>
                    <input class="form-control" name="no" type="text">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보험 타입</label>
                    <div class="form-floating">
                          <select class="form-select form-control" name="insuranceType" id="floatingSelect insuranceType" aria-label="Financial Consultancy">
                              <option selected="">보험타입을 선택하세요</option>
                              <option name="insuranceType" value="암보험">암보험</option>
                              <option name="insuranceType" value="여행자보험">여행자보험</option>
                              <option name="insuranceType" value="치아보험">치아보험</option>
                              <option name="insuranceType" value="질병보험">질병보험</option>
                              <option name="insuranceType" value="자동차보험">자동차보험</option>
                              <option name="insuranceType" value="생활보험">생활보험</option>
                          </select>
                      </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보험 회사</label>
                    <input class="form-control" name="companyName" type="text" value="하나케어" readonly>
                  </div>
                </div>
                
                 <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">가입종류</label>
                     <select class="form-select form-control" name="signType" id="floatingSelect insuranceType" aria-label="Financial Consultancy">
                              <option selected="">가입종류를 선택하세요</option>
                              <option name="signType" value="대면 및 전화 가입">대면/전화 가입</option>
                              <option name="signType" value="온라인 가입">온라인 가입</option>
                     </select>
                  </div>
                </div>
                
             
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보험명</label>
                    <input class="form-control" name="insuranceName" type="text" >
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보험료</label>
                    <input class="form-control" name="insuranceFee" type="number">
                  </div>
                </div>
                   <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">가입연령</label>
                    <input class="form-control" name="signAge" type="text">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보장항목</label>
                    <input class="form-control" name="protectItem" type="text">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">보장금액</label>
                    <input class="form-control" name="protectFee" type="text">
                  </div>
                </div>
                
               
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">비고</label>
                    <input class="form-control" name="remark" type="text">
                  </div>
                </div>
              </div>
         	
            </div>
          </div>
        </div>
        </div>
         	</form>
        </div>
        
        
</body>
</html>