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
    <title>BOOKSTORE NLU | Bài viết</title>

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

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Bài viết</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>Bài viết</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Search...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Chuyên mục</h4>
                        <ul>
                            <li><a href="#">Tất cả</a></li>
                            <li><a href="#">Mới nhất (20)</a></li>
                            <li><a href="#">Bài viết mới (5)</a></li>
                            <li><a href="#">Xem nhiều nhất (9)</a></li>
                            <li><a href="#">Nỗi bật (10)</a></li>
                        </ul>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Bài viết mới nhất</h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../../img/blog/sidebar/diembungphatlacuonsachhaybannendoc.png" height="70px" width="70px">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Review sách Điểm bùng phát - cuốn sách giúp nâng tầm tư duy</h6>
                                    <span>16/12/2021</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../../img/blog/sidebar/cuonsach1001ytuongdotphatrongquangcaoduocvietboitacgialucdupont.png" height="70px" width="70px">

                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Review sách 1001 ý tưởng đột phá trong quảng cáo</h6>
                                    <span>20/12/2021</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../../img/blog/sidebar/reviewsachnguoibanhangvidainhatthegioi.png" height="70px" width="70px">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Review sách Người bán hàng vĩ đại nhất thế giới</h6>
                                    <span>22/12/2021</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--                        <div class="blog__sidebar__item">-->
                    <!--                            <h4>Search By</h4>-->
                    <!--                            <div class="blog__sidebar__item__tags">-->
                    <!--                                <a href="#">Apple</a>-->
                    <!--                                <a href="#">Beauty</a>-->
                    <!--                                <a href="#">Vegetables</a>-->
                    <!--                                <a href="#">Fruit</a>-->
                    <!--                                <a href="#">Healthy Food</a>-->
                    <!--                                <a href="#">Lifestyle</a>-->
                    <!--                            </div>-->
                    <!--                        </div>-->
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/nen-mua-sach-online-o-dau.png" height="160px">

                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 20/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">Nên mua sách online ở đâu uy tín và giá tốt nhất?</a></h5>
                                <p style="height: 160px;">Công nghệ ngày càng phát triển giúp việc mua sắm online dần thân thiện và tiện lợi hơn với người dùng. Nếu trước đây bạn phải đến cửa hàng sách để tìm hiểu và mua những đầu sách mới thì giờ đây bạn có thể mua online vô cùng tiện lợi.</p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/Why-Love-Is-a-Good-Drug-for-Mind-and-Body-ftr.png" height="160px">
                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 24/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">Radio Mọt Sách – Lén trộm nhìn nhau cơ mà nhớ nhau cả đời</a></h5>
                                <p style="height: 160px">Một ngày mới đã đến, bật nghe chiếc phone trên tai, nhấp ngay một ly cafe sữa… Một tuần mới của mọi người như thế nào rồi nhỉ, Louie thì đang tấp nập với công việc nhưng vẫn không quên viết vài dòng chia sẻ tâm sự cùng các bạn đã gửi thư cho Louie nè.</p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/radio-mọt-sách-compressed.png" height="160px">
                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 25/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">Radio Mọt Sách – Sách Là Người Bạn Đồng Hành Không Thể Thiếu</a></h5>
                                <p style="height: 160px">Chào các bạn lại là Louie đây, tuần vừa qua mình nhận được vài tin nhắn gửi về cho hòm thư cùng các câu chuyện khá là thú vị nè. Nếu các bạn đang muốn chia sẻ câu chuyện gì thì đừng ngần ngại mà gửi về góc chia sẻ Radio Mọt Sách ở here nha. </p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm<span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/radio-mọt-sách-compressed-1.png" height="160px">
                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 27/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">Góc tâm sự – Hộp thư chia sẻ cảm xúc cùng Radio Mọt Sách</a></h5>
                                <p style="height: 160px">Đôi khi trong cuộc sống khi ta gặp những khó khăn, muộn phiền, ta cần một người cho ta lời khuyên. Khi ta đang chuẩn bị dang tay đón lấy hạnh phúc, ta cần một người bên cạnh để chia sẻ niềm vui đó.  </p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/doc-sach.png" height="160px">
                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 27/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">Tập thói quen đọc sách hôm nay – Làm sao để đọc sách hiệu quả</a></h5>
                                <p style="height: 160px">Sách là một trong những kho tàng tri thức nhân loại vô giá mang đến cho chúng ta vô vàn kiến thức bổ ích. Hàng trăm tựa sách hay luôn được cập nhật hằng ngày tại Nhà sách Smart. </p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm<span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../img/blog/blog_sach-VH-1.png" height="160px">
                            </div>
                            <div class="blog__item__text" style="height: 365px;">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 28/12/2021</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5 style="height: 50px"><a href="#">TOP 5 Các Cuốn Văn Học Tiểu Thuyết Hay Nhất Nên Đọc</a></h5>
                                <p style="height: 160px">Đã từ lâu Văn học – Tiểu thuyết đã là môt trong  những cuốn sách bán chạy nhất được các đọc giả săn đón nhiều trong thời gian qua bởi tính nghệ thuật, giá trị, và tầm ảnh hưởng mà mỗi cuốn sách mang lại.</p>
                                <a style="height: 45px" href="#" class="blog__btn">Xem thêm<span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->
<%@include file="footer.jsp"%>

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