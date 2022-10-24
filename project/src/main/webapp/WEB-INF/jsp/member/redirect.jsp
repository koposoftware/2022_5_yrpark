<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	var path = window.location.pathname;
	var path1 = window.location.search;
	path = path.substr(9);
	
	location.href = "/project/login?redirect=" + path + path1;
</script>