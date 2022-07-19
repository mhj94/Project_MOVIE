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
<title>관리자 페이지</title>
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

<!-- youtube popup -->


<!--For Plugins external css-->
<link rel="stylesheet" href="resources/assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/assets/css/responsive.css" />

<script
	src="resources/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<!-- 예고편 팝업창 -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/YouTubePopUp.css" />

</head>
<body>


	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg">
				<div class="container">
					<div class="row">
						<div class="nave_menu">
							<nav class="navbar navbar-default">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed"
											data-toggle="collapse"
											data-target="#bs-example-navbar-collapse-1"
											aria-expanded="false">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="#home"> <img
											src="resources/assets/images/logo.png" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1"></div>

								</div>
							</nav>
						</div>
					</div>

				</div>

			</div>
		</header>
		<!--End of header -->




		<!--home Section -->

		<section id="home" class="home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h2>영화는 역시 CGV</h2>
											<h1>반갑습니다</h1>
											<h1>CGV 입니다</h1>
											<div class="separator"></div>
											<div class="home_btn">

												<c:if test="${login.mId ne null}">
													<h3>${login.mId}님접속중</h3>
													<button onclick="location.href='movWriteForm'"
														class="btn btn-lg m_t_10">영화 등록</button>
													<button onclick="location.href='adMovList'"
														class="btn btn-lg m_t_10">등록된 영화 관리</button>
													<button onclick="location.href='mLogout'"
														class="btn btn-lg m_t_10">로그아웃</button>
												</c:if>
												<c:if test="${login.mId eq null }">
													<button onclick="location.href='mJoinForm'"
														class="btn btn-lg m_t_10">회원가입</button>
													<button onclick="location.href='mLoginForm'"
														class="btn btn-lg m_t_10">로그인</button>
												</c:if>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="scrooldown">
						<a href="#feature"><i class="fa fa-arrow-down"></i></a>
					</div>
				</div>
			</div>
		</section>
		<!--End of home section -->


		<!--feature section -->
		<!--End of feature Section -->



		<!-- History section -->
		<!--End of history -->


		<!-- service Section -->
		<!-- End of service Section -->




		<!-- START SCROLL TO TOP  -->

		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>

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


		<!-- <script type="text/javascript" src="resources/assets/js/vendor/jquery-1.12.1.min.js"></script> -->
		<script type="text/javascript"
			src="resources/assets/js/YouTubePopUp.jquery.js"></script>

		<script type="text/javascript">
			jQuery(function() {
				jQuery("a.bla-1").YouTubePopUp();
				jQuery("a.bla-2").YouTubePopUp({
					autoplay : 1
				});
			});
		</script>
</body>
</html>
