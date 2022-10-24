<%@page import="kr.ac.kopo.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Family Invite</title>
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon" />
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https:/	/fonts.gstatic.com" crossorigin>
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
		
		h5 {
			font-family: 'Pretendard-Regular';
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
	String groupId = request.getParameter("groupId");
%>


	<section  id="hero-animated" class="hero-animated2 align-items-center">
		<div id='mask_wrap2'>
				<div id="mask"></div>
				<div id="wrap2">
				<div class="section-header mt-4">
					<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">가족 구성원 초대</h3>
				</div>
							
				<div class="container" style="width:700px;">
				
						
					<h4 style="font-family: 'Pretendard-Regular';" class="mt-4 fw-bolder">
						하나케어 우리가족지킴이에 ${ loginVO.name }님이 초대되셨습니다.
					</h4>
					
					<h5 class="mt-4">
						<strong>수락하기를 누르시면 그룹에 다음 정보를 제공합니다.</strong>
					
						<h5>· 건강검진 결과 정보</h5>
						<h5>· 보유 보험 정보</h5>
						
					</h5>
					
					<h5 class="mt-4">
						<strong>수락하기를 누르시면 다음 정보를 제공받을 수 있습니다.</strong>
						<h5>· 초대 수락한 가족 건강검진 결과</h5>
						<h5>· 가족 건강검진 결과 비교 차트</h5>
						<h5>· 가족 보유 보험 정보</h5>
						
					</h5>


						
					<div class="d-flex justify-content-center" style="margin-top: 60px;">
					<form action="${ pageContext.request.contextPath}/updateproc" method="post" name="updateGroup">
						
						<input name="groupId" type="hidden" value="<%= groupId %>">
				   		<button class="btn-getstarted scrollto me-2" style="font-family: 'Pretendard-Regular';" type="submit" id="clickBtn" onclick="sure()">수락하기</button>
				   	</form>
				   		<a class="btn-getstarted scrollto" style="font-family: 'Pretendard-Regular';" type="button" id="clickBtn" onclick="nextStep()">거절하기</a>
					</div>
					
				
				</div>
				</div>
			</div>
		</section>	

		<!-- ======= Footer ======= -->
  		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	<!-- End Footer -->
</body>
</html>