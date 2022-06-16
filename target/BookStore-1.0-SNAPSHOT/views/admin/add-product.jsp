
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Thêm sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
    <!-- Bootstrap CSS -->

    <!-- Select CSS -->
    <link rel="stylesheet" href="assets/css/select2.min.css">

    <script src="assets/js/tinymce/tinymce.min.js"></script>
    <script src="assets/js/tinymce.js"></script>

</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Thêm sản phẩm</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="product.html">Sản phẩm</a></li>
                            <li class="breadcrumb-item active">Thêm sản phẩm</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="add-product" method="post">

                                <div class="form-group">
                                    <label>Ảnh</label>
                                    <input class="form-control" type="file" name="img">
                                </div>
                                <div class="form-group">
                                    <div class="avatar">
                                        <img class="avatar-img rounded" alt="" src="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Tên sản phẩm</label>
                                    <input class="form-control" type="text" value="" name="name">
                                </div>
                                <div class="form-group">
                                    <label>Danh mục</label>
                                    <input class="form-control" type="text" value="" name="category">
                                </div>
                                <div class="form-group">
                                    <label>Giá khuyến mãi</label>
                                    <input class="form-control" type="text" value="" name="price">
                                </div>
                                <div class="form-group">
                                    <label>Nhà cung cấp</label>
                                    <input class="form-control" type="text" value="" name="published">
                                </div>
                                <div class="form-group">
                                    <label>Nhà xuất bản</label>
                                    <input class="form-control" type="text" value="" name="author">
                                </div>
                                <div class="form-group">
                                    <label>Số lượng</label>
                                    <input class="form-control" type="text" value="" name="quantity">
                                </div>
                                <!-- <div class="status-toggle">
                                    <label>Có khuyến mãi không ?</label>
                                    <input id="rating_1" class="check" type="checkbox" checked>
                                    <label for="rating_1" class="checktoggle">checkbox</label>
                                </div> -->
                                <div class="form-group">
                                    <label>Mô tả ngắn</label>
                                    <textarea style="height: 100px;" class="form-control" type="text" name="description"></textarea>
                                </div>
                                <div>
                                    <label>Mô tả dài</label>
                                    <textarea name="" id="textExample" cols="30" rows="10"></textarea>
                                </div>
                                <div class="status-toggle">
                                    <label>Hiển thị ở mục nổi bật</label>
                                    <input id="rating_3" class="check" type="checkbox" checked>
                                    <label for="rating_3" class="checktoggle">checkbox</label>
                                </div>
                                <div class="status-toggle">
                                    <label>Hiển thị mới nhất</label>
                                    <input id="rating_4" class="check" type="checkbox" checked>
                                    <label for="rating_4" class="checktoggle">checkbox</label>
                                </div>
                                <div class="mt-4">
                                    <button class="btn btn-primary" type="submit">Lưu thay đổi</button>
                                    <a href="categories.html" class="btn btn-link">Hủy</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- Select2 JS -->
<script src="assets/js/select2.min.js"></script>



</body>

</html>
