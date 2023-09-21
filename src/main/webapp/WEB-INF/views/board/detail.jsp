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
										<tr>
											<td>${dto.boardNo}</td>
											<td>${dto.boardTitle}</td>
											<td>${dto.boardWriter}</td>
											<td>${dto.boardDate}</td>
											<td>${dto.boardHit}</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						<c:forEach items="${dto.list}" var="f">
							<%-- 	<img alt="" src="../files/${board}/${f.fileName}"> --%>
									<img alt="" src="/upload/${board}/${f.fileName}">
								<a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>
							</c:forEach>

    	 			
    	 			<a href="./update?boardNo=${dto.boardNo}" class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">글수정</span>
                    </a>
                    <a href="./delete?boardNo=${dto.boardNo}" class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">글삭제</span>
                    </a>
    	 			</div>
    	 									<div class="row">

    		 
    		 </div>
    		 </div>
    		 							
						</div>
    		
    		<c:import url="/WEB-INF/views/layout/footer.jsp">	</c:import>
    	</div>
    
    </div>
    
    
<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
</body>
</html>