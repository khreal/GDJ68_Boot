<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSP에서 properties메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<c:import url="./layout/headCSS.jsp"></c:import>



</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
    	<!-- sidebar -->
    	<c:import url="./layout/sidebar.jsp"></c:import>
    
    	<div id="content-wrapper" class="d-flex flex-column">
    		<div id="content">
    			<c:import url="./layout/topbar.jsp"></c:import>
    		</div>
    		
    		 <div class="container-fluid">
    		 <h1>welcome : <spring:message code="hello"></spring:message></h1>
    		 <h1><spring:message code="hi"></spring:message> </h1> 
    		
    		
    		<c:import url="/WEB-INF/views/layout/footer.jsp">	</c:import>
    	</div>
    
    </div>
    
    
<c:import url="./layout/footjs.jsp"></c:import>
</body>
</html>