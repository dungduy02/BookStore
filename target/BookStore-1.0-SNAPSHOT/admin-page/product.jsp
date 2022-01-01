<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Sản phẩm</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Datatables CSS -->
	<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

	<!-- Datepicker CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<!-- Select CSS -->
	<link rel="stylesheet" href="assets/css/select2.min.css">
	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/admin.css">

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
							<h3 class="page-title">Sản phẩm</h3>
						</div>
						<div class="col-auto text-right">
							<a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
								<i class="fas fa-filter"></i>
							</a>
							<a href="add-product.jsp" class="btn btn-primary add-button ml-3">
								<i class="fas fa-plus"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				
				<!-- Search Filter -->
				<div class="card filter-card" id="filter_inputs">
					<div class="card-body pb-0">
						<form action="#" method="post">
							<div class="row filter-row">

								<!-- thay đổi ở đây ************************ -->
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Mã sản phẩm</label>
										<input class="form-control" type="text">
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Tên sản phẩm</label>
										<input class="form-control" type="text">
									</div>
								</div>
                                <!-- Thay đổi theo danh sách đề mục -->
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Category</label>
										<select class="form-control select">
											<option>Chọn Danh Mục</option>
											<option>Khoa Học</option>
											<option>Tâm Lý</option>
											
										</select>
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<button class="btn btn-primary btn-block" type="submit">Chọn</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- /Search Filter -->
				
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center mb-0 datatable">
                                        <!-- Thay đổi code ở đây Thay đổi theo file word -->
										<thead>
											<tr>
												<th>ID</th>
												<th>Ảnh</th>
												<th>Tên sản phẩm</th>
												<th>Danh mục</th>
												<th>Giá</th>
												<th>Số lượng</th>
												<th>ID nhà cung cấp</th>
												<th>ID nhà xuất bản</th>
												<th class="text-right">Hành Động</th>
											</tr>
                                        </thead>
                                        
                                        <!-- Thêm vào nội dung ở đây -->
										<tbody>
											<tr>
												<td>1</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg" alt="Hình ảnh danh mục"></td>
													<td>Power vs Force</td>
													<td>Tâm Lý</td>
													<td>149.000 VNĐ</td>
													<td>10</td>
													<td>1</td>
													<td>1</td>
												<td class="text-right">
													<a href="edit-product.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg" alt="Hình ảnh danh mục"></td>
													<td>Power vs Force</td>
													<td>Tâm Lý</td>
													<td>149.000 VNĐ</td>
													<td>10</td>
													<td>1</td>
													<td>1</td>
												<td class="text-right">
													<a href="edit-product.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg" alt="Hình ảnh danh mục"></td>
													<td>Power vs Force</td>
													<td>Tâm Lý</td>
													<td>149.000 VNĐ</td>
													<td>10</td>
													<td>1</td>
													<td>1</td>
												<td class="text-right">
													<a href="edit-product.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg" alt="Hình ảnh danh mục"></td>
													<td>Power vs Force</td>
													<td>Tâm Lý</td>
													<td>149.000 VNĐ</td>
													<td>10</td>
													<td>1</td>
													<td>1</td>
												<td class="text-right">
													<a href="edit-product.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg" alt="Hình ảnh danh mục"></td>
													<td>Power vs Force</td>
													<td>Tâm Lý</td>
													<td>149.000 VNĐ</td>
													<td>10</td>
													<td>1</td>
													<td>1</td>
												<td class="text-right">
													<a href="edit-product.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
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

	<!-- Datepicker Core JS -->
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Datatables JS -->
	<script src="assets/plugins/datatables/datatables.min.js"></script>

	<!-- Select2 JS -->
	<script src="assets/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>
	