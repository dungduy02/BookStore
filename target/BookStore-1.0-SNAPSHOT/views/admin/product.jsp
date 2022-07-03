<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


</head>

<body>
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
                <a href="add-product" class="btn btn-primary add-button ml-3">
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
                            <c:forEach items="${listAll}" var="x">
                            <tr>
                                <td>${x.id}</td>
                                <td>
                                    <img class="rounded service-img mr-1" src="${x.img}"
                                         alt="Hình ảnh danh mục"></td>
                                <td>${x.name}</td>
                                <td>${x.categoryid}</td>
                                <td>${x.price}</td>
                                <td>${x.quantity}</td>
                                <td>${x.publisherid}</td>
                                <td>${x.authorid}</td>
                                <td class="text-right">
                                    <a href="update?sid=${x.id}" class="btn btn-sm bg-success-light mr-2"> <i
                                            class="far fa-edit mr-1"></i> Sửa</a>
                                    <a href="#" type="button" onclick="showMess(${x.id})" class="btn btn-outline-danger btn-sm"><i
                                            class="fa fa-trash-o"></i> Xóa
                                    </a>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    function showMess(id){
        var option = confirm("Bạn chắc chắn muốn xóa");
        if(option === true){
            window.location.href = 'delete?sid='+id;
        }
    }
</script>
</html>

