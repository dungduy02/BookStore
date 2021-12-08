<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
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

    <!-- Header -->
    <div class="header">
        <div class="header-left">
            <a href="dashboard.html" class="logo logo-small">
                <img src="assets/img/logo-icon.png" alt="Logo" width="30" height="30">
            </a>
        </div>
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-align-left"></i>
        </a>
        <a class="mobile_btn" id="mobile_btn" href="javascript:void(0);">
            <i class="fas fa-align-left"></i>
        </a>

        <ul class="nav user-menu">
            <!-- Notifications -->
            <li class="nav-item dropdown noti-dropdown">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <i class="far fa-bell"></i>  <span class="badge badge-pill"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Thông Báo</span>
                        <a href="javascript:void(0)" class="clear-noti"> xóa tất cả </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/ong.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Nguyễn Văn An đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">15 Tháng Chín 2020 10:20</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="notification-detail.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user21.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Trần Thị Hà đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">13 Tháng Chín 2021 15:56</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user22.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Biên Thị Anh đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">12 Tháng Chín 2021 06:05 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user23.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Ngô Thế Thanh đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">11 Tháng Chín 2021 12:04 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user24.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Dương Thị Vàng đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">10 Tháng Chín 2021 08:42</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user25.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Lưu Hồng đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">9 Tháng Chín 2021 11:01 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user26.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Trương Thị Bạc đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">8 Tháng Chín 2021 06:23 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="admin-notification.html">Tất cả Thông báo</a>
                    </div>
                </div>
            </li>
            <!-- /Notifications -->
            <!-- User Menu -->
            <li class="nav-item dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle user-link  nav-link" data-toggle="dropdown">
						<span class="user-img">
							<img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
						</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="admin-profile.html">Thông tin cá nhân</a>
                    <a class="dropdown-item" href="login.html">Đăng xuất</a>
                </div>
            </li>
            <!-- /User Menu -->

        </ul>
    </div>
    <!-- /Header -->

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-logo">
            <a href="dashboard.html">
                <img src="assets/img/logo-icon.png" class="img-fluid" alt="">
            </a>
        </div>
        <div class="sidebar-inner">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li >
                        <a href="dashboard.html"><i class="fas fa-columns"></i> <span>Dashboard</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fas fa-tasks"></i> <span>Quản lí</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="categories.html">Danh mục</a></li>
                            <li><a href="product.html" class="active" >Sản phẩm</a></li>
                            <li><a href="blog.html" >Blog</a></li>
                            <!-- <li><a href="coupon-code-type.html">Loại mã giảm giá</a></li>
                            <li><a href="coupon-code.html">Mã giảm giá</a></li>
                            <li><a href="ratingstype.html">Loại đánh giá</a></li>
                            <li><a href="email.html">Email</a></li> -->


                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-shopping-cart"></i><span>Bán hàng</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="total-report.html">Danh sách đặt hàng</a></li>
                            <!-- <li><a href="shipments.html">Vận chuyển</a></li>
                            <li><a href="return-request.html">Bảo hành</a></li>
                            <li><a href="review-reports.html">Đánh giá sản phẩm</a></li> -->


                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-users"></i><span>Người dùng</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="users.html">Khách hàng</a></li>
                            <li><a href="admin-list.html">Danh sách admin</a></li>
                            <li><a href="service-list.html" >Nhà cung cấp</a></li>
                            <li><a href="publisher.html">Nhà xuất bản</a></li>
                        </ul>
                    </li>
                    <li >
                        <a href="admin-profile.html" ><i class="fas fa-user-plus"></i> <span>Thông tin cá nhân</span></a>
                    </li>
                    <li>
                        <a href="settings.html"><i class="fas fa-cog"></i> <span>Thiết lập</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /Sidebar -->


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
                        <a href="add-product.html" class="btn btn-primary add-button ml-3">
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
                                            <a href="edit-product.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
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

