<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sửa nhà cung cấp</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">


    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <!-- Select CSS -->
    <link rel="stylesheet" href="assets/css/select2.min.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/admin.css">

</head>

<body>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Sửa nhà cung cấp</h3>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="service-list.html">Nhà cung cấp</a></li>
                    <li class="breadcrumb-item active">Sửa nhà cung cấp</li>
                </ul>
            </div>
            <!-- <div class="col-auto text-right">
                <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
                    <i class="fas fa-filter"></i>
                </a>
                <a href="add-category.html" class="btn btn-primary add-button ml-3">
                    <i class="fas fa-plus"></i>
                </a>
            </div> -->
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
                                <option>Văn Học</option>
                                <option>Kinh Tế</option>
                                <option>Khoa Học</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                            <label>Từ Ngày</label>
                            <div class="cal-icon">
                                <input class="form-control datetimepicker" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                            <label>Đến Ngày</label>
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
                            <!-- Form -->
                            <form action="categories.html">


                                <div class="form-group">
                                    <label>ID</label>
                                    <input class="form-control" type="text" value="1">
                                </div>
                                <div class="form-group">
                                    <label>Tên</label>
                                    <input class="form-control" type="text"
                                           value="Công Ty Tnhh Văn Hóa Và Truyền Thông 1980 Books">
                                </div>
                                <!-- <div class="form-group">
                                    <label>Ảnh</label>
                                    <input class="form-control" type="file">
                                </div>
                                <div class="form-group">
                                    <div class="avatar">
                                        <img class="avatar-img rounded" alt="" src="assets/img/categories/cay-de-ban.jpg">
                                    </div>
                                </div> -->
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <input class="form-control" type="text"
                                           value="Phường Linh Trung, Thủ Đức, Ho Chi Minh City">
                                </div>
                                <!-- <div class="form-group">
                                    <label>Danh mục</label><br>
                                    <select class="form-control select">
                                        <option>Chọn Danh Mục</option>
                                        <option  selected>Thiếu Nhi</option>
                                        <option>Văn Học</option>
                                        <option>Kinh Tế</option>
                                        <option>Khoa Học</option>
                                    </select>
                                </div> -->
                                <!-- <div class="form-group">
                                    <label>Giá</label>
                                    <input class="form-control" type="text" value="50.000 VNĐ">
                                </div> -->
                                <div class="mt-4">
                                    <button class="btn btn-primary" type="submit">Lưu thay đổi</button>
                                    <a href="categories.html" class="btn btn-link">Hủy</a>
                                </div>
                            </form>
                            <!-- /Form -->
                            <!-- Thêm vào nội dung ở đây -->
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
