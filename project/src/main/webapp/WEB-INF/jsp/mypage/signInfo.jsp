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
   <script src="https://kit.fontawesome.com/fd3ad8981e.js"; crossorigin="anonymous"></script>

<!-- jquery -->
<script   src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<style>
	@font-face {
		    font-family: 'Pretendard-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
		    font-weight: 400;
		    font-style: normal;
		}
		
	table {
		font-size: 18px;
	}
	
 	td {
 		border-right: 1px solid darkgray;
 		border-bottom: 1px solid darkgray;
 	}
 	
	
	
</style>
</head>
<body>

		<div id='mask_wrap2'>
			<div id="wrap2">
				<div id="capture">
				
				<div class="container">
    				<img src="./img/signpaper2.png" style="width: 100%">
					<h4 style="font-family: 'Pretendard-Regular';" class="mt-4 fw-bold">????????? ??????</h4>
					<table border="1"  width="100%" class="mb-5" style="font-family: 'Pretendard-Regular';">
					 	<tr>				 			
				               	<td class="text-center" style="width:200px;">??????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ loginVO.name }</td>
				        </tr>
						<tr>				 			
				               	<td class="text-center" style="width:200px;">??????????????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ loginVO.jumin1 }-${ loginVO.jumin2 }</td>
				        </tr>
				        <tr>				 			
				               	<td class="text-center" style="width:200px;">????????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ loginVO.mainAddr } ${ loginVO.detailAddr }</td>
				        </tr>
				        <tr>				 			
				               	<td class="text-center" style="width:200px;">?????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ loginVO.tel }</td>
				        </tr>
				        </table>

			        	<h4 style="font-family: 'Pretendard-Regular';" class="mt-4 fw-bold">?????? ??????</h4>
					<c:forEach items="${ signpaper }" var="signpaper" varStatus="loop">
				
						<table border="1"  width="100%" class="mb-5" style="font-family: 'Pretendard-Regular';">   
							<tr>				 			
				               	<td class="text-center" style="width:200px;">?????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ signpaper['COMPANY_NAME'] }</td>
				        	</tr>
				        	<tr>				 			
				               	<td class="text-center" style="width:200px;">?????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ signpaper['INSURANCE_NAME'] }</td>
				        	</tr>
				        	<tr>				 			
				               	<td class="text-center" style="width:200px;">????????????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ signpaper['INSURANCE_TYPE'] }</td>
				        	</tr>
				        	<tr>				 			
				               	<td class="text-center" style="width:200px;">?????????</td>
				               	<td class="text-start" style="padding-left: 20px;"><fmt:formatNumber value="${ signpaper['INSURANCE_FEE'] }" pattern="#,### ???" /></td>
				        	</tr>
				        	<tr>				 			
				               	<td class="text-center" style="width:200px;">????????????</td>
				               	<td class="text-start" style="padding-left: 20px;"><fmt:formatDate value="${ signpaper['JOIN_DATE'] }" pattern="yyyy-MM-dd" /></td>
				        	</tr>
				        	<tr>				 			
				               	<td class="text-center" style="width:200px;">??????</td>
				               	<td class="text-start" style="padding-left: 20px;">${ signpaper['REMARK'] }</td>
				        	</tr>
				        	
						</table>   
			   		</c:forEach>
			  
			   
			   <p style="color: red">* ?????? ????????? ????????? ??????????????? ???????????????.</p>
			   <p>??? ?????? ????????? ?????? ????????????, ????????????, ??????, ??????, ????????? ?????? ???????????????.</p>
			   <p>??? ??????????????? ?????????(24???) ???????????? ????????????????????????.</p>
			   <div class="text-end">
			   		<img alt="" src="./img/logo.png" style="width:200px;">
			   </div>
				</div>
			
				 </div>
			 </div>
		 </div>

		 
		 <script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.1.1/es6-promise.auto.js"></script>
		 <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
		 <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
		 <script>
		 
		 function pdfPrint(){

		        // ?????? document.body??? html??? A4 ????????? ?????? PDF??? ??????
		        html2canvas(document.body, {
		            onrendered: function (canvas) {

		                // ???????????? ???????????? ??????
		                var imgData = canvas.toDataURL('image/png');

		                var imgWidth = 210; // ????????? ?????? ??????(mm) A4 ??????
		                var pageHeight = imgWidth * 1.414;  // ?????? ????????? ?????? ?????? ?????? A4 ??????
		                var imgHeight = canvas.height * imgWidth / canvas.width;
		                var heightLeft = imgHeight;

		                var doc = new jsPDF('p', 'mm');
		                var position = 0;

		                // ??? ????????? ??????
		                doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
		                heightLeft -= pageHeight;

		                // ??? ????????? ????????? ?????? ?????? ????????? ??????
		                while (heightLeft >= 20) {
		                    position = heightLeft - imgHeight;
		                    doc.addPage();
		                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
		                    heightLeft -= pageHeight;
		                }

		                // ?????? ??????
		                doc.save('signpaper.pdf');


		                //???????????? ??????
		                //document.write('<img src="'+imgData+'" />');
		            }
		            
		        });
		        
		    }

		    window.onload = function(){
		        pdfPrint();
		    }
		 </script>					 
					
</body>
</html>