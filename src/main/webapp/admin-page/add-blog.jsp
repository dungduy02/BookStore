<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Thêm blog</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/admin.css">
	<script src="assets/js/tinymce/tinymce.min.js"></script>
    <script src="assets/js/tinymce.js"></script>

</head>

<body>
	<div class="main-wrapper">
		<%@include file="header.jsp"%>
		<%@include file="sidebar.jsp"%>
        
        <div class="page-wrapper">
			<div class="content container-fluid">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Thêm blog</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="blog.jsp">Blog</a></li>
								<li class="breadcrumb-item active">Thêm blog</li>
							</ul>
						</div>
						
					</div>
				</div>
				<!-- /Page Header -->
				
				
				
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								
								<form action="categories.jsp">
									
									<div class="form-group">
										<label>Ảnh</label>
										<input class="form-control" type="file">
									</div>
									<div class="form-group">
										<div class="avatar">
											<img class="avatar-img rounded" alt="" src="">
										</div>
                                    </div>
                                    <div class="form-group">
										<label>Tiêu đề</label>
										<input class="form-control" type="text" value="">
                                    </div>
                                    <div class="form-group">
										<label>Tóm tắt</label>
                                        <textarea style="height: 100px;" class="form-control" type="text"></textarea>
									</div>
									<div>
										<label>Mô tả dài</label>
                                        <textarea name="" id="textExample" cols="30" rows="10">
											<p></p>
										</textarea>
                                    </div>
									<div class="mt-4">
										<button class="btn btn-primary" type="submit">Lưu thay đổi</button>
										<a href="categories.jsp" class="btn btn-link">Hủy</a>
									</div>
								</form>
								<!-- /Form -->
                                 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery -->
	<script src="assets/js/jquery-3.5.0.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>


	<!-- Select2 JS -->
	<script src="assets/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>
	