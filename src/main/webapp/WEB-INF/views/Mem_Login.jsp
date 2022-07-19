<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>회원가입 페이지</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="stylesheet" href="resources/assets/css/iconfont.css">
<link rel="stylesheet" href="resources/assets/css/slick/slick.css">
<link rel="stylesheet" href="resources/assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="resources/assets/css/stylesheet.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
	<!--        <link rel="stylesheet" href="resources/assets/css/bootstrap-theme.min.css">-->


	<!--For Plugins external css-->
<link rel="stylesheet" href="resources/assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/assets/css/style.css">

	<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/assets/css/responsive.css" />

<!--  btn_group -->
<style>
#btn_group button {
	text-align: center;
	color: #fff;
	letter-spacing: 1px;
	margin: auto;
	font-size: 0.8125rem;
	border-radius: 0px;
	margin-top: 20px;
	transition: .5s;
	border: 1px solid #e74c3c;
	font-family: 'open_sansbold';
	padding: 0.8rem 3rem;
	transition: all 0.6s;
	border-radius: 2px;
	background: #e74c3c;
	width: 40%;
	display: block;
}

#login {
	align: center;
}
</style>

<script
	src="resources/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<section id="contact" class="contact">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="contact_contant sections">
						<div class="head_title text-center">
							<h2>로그인</h2>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->
						
						<div class="row">
							<div class="col-sm-6">
								<div class="main_contact_info">
									<div class="row">
										<div
											class="contact_info_content padding-top-90 padding-bottom-60 p_l_r">
											
											<img src="resources/fileUpload/cgv3.png"/>
											
										</div>
									</div>
								</div>
							</div>


						<div class="col-sm-6" id="login">
							<div class="single_contant_left padding-top-90 padding-bottom-60">
								<form action="mLogin" method="POST">
									<div
										class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">

										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="text" class="form-control" name="mId" id="mId"
														placeholder="아이디">
												</div>
											</div>
										</div>


										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="password" class="form-control" name="mPw"
														id="mPw" placeholder="비밀번호">
												</div>
											</div>

											<div id="btn_group" style="">
												<button type="submit" id="btn2">로그인</button>
											</div>
										</div>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<script src="resources/assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/assets/js/vendor/bootstrap.min.js"></script>

	<script src="resources/assets/js/jquery.magnific-popup.js"></script>
	<script src="resources/assets/js/jquery.mixitup.min.js"></script>
	<script src="resources/assets/js/jquery.easing.1.3.js"></script>
	<script src="resources/assets/js/jquery.masonry.min.js"></script>

	<!--slick slide js -->
	<script src="resources/assets/css/slick/slick.js"></script>
	<script src="resources/assets/css/slick/slick.min.js"></script>

	<script src="resources/assets/js/plugins.js"></script>
	<script src="resources/assets/js/main.js"></script>
</body>

</html>