<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Dashboard</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-12">
                        <h3 class="page-title">Dashboard</h3>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-user"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>429</h3>
                                    <h6 class="text-muted">Người dùng</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="fas fa-qrcode"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>124</h3>
                                    <h6 class="text-muted">Sản phẩm</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="fas fa-user-shield"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>184</h3>
                                    <h6 class="text-muted">Nhà cung cấp</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-address-card"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>148</h3>
                                    <h6 class="text-muted">Nhà xuất bản</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 d-flex">

                    <!-- Recent Bookings -->
                    <div class="card card-table flex-fill">
                        <div class="card-header">
                            <h4 class="card-title">Đặt hàng gần đây</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-center">
                                    <thead>
                                    <tr>
                                        <th>Tên khách hàng</th>
                                        <th>Ngày đặt</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Trạng thái</th>
                                        <th>Tổng tiền</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-nowrap">
                                            <img class="avatar-xs rounded-circle" src="assets/img/customer/user5.jpg" alt="User Image"> Nguyễn Văn A
                                        </td>
                                        <td class="text-nowrap">9 Dec 2021</td>
                                        <td>Thánh kinh Coco Chanel</td>
                                        <td>
                                            <span class="badge bg-danger inv-badge">chờ xử lý</span>
                                        </td>
                                        <td>
                                            <div class="font-weight-600">100.000 VNĐ</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-nowrap">
                                            <img class="avatar-xs rounded-circle" src="assets/img/customer/user6.jpg" alt="User Image"> Trần Thị B</td>
                                        <td class="text-nowrap">8 Dec 2021</td>
                                        <td>Bước chậm lại giữa thế gian vội vã</td>
                                        <td>
                                            <span class="badge bg-danger inv-badge">chờ xử lý</span>
                                        </td>
                                        <td>
                                            <div class="font-weight-600">150.000 VNĐ</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-nowrap">
                                            <img class="avatar-xs rounded-circle" src="assets/img/customer/user7.jpg" alt="User Image"> Mai Thị C</td>
                                        <td class="text-nowrap">8 Dec 2021</td>
                                        <td>Hướng dẫn sử dụng nửa kia</td>
                                        <td>
                                            <span class="badge bg-danger inv-badge">chờ xử lý</span>
                                        </td>
                                        <td>
                                            <div class="font-weight-600">139.000 VNĐ</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-nowrap">
                                            <img class="avatar-xs rounded-circle" src="assets/img/customer/user8.jpg" alt="User Image"> Lý Văn D
                                        </td>
                                        <td class="text-nowrap">6 Dec 2021</td>
                                        <td>Thanh lịch từ những khoảnh khắc đời thường</td>
                                        <td>
                                            <span class="badge bg-danger inv-badge">chờ xử lý</span>
                                        </td>
                                        <td>
                                            <div class="font-weight-600">316.000 VNĐ</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-nowrap">
                                            <img class="avatar-xs rounded-circle" src="assets/img/customer/user9.jpg" alt="User Image"> Lê Thị L</td>
                                        <td class="text-nowrap">5 Dec 2021</td>
                                        <td>Biểu tượng thất truyền</td>
                                        <td>
                                            <span class="badge bg-danger inv-badge">chờ xử lý</span>
                                        </td>
                                        <td>
                                            <div class="font-weight-600">279.000 VNĐ</div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- /Recent Bookings -->
                </div>
            </div>
        </div>

</body>

</html>