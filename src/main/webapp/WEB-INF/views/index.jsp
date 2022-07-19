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
<title>홈페이지</title>
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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">

<style>
p.a {font-family: 'Gugi', cursive; text-align: center; font-size: 60px}


</style>
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
											src="" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->

									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">HOME</a></li>
											<li><a href="#portfolio">현재 상영작</a></li>
										</ul>

									</div>

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
											<h2>영화는 역시 CGV</h2><br/><br/><br/><br/>
											<p class="a">CGV<br/><br/><br/><br/>with 낌쭌쓰</p><br/>
											<div class="separator"></div>
											<div class="home_btn">
												<c:choose>
													<c:when test="${loginResult eq true}">
														<h2>${login.mId}님 접속중</h2>
														<button onclick="location.href='mLogout'"
															class="btn btn-lg m_t_10">로그아웃</button>
													</c:when>
													<c:otherwise>
														<button onclick="location.href='mJoinForm'"
															class="btn btn-lg m_t_10">회원가입</button>
														<button onclick="location.href='mLoginForm'"
															class="btn btn-lg m_t_10">로그인</button>
													</c:otherwise>
												</c:choose>
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


		<section id="portfolio" class="portfolio sections">
			<div class="container-fluid">
				<div class="row">
					<div class="main_portfolio">
						<div class="col-sm-12">
							<div class="head_title text-center">
								<h2>현재 상영작</h2>
								<div class="subtitle"></div>
								<div class="separator"></div>
							</div>
						</div>
						<div class="work_menu text-center">
							<div id="filters" class="toolbar mb2 mt2">
								<button class="btn-md fil-cat filter active" data-filter="all">ALL</button>
								/
								<button class="btn-md fil-cat filter" data-rel="action"
									data-filter=".action">ACTION</button>
								/
								<button class="btn-md fil-cat filter" data-rel="romance"
									data-filter=".romance">ROMANCE</button>
								/
								<button class="btn-md fil-cat filter" data-rel="animation"
									data-filter=".animation">ANIMATION</button>
								/
								<button class="btn-md fil-cat filter" data-rel="thriller"
									data-filter=".thriller">THRILLER</button>
							</div>

						</div>

						<div style="clear: both;"></div>
						<div id="portfoliowork">
							<div
								class="single_portfolio tile scale-anm action grid-item-width2">
								<img src="resources/assets/images/movie_image1.jpeg" alt="" />

								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-2"
										href="https://www.youtube.com/watch?v=mI9oyFMUlfg">
										<h3>닥터스트레인지 : 대혼돈의 멀티버스</h3>
									</a>
									<p>12세관람가 / 126분</p>
									<a href="movView?movCode=1" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=1" class="btn btn-default">상영시간표</a>
								</div>
							</div>

							<div class="single_portfolio tile scale-anm action">
								<img src="resources/assets/images/movie_image2.jpeg" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?v=a6rBGQMXc90"><h3>아이언맨3</h3></a>
									<p>12세관람가 / 129분</p>
									<a href="movView?movCode=2" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=2" class="btn btn-default">상영시간표</a>
								</div>
							</div>
							<div class="single_portfolio tile scale-anm animation">
								<img src="resources/assets/images/movie_image3.jpeg" alt="" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com//watch?v=cUcw67t9O0g">
										<h3>주술회전0</h3>
									</a>
									<p>15세관람가 / 105분</p>
									<a href="movView?movCode=3" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=3" class="btn btn-default">상영시간표</a>
								</div>
							</div>
							<div class="single_portfolio tile scale-anm animation">
								<img src="resources/assets/images/movie_image4.jpeg" alt="" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?v=5EXgtz_seFA">
										<h3>귀멸의 칼날 : 무한열차편</h3>
									</a>
									<p>15세관람가 / 117분</p>
									<a href="movView?movCode=4" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=4" class="btn btn-default">상영시간표</a>
								</div>
							</div>
							<div class="single_portfolio tile scale-anm romance">
								<img src="resources/assets/images/movie_image5.jpeg" alt="" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?v=tnyWkyDGWuM">
										<h3>어바웃 타임</h3>
									</a>
									<p>15세관람가 / 123분</p>
									<a href="movView?movCode=5" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=5" class="btn btn-default">상영시간표</a>
								</div>
							</div>

							<div class="single_portfolio tile scale-anm romance">
								<img src="resources/assets/images/movie_image6.jpeg" alt="" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?v=xMqz1d4eKSk">
										<h3>타이타닉</h3>
									</a>
									<p>15세관람가 / 194분</p>
									<a href="movView?movCode=6" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=6" class="btn btn-default">상영시간표</a>
								</div>
							</div>
							<div class="single_portfolio tile scale-anm thriller">
								<img src="resources/assets/images/movie_image7.jpeg" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?v=-F1-sTyGvwA">
										<h3>셔터아일랜드</h3>
									</a>
									<p>15세관람가 / 138분</p>
									<a href="movView?movCode=7" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=7" class="btn btn-default">상영시간표</a>
								</div>
							</div>

							<div class="single_portfolio tile scale-anm thriller">
								<img src="resources/assets/images/movie_image8.jpeg" alt="" />
								<div class="grid_item_overlay">
									<div class="separator4"></div>
									<a class="bla-1"
										href="https://www.youtube.com/watch?V=w3id0NA161o">
										<h3>유전</h3>
									</a>
									<p>15세관람가 / 127분</p>
									<a href="movView?movCode=8" class="btn btn-lg m_t_10">상세보기</a>
									<a href="scView?scMovCode=8" class="btn btn-default">상영시간표</a>
								</div>
							</div>

						</div>

						<div style="clear: both;"></div>
					</div>
				</div>
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Work Section -->



		<!-- Study Section -->
		<!-- End off Study Section -->


		<!-- Counter Section -->
		<!-- End of counter section -->

		<!-- Pricing Section -->
		<!-- End off Pricing Section -->

		<!-- Team Section -->
		<!-- End off Team Section -->

		<!-- Client Logo Section -->
		<!-- End off clogo Section -->


		<!-- Blog Section -->
		<!-- End off Blog Section -->


		<!-- End of contact section -->

		<!-- End of Trial section -->

		<!--Footer section-->
		<section class="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="main_footer">
							<div class="row">
								<div class="col-sm-6 col-xs-12">
									<div class="flowus">
										<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
											class="fa fa-twitter"></i></a> <a href=""><i
											class="fa fa-google-plus"></i></a> <a href=""><i
											class="fa fa-instagram"></i></a> <a href=""><i
											class="fa fa-youtube"></i></a> <a href=""><i
											class="fa fa-dribbble"></i></a>
									</div>
								</div>

								<div class="col-sm-6 col-xs-12">
									<div class="copyright_text">
										<p class=" wow fadeInRight" data-wow-duration="1s">
											Made with <i class="fa fa-heart"></i> by <a
												href="http://bootstrapthemes.co">Bootstrap Themes</a>2016.
											All Rights Reserved
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End off footer Section-->
	</div>

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
		$(document).ready(function() {
			let loginResult = "${loginResult}"
			if (loginResult == "false") {
				alert("로그인에 실패했습니다.");
			}
		});

		jQuery(function() {
			jQuery("a.bla-1").YouTubePopUp();
			jQuery("a.bla-2").YouTubePopUp({
				autoplay : 1
			});
		});
	</script>
</body>
</html>
