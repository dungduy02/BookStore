<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
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

            <form id="registry" action="<c:url value="/dang-ky"/> " method="POST" name="myForm" onsubmit="validateForm()">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Họ Và Tên</span>
                        <input type="text" name="fullname" id="fullname" placeholder="Tên của bạn" required
                               value="<%=request.getAttribute("fullname")==null?"":request.getAttribute("fullname")%>"/>
                            <label id="errFullname" style="color: red">
                            </label>
                    </div>
                    <div class="input-box">
                        <span class="details">Tên Tài Khoản</span>
                        <input type="text" name="username" id="username" placeholder="Nhập tên tài khoản" required
                               value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>
                        <label id="errUsername" style="color: red">      <%=request.getAttribute("uname-err") == null ? ""
                                : request.getAttribute("uname-err")%> </label>
                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <input type="email" name="email" id="email" placeholder="Email của bạn" required
                               value="<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>">
                        <label id="errEmail" style="color: red"><%=request.getAttribute("email-err") == null ? ""
                                : request.getAttribute("email-err")%>  </label>

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
                               value="<%=request.getAttribute("password")==null?"":request.getAttribute("password")%>">
                        <label id="errPassword" style="color: red"> </label>
                    </div>
                    <div class="input-box">
                        <span class="details">Nhập lại mật khẩu</span>
                        <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Nhập lại mật khẩu" required>

                        <label id="errConfirm" style="color: red"> </label>
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
                    <input type="text" name="address" id="address" style="width: 230px">
<%--                           value="<%=request.getAttribute("address")==null?"":request.getAttribute("address")%>">--%>
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