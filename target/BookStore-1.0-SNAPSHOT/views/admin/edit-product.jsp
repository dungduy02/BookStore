
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sửa sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Sửa sản phẩm</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="product.html">Sản phẩm</a></li>
                            <li class="breadcrumb-item active">Sửa sản phẩm</li>
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
<%--            <div class="card filter-card" id="filter_inputs">--%>
<%--                <div class="card-body pb-0">--%>
<%--                    <form action="update" method="post">--%>
<%--                        <div class="row filter-row">--%>

<%--                            <!-- thay đổi ở đây ************************ -->--%>
<%--                            <div class="col-sm-6 col-md-3">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Mã sản phẩm</label>--%>
<%--                                    <input class="form-control" type="text" value="${pr.id}" readonly name="id">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-6 col-md-3">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Tên sản phẩm</label>--%>
<%--                                    <input class="form-control" type="text" value="${pr.name}" name="name">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <!-- Thay đổi theo danh sách đề mục -->--%>
<%--                            <div class="col-sm-6 col-md-3">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label >Category</label>--%>
<%--                                    <select class="form-control select">--%>
<%--                                        <option value="${pr.categoryid}" name="category">Chọn Danh Mục</option>--%>
<%--                                        <option>Văn Học</option>--%>
<%--                                        <option>Kinh Tế</option>--%>
<%--                                        <option>Khoa Học</option>--%>

<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="col-sm-6 col-md-3">--%>
<%--                                <div class="form-group">--%>
<%--                                    <button class="btn btn-primary btn-block" type="submit">Chọn</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- /Search Filter -->

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <!-- <table class="table table-hover table-center mb-0 datatable"> -->
                                <!-- Thay đổi code ở đây Thay đổi theo file word -->
                                <!-- Form -->
                                <form action="update?sid=" method="post">
                                    <div class="form-group">
                                        <label>Mã sản phẩm</label>
                                        <input class="form-control" type="text" value="${pr.id}" readonly name="id">
                                  </div>
                                    <div class="form-group">
                                        <label>Ảnh</label>
                                        <input class="form-control" type="file" value="${pr.img}" name="img">
                                    </div>
                                    <div class="form-group">
                                        <div class="avatar">
                                            <img class="avatar-img rounded" alt="" src="${pr.img}" name="img">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Tên sản phẩm</label>
                                        <input class="form-control" type="text" value="${pr.name}" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label>Danh mục</label>
                                        <input class="form-control" type="text" value="${pr.categoryid}" name="category">
                                    </div>
                                    <div class="form-group">
                                        <label>Giá </label>
                                        <input class="form-control" type="text" value="${pr.price}" name="price">
                                    </div>
                                    <!-- <div class="status-toggle">
                                        <label>Có khuyến mãi không</label>
                                        <input id="rating_1" class="check" type="checkbox" checked>
                                        <label for="rating_1" class="checktoggle">checkbox</label>
                                    </div> -->
                                    <div class="form-group">
                                        <label>Số lượng</label>
                                        <input class="form-control" type="text" value="${pr.quantity}" name="quantity">
                                    </div>
                                    <!-- <div class="form-group">
										<label>Loại</label><br>
										<select class="form-control select">
											<option>Chọn Danh Mục</option>
											<option>Lớn</option>
											<option>Trung Bình</option>
											<option>Nhỏ</option>
										</select>
                                    </div>
                                    <div class="form-group">
										<label>Thời gian bảo hành</label>
										<input class="form-control" type="text" value="06 tháng">
                                    </div>
                                    <div class="status-toggle">
                                        <label>Hiển thị</label>
                                        <input id="rating_2" class="check" type="checkbox" checked>
                                        <label for="rating_2" class="checktoggle">checkbox</label>
                                    </div> -->
                                    <div class="form-group">
                                        <label>Mô tả ngắn</label>
                                        <textarea style="height: 100px;" class="form-control" type="text" name="description">${pr.description}</textarea>
                                    </div>
                                    <div>
                                        <label>Mô tả dài</label>
                                        <textarea name="" id="textExample" cols="30" rows="10">
											<p></p>
										</textarea>
                                    </div>
                                    <!-- <div class="status-toggle">
                                        <label>Hiển thị ở mục nổi bật</label>
                                        <input id="rating_3" class="check" type="checkbox" checked>
                                        <label for="rating_3" class="checktoggle">checkbox</label>
                                    </div>
                                    <div class="status-toggle">
                                        <label>Hiển thị mới nhất</label>
                                        <input id="rating_4" class="check" type="checkbox" checked>
                                        <label for="rating_4" class="checktoggle">checkbox</label>
                                    </div>
                                    <div class="form-group">
										<label>ID Admin</label>
										<input class="form-control" type="text" value="admin" disabled>
                                    </div> -->
                                    <!-- <div class="form-group">
										<label>Ngày tạo</label>
										<input class="form-control" type="text" value="10/10/2020" disabled>
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
