<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    	 		
    	 		<!-- 페이지의 내용 -->
    	 		<div class="container-fluid">
    	 			<h1>List Page</h1>
    	 			
					<div class="card shadow mb-4">
						<div class="card shadow mb-4">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No</th>
											<th>Title</th>
											<th>Writer</th>
											<th>Date</th>
											<th>Hit</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="vo">
											<tr>
												<td><a href="./detail?boardNo=${vo.boardNo}">${vo.boardNo}</a></td>
												<td>${vo.boardTitle}</td>
												<td>${vo.boardWriter}</td>
												<td>${vo.boardDate}</td>
												<td>${vo.boardHit}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
    	 			
    	 			<a href="./add" class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">글작성</span>
                                    </a>
    	 			</div>
    	 			

    	 		</div>
    	 		
    	 	
    	 	</div>
    	 	
    	 	<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
    	 
    	 </div>
    	
    </div>
    
    

<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
</body>
</html>