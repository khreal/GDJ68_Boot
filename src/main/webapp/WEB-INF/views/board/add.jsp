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
    		 <div class="row">
    		 <form action="add" method="post">
    		 	<div class="mb-3">
				  <label for="boardTitle" class="form-label">제목</label>
				  <input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="제목을 입력하세요">
				</div>
				 <div class="mb-3">
				  <label for="boardWriter" class="form-label">작성자</label>
				  <input type="text" class="form-control" id="boardWriter" name="boardWriter" placeholder="작성자">
				</div>
				<div class="mb-3">
				  <label for="boardContents" class="form-label">내용</label>
				  <textarea class="form-control" id="boardContents" name="boardContents" rows="3"></textarea>
				  <button class="btn btn-danger">ADD</button>
				  
				  </form>
				</div>
    		 </div>
    		 </div>
    		</div>
    		<c:import url="/WEB-INF/views/layout/footer.jsp">	</c:import>
    	</div>
    
    </div>
    
    
<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
</body>
</html>