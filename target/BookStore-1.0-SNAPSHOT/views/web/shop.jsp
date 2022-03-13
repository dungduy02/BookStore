<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>

    <title>BOOKSTORE NLU | Sản phẩm</title>
    <link href="<c:url value='/template/web/css/style-price.css' />" rel="stylesheet" type="text/css" media="all">
</head>
<style>

</style>
<body>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Sản phẩm</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>Sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Nhóm Sản Phẩm</h4>
                        <ul>
                            <c:forEach items="${listC}" var="ca">
                                <li><a href="category?cid=${ca.id}">${ca.name}</a></li>
                            </c:forEach>


                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="wrapper">
                            <div class="container">

                                <div class="slider-wrapper">
                                    <div id="slider-range"></div>

                                    <div class="range-wrapper">
                                        <div class="range"></div>

                                        <div class="gear-wrapper">
                                            <div class="gear-large gear-one">
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                            </div>
                                            <div class="gear-large gear-two">
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                                <div class="gear-tooth"></div>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Nhà Cung Cấp</h4>

                        <ul>
                            <c:forEach items="${listPu}" var="pu">
                            <li ><a href="publisher?pid=${pu.id}"> ${pu.publishername}</a></li>

                            </c:forEach>
                        </ul>


                    </div>

                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản Phẩm Mới Nhất</h4>
                            <div class="last">



                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="${lastP.img}" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>${lastP.name}</h6>
                                            <span>${lastP.price} VND</span>
                                        </div>
                                    </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">

                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp xếp</span>
                                <select>
                                    <option value="0">Mới Nhất</option>
                                    <option value="0">Giá Cả</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>12</span> Sản phẩm đã được tìm thấy</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <c:forEach items="${list}" var="p">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${p.img}">
                                <img src="${p.img}" alt="" style="cursor: pointer">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="add-to-cart?id=${p.id}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="DetailsController?pid=${p.id}">${p.name}</a></h6>
                                <h5>${p.price} VND</h5>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>



            </div>
                <div class="product__pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
        </div>
    </div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
    $(function() {

        // Initiate Slider
        $('#slider-range').slider({
            range: true,
            min: 10000,
            max: 110000,
            step: 100,
            values: [45000, 75000]
        });

        // Move the range wrapper into the generated divs
        $('.ui-slider-range').append($('.range-wrapper'));

        // Apply initial values to the range container
        $('.range').html('<span class="range-value"><sup>Đ</sup>' + $('#slider-range').slider("values", 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>Đ</sup>' + $("#slider-range").slider("values", 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

        // Show the gears on press of the handles
        $('.ui-slider-handle, .ui-slider-range').on('mousedown', function() {
            $('.gear-large').addClass('active');
        });

        // Hide the gears when the mouse is released
        // Done on document just incase the user hovers off of the handle
        $(document).on('mouseup', function() {
            if ($('.gear-large').hasClass('active')) {
                $('.gear-large').removeClass('active');
            }
        });

        // Rotate the gears
        var gearOneAngle = 0,
            gearTwoAngle = 0,
            rangeWidth = $('.ui-slider-range').css('width');

        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
        $('.gear-two').css('transform', 'rotate(' + gearTwoAngle + 'deg)');

        $('#slider-range').slider({
            slide: function(event, ui) {

                // Update the range container values upon sliding

                $('.range').html('<span class="range-value"><sup>$</sup>' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>Đ</sup>' + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

                // Get old value
                var previousVal = parseInt($(this).data('value'));

                // Save new value
                $(this).data({
                    'value': parseInt(ui.value)
                });

                // Figure out which handle is being used
                if (ui.values[0] == ui.value) {

                    // Left handle
                    if (previousVal > parseInt(ui.value)) {
                        // value decreased
                        gearOneAngle -= 7;
                        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    } else {
                        // value increased
                        gearOneAngle += 7;
                        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    }

                } else {

                    // Right handle
                    if (previousVal > parseInt(ui.value)) {
                        // value decreased
                        gearOneAngle -= 7;
                        $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    } else {
                        // value increased
                        gearOneAngle += 7;
                        $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    }

                }

                if (ui.values[1] === 110000) {
                    if (!$('.range-alert').hasClass('active')) {
                        $('.range-alert').addClass('active');
                    }
                } else {
                    if ($('.range-alert').hasClass('active')) {
                        $('.range-alert').removeClass('active');
                    }
                }
            }
        });

        // Prevent the range container from moving the slider
        $('.range, .range-alert').on('mousedown', function(event) {
            event.stopPropagation();
        });

    });
</script>
<!-- Product Section End -->
</body>
</html>
