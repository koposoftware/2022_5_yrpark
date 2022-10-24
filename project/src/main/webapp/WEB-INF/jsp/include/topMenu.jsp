<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- ======= Header ======= -->
   
  
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <div class="logo align-items-center"><a href='index.jsp'><img src='img/logo.png'></a></div>
  
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
  
      <nav id="navbar" class="navbar">
      	
      
        <ul>

          <li><a class="nav-link scrollto" href="index.jsp" style="font-family: 'Pretendard-Regular'; font-size: 18px;">Home</a></li>
        
          <li><a class="nav-link scrollto" href="${ pageContext.request.contextPath}/items" style="font-family: 'Pretendard-Regular'; font-size: 18px;">보험상품</a></li>
        
          
          <li class="dropdown"><a href="#"><span style="font-family: 'Pretendard-Regular'; font-size: 18px;">헬스케어</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="${ pageContext.request.contextPath}/myHealthCare" style="font-family: 'Pretendard-Regular';">my 헬스케어</a></li>       
              <li><a href="${ pageContext.request.contextPath}/familyCare" style="font-family: 'Pretendard-Regular';">가족건강지킴이</a></li>
            </ul>
          </li>
          
          <li class="dropdown"><a href="#"><span style="font-family: 'Pretendard-Regular'; font-size: 18px;">미션기록</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="${ pageContext.request.contextPath}/recordMission" style="font-family: 'Pretendard-Regular';">기록미션</a></li>
              <li><a href="${ pageContext.request.contextPath}/exerciseMission" style="font-family: 'Pretendard-Regular';">운동미션</a></li>       
            </ul>
          </li>
          
          <li class="dropdown"><a href="#"><span style="font-family: 'Pretendard-Regular'; font-size: 18px;">마이페이지</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="${ pageContext.request.contextPath}/healthPage" style="font-family: 'Pretendard-Regular';">건강내역</a></li>       
              <li><a href="${ pageContext.request.contextPath}/insurancePage" style="font-family: 'Pretendard-Regular';">보험내역</a></li>
            </ul>
          </li>
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle d-none"></i>
      </nav><!-- .navbar -->

		<c:choose>
	                        <c:when test="${ empty loginVO }">
	                        	<a class="btn-getstarted scrollto" href="${ pageContext.request.contextPath}/login">로그인</a>
     
	                        </c:when>
	                       
							
	                        <c:otherwise>
	                        
	                        	<a class="btn-getstarted scrollto" href="${ pageContext.request.contextPath}/logout">로그아웃</a>
                        </c:otherwise>
                   </c:choose>
      

    </div>
   

  <!-- End Header -->