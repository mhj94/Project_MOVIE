<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/webfont.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="resources/assets/css/cgvlayout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
<!--/각페이지 Header End-->


<style>
#btn_group button {
	text-align: center;
	color: #fff;
	letter-spacing: 1px;
	margin: 0;
	font-size: 0.8125rem;
	border-radius: 0px;
	margin-top: 20px;
	transition: .5s;
	border: 1px solid #e74c3c;
	font-family: 'open_sansbold';
	padding: 0.5rem 0.1rem;
	transition: all 0.6s;
	border-radius: 2px;
	background: #e74c3c;
	width: 46%;
}
</style>


</head>
<body class="">


	<div class="header">
		<!-- 서비스 메뉴 -->

		<div class="header_content">
			<div class="contents">
				<h1 onclick="">
					<a href="index"><img
						src="https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png"
						alt="CGV" /></a><span>with 낌쭌쓰</span>
				</h1>
			</div>
		</div>


	</div>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner" class="">
		<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


		<!-- Contents Area -->
		<div id="contents" class="">


			<!-- Contents Start -->

			<h4 class="tit-showtime">${adMovView.adMovName}</h4>

			<div class="sect-common">
				<!-- 극장별, 영화별 상영시간표 Start -->
				<div class="favorite-wrap">

					<!-- 상단메뉴 -->

					<ul class="tab-menu">
						<li><a href="">영화별 상영시간표</a></li>
					</ul>

					<!--/ 상단메뉴 End -->


					<div class="cols-movies">
						<h3>영화별 상영시간표</h3>
						<div class="col-movie" id="movie_poster_container">
							<div class="box-image">
								<span class="thumb-image"> <img alt="영화포스터"
									src="resources/fileUpload/${adMovView.mFileName}" />
								</span>
							</div>
							<div class="box-contents">
								<span class="txt-info"> <em>${adMovView.adMovGenre}/</em>
									<i>${adMovView.adMovTime}</i> <span>${adMovView.adMovOpen}
										개봉</span>
								</span>
							</div>
						</div>
						<div class="col-movie-lst default-skin">
							<div id="movie_list" class="default-skin">
								<ul>
									<c:forEach var="mov" items="${scList}">
										<c:choose>
											<c:when test="${mov.adMovCode eq scView.scMovCode}">
												<li class="on"><a> <span
														class="ico-grade grade-${mov.adMovGrade}">${mov.adMovGrade}</span>
														<strong>${mov.adMovName}</strong>
												</a></li>
											</c:when>
											<c:otherwise>
												<li><a> <span
														class="ico-grade grade-${mov.adMovGrade}">${mov.adMovGrade}</span>
														<strong>${mov.adMovName}</strong>
												</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="box-movie-type" id="movie_type_list">
							<ul>

								<li class="on"><a href="#" title="영화 제목 보기">영화 제목</a></li>

								<li><b>${adMovView.adMovName}</b></li>

								<li class="on"><a href="#" title="상영관 정보 보기">상영관 정보</a></li>

								<li><b>${scView.scHall}</b></li>

								<li class="on"><a href="#" title="상영시간 보기">상영시간</a></li>

								<li><b>${scView.scTime}</b></li>

								<li class="on"><a href="#" title="영화관코드 보기">영화관코드</a></li>

								<li><b>${scView.scThCode}</b></li>

								<li class="on"><a href="#" title="영화코드 보기">영화코드</a></li>

								<li><b>${scView.scMovCode}</b></li>


								<div id="btn_group">
									<button id="btn1" onclick="movReserve()">예매하기</button>
									<button id="btn2" onclick="history.back(-1);">뒤로가기</button>
								</div>

							</ul>

						</div>

						<!-- 실컨텐츠 끝 -->
</body>

<script>
	function movReserve() {

		//String randomStr = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));

		/* const String = String.valueOf(rnd.nextInt(26) + 65);
		
		RandomStringUtils.randomAscii(int 1); */

		/* const string = RandomStringsUtils.random(int 1, int 26, int 65) */
		const strArray = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
				'k' ];
		const string = strArray[Math.floor(Math.random() * strArray.length)];
		const num = Math.floor(Math.random() * 51);

		alert('예매가 완료되었습니다! 고객님의 좌석번호는 : ' + string + num + " 입니다.");

	}
</script>

</html>