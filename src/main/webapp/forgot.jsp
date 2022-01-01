<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Quên mật khẩu</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/style-page.css" type="text/css">
</head>

<body>
   <%@include file="header.jsp"%>
    <!-- Header Section End -->

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
           <div class="title">Quên mật khẩu</div>
           <div class="bg-white text-center p-5 mt-3 center">
               <p>Bạn vui lòng nhập lại tên đăng nhập hoặc Email để lấy lại mật khẩu nhé!</p>
               <form class="pb-3" action="EmailSendingServlet" method="post">
                   <div class="form-group" style="margin: 20px 80px;">
                       <input style="padding: 10px;" name="recipient" class="form-control" placeholder="Tên đăng nhập hoặc email*" required style="width: 50%; ">
                   </div>
                   <input type="submit" value="Đặt lại mật khẩu" class="submit" style="background-color:  #3bb734; width: 172px; font-size: 20px; border-radius: 5px; color: white; outline: 0px;"/>
               </form>

           </div>
       </div>

   </div>
    <!-- Footer Section Begin -->
    <%@include file="footer.jsp"%>>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>