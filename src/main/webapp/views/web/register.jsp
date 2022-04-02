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
<div class="register-center">
    <div class="container">
        <div class="title">Đăng Ký</div>
        <div class="content">
            <form action="register" method="POST">
                <div class="user-details">
                    <div class="input-box">
                        <span for="fullname" class="details" >Họ Và Tên</span>
                        <input name="fullname" type="text" value="<%= request.getAttribute("fullname")==null?"":request.getAttribute("fullname") %>" required>
                    </div>
                    <div class="input-box">
                        <span for="username" class="details">Tên Tài Khoản</span>
                        <input name="username" type="text" placeholder="Nhập tên tài khoản" required>
                        <label>
                            <%= request.getAttribute("uname-err") == null? "": request.getAttribute("uname-err") %>
                        </label>
                    </div>
                    <div class="input-box">
                        <span for="email" class="details">Email</span>
                        <input name="email" type="text" placeholder="Email của bạn" required>
                        <%= request.getAttribute("email") == null? "": request.getAttribute("email") %>
                        </label>
                    </div>
                    <div class="input-box">
                        <span for="phone" class="details">Số điện thoại</span>
                        <input name="phone" type="text" placeholder="Nhập số điện thoại" required>
                        <label>
                            <%= request.getAttribute("phone") == null? "": request.getAttribute("phone") %>

                        </label>
                    </div>
                    <div class="input-box">
                        <span for="password" class="details">Mật khẩu</span>
                        <input name="password" type="password" placeholder="Nhập mật khẩu" required>
                    </div>
                    <div class="input-box">
                        <span for="confirmPassword" class="details">Nhập lại mật khẩu</span>
                        <input name="confirmPassword" type="password" placeholder="Nhập lại mật khẩu" required>
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