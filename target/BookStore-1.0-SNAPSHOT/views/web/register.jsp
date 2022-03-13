<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Đăng ký</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>
<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh mục</span>
                    </div>
                    <ul>
                        <li><a href="#">Văn Học</a></li>
                        <li><a href="#">Kinh Tế</a></li>
                        <li><a href="#">Tâm Lý</a></li>
                        <li><a href="#">Kĩ Năng Sống</a></li>
                        <li><a href="#">Nuôi dạy con</a></li>
                        <li><a href="#">Sách Thiếu Nhi</a></li>
                        <li><a href="#">Tiểu Sử</a></li>
                        <li><a href="#">Giáo Dục</a></li>
                        <li><a href="#">Ngoại Ngữ</a></li>
                        <li><a href="#">Tham Khảo</a></li>
                        <li><a href="#">Khác</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <!-- <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div> -->
                            <input type="text" placeholder="Tìm kiếm sách mong muốn....">
                            <button type="submit" class="site-btn">TÌM</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+841234567</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<div class="register-center">
    <div class="container">
        <div class="title">Đăng Ký</div>
        <div class="content">
            <form id="registry" action="<c:url value="/dang-ky"/> " method="POST">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Họ Và Tên</span>
                        <input type="text" name="fullname" id="fullname" placeholder="Tên của bạn" required
                               value="<%=request.getAttribute("fullname")==null?"":request.getAttribute("fullname")%>"/>
<%--                        <input type="text" placeholder="Tên của bạn" required>--%>
                    </div>
                    <div class="input-box">
                        <span class="details">Tên Tài Khoản</span>
                        <input type="text" name="username" id="username" placeholder="Nhập tên tài khoản" required
                               value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>
<%--                        <input type="text" placeholder="Nhập tên tài khoản" required>--%>
                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <input type="email" name="email" id="email" placeholder="Email của bạn" required
                               value="<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>">
<%--                        <input type="text" placeholder="Email của bạn" required>--%>
                    </div>
                    <div class="input-box">
                        <span for="phone" class="details">Số điện thoại</span>
                        <input name="phone" type="text" placeholder="Nhập số điện thoại" required>
                        <label>
                            <%= request.getAttribute("phone") == null? "": request.getAttribute("phone") %>

                        </label>
                    </div>
                    <div class="input-box">
                        <span class="details">Mật khẩu</span>
                        <input type="password" name="password" id="password" placeholder="Nhập mật khẩu" required
                               value="<%=request.getAttribute("password")==null?"":request.getAttribute("password")%>">>
<%--                        <input type="text" placeholder="Nhập mật khẩu" required>--%>
                    </div>
                    <div class="input-box">
                        <span class="details">Nhập lại mật khẩu</span>
                        <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Nhập lại mật khẩu" required>
<%--                        <input type="text" placeholder="Nhập lại mật khẩu" required>--%>
                    </div>
                </div>
                <div style="display: flex">
                <div class="group-input" style="width: 50%">
                    <label for="gender">Giới tính *</label>
                    <select id="gender" name = "gender">
                        <option value ="">--Chọn giới tính--</option>
                        <option value = "male">Nam</option>
                        <option value = "female">Nữ</option>
                        <option value = "other">Khác</option>
                    </select>
                    <label style="color: #F00" class="error" for="gender"></label>
                </div>
                <div class="group-input" style="margin-left: 20px">
                    <label for="address" style="margin-right: 12px">Địa chỉ *</label>
                    <input type="text" name="address" id="address" style="width: 230px"
                           value="<%=request.getAttribute("address")==null?"":request.getAttribute("address")%>">
                    <label style="color: #F00" class="error" for="address"></label>
                </div></div>
                <div class="button">
                    <input type="submit" value="Đăng Ký">
                </div>
            </form>
        </div>
    </div>

</div>
</body>

</html>