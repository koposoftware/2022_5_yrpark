<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <footer id="footer" class="footer">

    <div class="footer-content">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3 style="font-family: 'HanaB'; font-weight: 300;">하나케어</h3>
              <p style="font-family: 'Pretendard-Regular';">
                인천 서구 에코로 167  <br>
                하나금융그룹 통합데이터센터<br><br>
                <strong>Email:</strong> hanacare.help@gmail.com<br>
              </p>
              <div class="d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

        <div class="flex-column align-items-center align-items-lg-start">
          <div class="copyright">
            &copy; Copyright <strong><span>HanaCare</span></strong>. 
          </div>
         
        </div>
            </div>
          </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4 style="font-family: 'Pretendard-Regular';">Menu</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">보험상품</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">헬스케어</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">미션기록</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">마이페이지</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
           <h4 style="font-family: 'Pretendard-Regular';">오시는 길</h4>
            <div id="map" style="width:500px;height:200px;"></div>
          </div>
			<div class="col-lg-3 col-md-6 footer-links">
			</div>
			 <div class="social-links footer-legaltext-center col-lg-1 col-md-6 footer-links order-first order-lg-last">
			  <h4 style="font-family: 'Pretendard-Regular';">Contect</h4>
            <ul>
          <li><a href="#" class="twitter"><i class="bi bi-chevron-right"></i><i class="bi bi-twitter"></i></a></li>
          <li><a href="#" class="facebook"><i class="bi bi-chevron-right"></i><i class="bi bi-facebook"></i></a></li>
          <li><a href="#" class="instagram"><i class="bi bi-chevron-right"></i><i class="bi bi-instagram"></i></a></li>
          <li><a href="#" class="google-plus"><i class="bi bi-chevron-right"></i><i class="bi bi-skype"></i></a></li>
          <li><a href="#" class="linkedin"><i class="bi bi-chevron-right"></i><i class="bi bi-linkedin"></i></a></li>
          </ul>
          
          </div>

        </div>
      </div>
    </div>

    <!-- <div class="footer-legal text-center">
      <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

        <div class="d-flex flex-column align-items-center align-items-lg-start">
          <div class="copyright">
            &copy; Copyright <strong><span>HanaCare</span></strong>. All Rights Reserved
          </div>
          <div class="credits">
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/herobiz-bootstrap-business-template/
            Designed by <a href="https://bootstrapmade.com/">HanaCare</a>
          </div>
        </div>

        <div class="social-links order-first order-lg-last mb-3 mb-lg-0">
          <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bi bi-skype"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>

      </div>
    </div> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey="></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.556088112071826, 126.6287096567498), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.556088112071826, 126.6287096567498); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
		</script>
  </footer>