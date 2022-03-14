
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Danh mục</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Danh mục</h3>
                    </div>
                    <div class="col-auto text-right">
                        <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
                            <i class="fas fa-filter"></i>
                        </a>
                        <a href="add-category.html" class="btn btn-primary add-button ml-3">
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
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control select">
                                        <option>Chọn Danh mục</option>
                                        <option>Chính trị</option>
                                        <option>Văn Hóa</option>
                                        <option>Khoa học </option>
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
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Danh mục</th>
                                        <th>Ngày</th>
                                        <th>Số Lượng</th>
                                        <!-- <th>Hiển Thị</th> -->
                                        <th class="text-right">Hành Động</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Văn Học</td>
                                        <td>03 Tháng Mười Hai 2021</td>
                                        <td>24</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_1" class="check" type="checkbox" checked>
                                                <label for="category_1" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
                                            <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            Tâm Lý</td>
                                        <td>10 Tháng Chín 2020</td>
                                        <td>30</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_2" class="check" type="checkbox" checked>
                                                <label for="category_2" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
                                            <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>
                                            Tiểu thuyết</td>
                                        <td>04 Tháng Mười Hai 2021</td>
                                        <td>28</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_3" class="check" type="checkbox" checked>
                                                <label for="category_3" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
                                            <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>
                                            Nghệ thuật</td>
                                        <td>05 Tháng Mười Hai 2021</td>
                                        <td>34</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_4" class="check" type="checkbox" checked>
                                                <label for="category_4" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
                                            <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>
                                            Lịch Sử</td>
                                        <td>06 Tháng Mười Hai 2021</td>
                                        <td>29</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_5" class="check" type="checkbox" checked>
                                                <label for="category_5" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
                                            <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i> Xóa</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>
                                            Kinh tế</td>
                                        <td>07 Tháng Mười Hai 2021</td>
                                        <td>48</td>
                                        <!-- <td>
                                            <div class="status-toggle">
                                                <input id="category_6" class="check" type="checkbox" checked>
                                                <label for="category_6" class="checktoggle">checkbox</label>
                                            </div>
                                        </td> -->
                                        <td class="text-right">
                                            <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2">	<i class="far fa-edit mr-1"></i> Sửa</a>
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

</body>

</html>