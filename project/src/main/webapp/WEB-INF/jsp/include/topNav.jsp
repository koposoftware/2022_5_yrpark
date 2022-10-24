<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <nav id="navbar" class="container navbar container-fluid d-flex justify-content-end">
        
            <div>
                
                <div>         	
                <ul>
                
<%--                 	<c:if test="${ not empty loginVO }"> --%>
<%--                 		<li>[${ loginVO.name }님이 접속하였습니다]</li> --%>
<%--                 	</c:if> --%>
                	
                   <c:choose>
	                         <c:when test="${ empty loginVO }">
	                        	<li>
	                            	<a class="nav-link p-sm-2" href="#">　</a>
	                        	</li>
	                        </c:when>
	                       
							
	                        <c:otherwise>
	                        
	                        	
	                        		<li class="nav-item p-sm-2 color-gray">[${ loginVO.name }님이 접속하였습니다]</li>
                        		
                        </c:otherwise>
                   </c:choose>
                   
                 
                   
                   </ul>
                </div>
            </div>
        
    </nav>