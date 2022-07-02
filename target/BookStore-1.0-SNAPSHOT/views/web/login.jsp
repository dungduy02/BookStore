<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 3/11/2022
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Đăng Nhập</title>
</head>
<body>
<div class="moda fad" id="myModa" tabindex="-" role="dialo" aria-labelledby="myModalLabe">
  <div class="modal-dialog" role="document">
    <form id="login" action="<c:url value="/Dang-nhap"/> " method="POST">
      <div class="modal-content clearfix">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <div class="modal-body">
          <h3 class="title"> Đăng nhập </h3>
          <p class="description"></p>
          <div class="form-group">
            <span class="input-icon"><i class="fa fa-user"></i></span>
            <%--                        <input type="text" class="form-control" placeholder="Tên tài khoản" name="username">--%>
            <input type="text" name="username" id="username" class="form-control" placeholder="Tên tài khoản"
                   value="<%= request.getAttribute("username") == null
                                   ? "" : request.getAttribute("username") %>">
            <label style="color:#F00;" for="username" class="error" id="">
              <%=request.getAttribute("uname-err") == null ? ""
                      : request.getAttribute("uname-err")%>
            </label>
          </div>
          <div class="form-group">
            <span class="input-icon"><i class="fa fa-key"></i></span>
            <%--                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password">--%>
            <input type="password" class="form-control" placeholder="Mật khẩu" name="password" id="password">
            <label style="color:#F00;" for="password" class="error">
                <%=request.getAttribute("pwd-err") == null ? ""
                    : request.getAttribute("pwd-err")%>
          </div>
          <div class="form-group checkbox">
            <input type="checkbox">
            <label>Lưu</label>
          </div>
          <a href="forgot" class="forgot-pass">Quên mật khẩu?</a>
          <button class="btn" type="submit">Đăng nhập</button>
        </div>
      </div></form>
  </div>
</div>

</body>
</html>
