
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Thêm admin</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
    <!-- Bootstrap CSS -->


</head>

<body>
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xl-8 offset-xl-2">

                    <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col">
                            <h3 class="page-title">Thêm admin</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="admin-list.html">Danh sách admin</a></li>
                                <li class="breadcrumb-item active">Thêm admin</li>
                            </ul>
                        </div>
                    </div>
                </div>
                    <!-- /Page Header -->

                <div class="card">
                    <div class="card-body">
                            <!-- Form -->
                        <form action="admin-list.html">
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">ID</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Tên</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Email</label>
                                <div class="col-md-10">
                                    <input type="email" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Số điện thoại</label>
                                <div class="col-md-10">
                                    <input type="number" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Hình ảnh</label>
                                <div class="col-md-10">
                                    <input class="form-control" type="file">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Quyền hạn</label>
                                <div class="col-md-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Tất cả
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Quản lí danh mục
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Blog
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Sản phẩm
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Quản lí đơn hàng
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="checkbox"> Quản lí khách hàng
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-4">
                                <button class="btn btn-primary" type="submit">Thêm</button>
                                <a href="add-admin.html" class="btn btn-link">Hủy</a>
                            </div>
                        </form>
                            <!-- /Form -->

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
