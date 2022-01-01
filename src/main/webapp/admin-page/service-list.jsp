<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Nhà cung cấp</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Datepicker CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

	<!-- Datatables CSS -->
	<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css">

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
							<h3 class="page-title">Nhà cung cấp</h3>
						</div>
						<div class="col-auto text-right">
							<!-- <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
								<i class="fas fa-filter"></i>
							</a> -->
							<a href="add-service-list.jsp" class="btn btn-primary add-button ml-3">
								<i class="fas fa-plus"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				
				<!-- Search Filter -->
				<!-- <form action="#" method="post" id="filter_inputs">
					<div class="card filter-card">
						<div class="card-body pb-0">
							<div class="row filter-row">
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Tên nhà cung cấp</label>
										<input class="form-control" type="text">
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Sản phẩm	</label>
										<input class="form-control" type="text">
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Từ ngày</label>
										<div class="cal-icon">
											<input class="form-control datetimepicker" type="text">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label>Đến ngày</label>
										<div class="cal-icon">
											<input class="form-control datetimepicker" type="text">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-3">
									<div class="form-group">
										<button class="btn btn-primary btn-block" type="submit">Chọn</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form> -->
				<!-- /Search Filter -->
				
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center mb-0 datatable">
										<thead>
											<tr>
												<th>ID</th>
												<th>Tên nhà cung cấp</th>
												<!-- <th>Hình</th> -->
												<th>Address</th>
												<!-- <th>Danh mục</th>
												<th>Ngày</th>
												<th>Trạng thái</th> -->
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>
													<a href="service-details.html">
														 Nhà sách Cá Chép Hà Nội
													</a>
												</td>
												<td> 115 Nguyễn Thái Học, Ba Đình, Hà Nội</td>
												</td>
												<td class="text-right">
													<a href="edit-service-list.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
													
												</td>
											</tr><tr>
												<td>1</td>
												<td>
													<a href="service-details.html">
														 Nhà sách Tiền Phong
													</a>
												</td>
												<td>Số 17B, Ngọc Hà, Ba Đình, Hà Nội</td>
												</td>
												<td class="text-right">
													<a href="edit-service-list.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
													
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<a href="service-details.html">
														 Nhà sách Nguyễn Văn Cừ
													</a>
												</td>
												<td> Cát Linh, Đống Đa, Hà Nội</td>
												</td>
												<td class="text-right">
													<a href="edit-service-list.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
													
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<a href="service-details.html">
														 Hiệu sách Nhã Nam
													</a>
												</td>
												<td>Số 22, Phạm Ngọc Thạch – Lương Định Của, Đống Đa, Hà Nội</td>
												</td>
												<td class="text-right">
													<a href="edit-service-list.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
													<button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
													
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>
													<a href="service-details.html">
														 Công ty Cổ phần Sách Việt Nam
													</a>
												</td>
												<td> Số 44, Phường Tràng Tiền, quận Hoàn Kiếm, Thành phố Hà Nội</td>
												</td>
												<td class="text-right">
													<a href="edit-service-list.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
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

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>