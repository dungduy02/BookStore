<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Thay đổi mật khẩu</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/style.css" type="text/css">
    <link rel="stylesheet" href="../../css/style-page.css">

</head>
<body>
   <%@include file="header.jsp"%>

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
           <div class="title">Thay đổi mật khẩu</div>
           <div id="changPass">

               <form action="/resetPass" method="post" class="formPass">
                   <div class="flex" style="display: flex;">
                       <div>
                           <div class="textPass"><label>Mật khẩu cũ</label></div>
                           <div class="textPass"><label>Mật khẩu mới</label></div>
                           <div class="textPass"><label>Nhắc lại mật khẩu mới</label></div>
                       </div>
                       <div>
                           <div class="textPass"><input type="password" name="oldPass"></div>
                           <div class="textPass"><input type="password" name="newPass"></div>
                           <div class="textPass"><input type="password" name="reenterPass"></div>
                       </div>
                   </div>
                   <button type="submit" value="reset" class="submit btn">Thay đổi</button>
                   <!--                    <button type="submit" value="reset" class="submit">Thay đổi</button>-->
               </form>
           </div>
       </div>

   </div>

   <!-- Footer Section Begin -->
    <%@include file="footer.jsp"%>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/jquery.nice-select.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.slicknav.js"></script>
    <script src="../../js/mixitup.min.js"></script>
    <script src="../../js/owl.carousel.min.js"></script>
    <script src="../../js/main.js"></script>

</body>
</html>