<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Sửa blog</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">



	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">


	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/admin.css">
	<script src="assets/js/tinymce/tinymce.min.js"></script>
    <script src="assets/js/tinymce.js"></script>

</head>

<body>
	<div class="main-wrapper">
		<%@include file="header.jsp"%>
		<%@include file="sidebar.jsp"%>
        
        <div class="page-wrapper">
			<div class="content container-fluid">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Sửa blog</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="blog.jsp">Blog</a></li>
								<li class="breadcrumb-item active">Sửa blog</li>
							</ul>
						</div>
						<!-- <div class="col-auto text-right">
							<a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
								<i class="fas fa-filter"></i>
							</a>
							<a href="add-category.html" class="btn btn-primary add-button ml-3">
								<i class="fas fa-plus"></i>
							</a>
						</div> -->
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
									<!-- <table class="table table-hover table-center mb-0 datatable"> -->
                                        <!-- Thay đổi code ở đây Thay đổi theo file word -->
                                        <!-- Form -->
								<form action="categories.jsp">
									
									<div class="form-group">
										<label>Ảnh</label>
										<input class="form-control" type="file">
									</div>
									<div class="form-group">
										<div class="avatar">
											<img class="avatar-img rounded" alt="" src="assets/img/categories/tu-huyet-cam-xuc.jpg">
										</div>
                                    </div>
                                    <div class="form-group">
										<label>Title</label>
										<input class="form-control" type="text" value="Sen đá mini kèm chậu">
                                    </div>
                                    <div class="form-group">
										<label>Tóm tắt</label>
                                        <textarea style="height: 100px;" class="form-control" type="text">Mỗi năm mình đều tự nhủ sẽ cố gắng đọc 1 tác phẩm của Dan Brown, và năm nay là cuốn “Biểu tượng thất truyền”.</textarea>
									</div>
									<div>
										<label>Mô tả dài</label>
                                        <textarea name="" id="textExample" cols="30" rows="10">
											<p>“Biểu tượng thất truyền” có cùng mô típ với các cuốn khác của Dan Brown,
												và lại là sự xuất hiện của nhân vật quen thuộc với chúng ta – Robert Langdon. Lần này,
												 ông bị cuốn vào một cuộc hành trình mới, đi tìm nơi cất giữ những bí ẩn cổ xưa.
												  Dù là truyền thuyết, xong có người vẫn tin rằng có một nơi tại Washington,
												   D.C đang chôn giấu kho tàng tri thức khổng lồ mà người xưa để lại,
												    thứ mà nếu tìm được sẽ đem đến sức mạnh khủng khiếp và làm thay đổi cả thế giới. 
													Đặc biệt, các thành viên bậc cao nhất trong Hội Tam Điểm biết rất rõ về nơi này nhưng luôn cố che giấu và giữ nó trong bí mật. Một kẻ điên cuồng muốn tìm ra kho báu tri thức này đã vạch kế hoạch lừa Robert Langdon từ Cambridge đến Washington để giúp hắn giải mã các biểu tượng, 
													tìm kim tự tháp Tam Điểm và bản đồ chỉ dẫn đến nơi cất giữ bí ẩn cổ xưa.
													 Tuy nhiên không chỉ đơn giản có thế, người bạn thân thiết với Robert Langdon – Peter Solomon – Tổng thư ký Viện Smithsonian đang bị kẻ điên kia bắt giữ làm con tin,
													  và Langdon buộc phải cho hắn ta câu trả lời trong vỏn vẹn 1 ngày. 
													  Mọi việc càng trở nên rắc rối hơn khi CIA vào cuộc và Robert Langdon bị họ cản trở,
													   truy đuổi bởi việc này có hệ lụy tới an ninh quốc gia.
													    Robert Langdon cùng Katherine Solomon (em gái của Peter Solomon) và sự giúp đỡ của một vài người khác là thành viên của Hội Tam Điểm đã dần dần giải mã các ký tự,
														 biểu tượng, địa điểm chỉ dẫn và những bí mật cũng từ từ được hé mở.</p>
										</textarea>
                                    </div>
									<div class="mt-4">
										<button class="btn btn-primary" type="submit">Lưu thay đổi</button>
										<a href="categories.jsp" class="btn btn-link">Hủy</a>
									</div>
								</form>
								<!-- /Form -->
                                        <!-- Thêm vào nội dung ở đây -->
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery -->
	<script src="assets/js/jquery-3.5.0.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>




	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>
	