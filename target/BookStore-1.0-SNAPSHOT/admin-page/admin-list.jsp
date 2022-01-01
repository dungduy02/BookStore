<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Danh sách admin</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

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
							<h3 class="page-title">Danh sách admin</h3>
						</div>
						<div class="col-auto text-right">
							<a href="add-admin.html" class="btn btn-primary add-button ml-3">
								<i class="fas fa-plus"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center mb-0 datatable">
										<thead>
											<tr>
												<th>#</th>
												<th>Ảnh</th>
												<th>Tên</th>
												<th>Email</th>
												<th>Điện thoại</th>
												<th>Password</th>
												<th>Trạng thái</th>
												<th>Quyền</th>
												<th class="text-right">Chỉnh sửa</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>120</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/admin/admin3.png" alt="Hình ảnh admin"></td>
				
												<td>Mai Vân Anh</td>
												<td>vananh@gmail.com</td>
												<td>028 5364 399</td>
												<td>********</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox" checked>
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox">
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td class="text-right">
													<a href="edit-admin.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
												</td>
											</tr>
											<tr>
												<td>122</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/admin/admin2.jpg" alt="Hình ảnh admin"></td>
												
												<td>Duy Dung</td>
												<td>duydung@gmail.com</td>
												<td>077 8544 167</td>
												<td>********</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox" checked>
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox">
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td class="text-right">
													<a href="edit-admin.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
												</td>
											</tr>
											<tr>
												<td>124</td>
												<td>
													<img class="rounded service-img mr-1" src="assets/img/admin/admin1.png" alt="Hình ảnh admin"></td>
												
												<td>Minh Mẫn</td>
												<td>minhman@gmail.com</td>
												<td>099 8008 612</td>
												<td>********</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox">
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td>
													<div class="status-toggle">
														<input id="service_3" class="check" type="checkbox" checked>
														<label for="service_3" class="checktoggle">checkbox</label>
													</div>
												</td>
												<td class="text-right">
													<a href="edit-admin.jsp" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
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

	<!-- Datatables JS -->
	<script src="assets/plugins/datatables/datatables.min.js"></script>

	<!-- Select2 JS -->
	<script src="assets/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>