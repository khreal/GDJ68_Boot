<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>



</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
    	<!-- sidebar -->
    	<c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
    
    	<div id="content-wrapper" class="d-flex flex-column">
    		<div id="content">
    			<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
    		
    		
    		 <div class="container-fluid">
    		     <form action="update" method="post">
    		     <input type="hidden" name="boardNo" value="${detail.boardNo}">
    		 	<div class="mb-3">    		 	
				  <label for="boardTitle" class="form-label">제목</label>
				  <input type="text" class="form-control" id="boardTitle" name="boardTitle" value="${detail.boardTitle}">
				</div>
				 <div class="mb-3">
				  <label for="boardWriter" class="form-label">작성자</label>
				  <input type="text" class="form-control" id="boardWriter" name="boardWriter" value="${detail.boardWriter}">
				</div>
				<div class="mb-3">
				  <label for="boardContents" class="form-label">내용</label>
				  <textarea class="form-control" id="boardContents" name="boardContents" rows="3">${detail.boardContents}</textarea>
				  <button class="btn btn-danger">수정</button>
				  
				  </form>
    		 	
    		 	
    		 	
    		 	
    		 </div>
    		 </div>
    		
    		<c:import url="/WEB-INF/views/layout/footer.jsp">	</c:import>
    	</div>
    
    </div>
    
    
<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
</body>
</html>