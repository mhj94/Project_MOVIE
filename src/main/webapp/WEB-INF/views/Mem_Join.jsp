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
#btn_group button{
    text-align: center;
    color: #fff;
    letter-spacing: 1px;
    margin: 0;
    font-size:0.8125rem;
    border-radius: 0px;
    margin-top: 20px;
    transition: .5s;
    border: 1px solid #e74c3c;
    font-family: 'open_sansbold';
    padding: 0.8rem 3rem;
    transition: all 0.6s;
    border-radius: 2px;
    background: #e74c3c;
	width : 40%;
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
							<h2>회원가입</h2>
							<div class="subtitle">예매를 하기 위해서는 회원가입을 해주세요.</div>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->
						<div class="row">
							<div class="col-sm-6">
								<div class="main_contact_info">
									<div class="row">
										<div
											class="contact_info_content padding-top-90 padding-bottom-60 p_l_r">
											
											<img src="resources/fileUpload/cgv.png" style="padding-left:25px"/>
											
										</div>
									</div>
								</div>
							</div>

							<div class="col-sm-6">
								<div
									class="single_contant_left padding-top-90 padding-bottom-60">
									<form action="mJoin" method="POST" enctype="multipart/form-data">
										<div
											class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">

											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<input type="text" class="form-control" name="mId"
															id="mId" placeholder="아이디" onchange="checkId()">
														<span id="confirmId"></span>
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
												<div class="col-sm-12">
													<div class="form-group">
														<input type="text" class="form-control" name="mName"
															id="mName" placeholder="이름" />
													</div>
												</div>
												<div class="col-sm-12">
													<div class="form-group">
														<input type="text" class="form-control" name="mPhone"
															id="mPhone" placeholder="연락처" />
													</div>
												</div>
											</div>

											<!-- 생년월일 -->
											<div class="form-group">
												<input type="date" class="form-control" name="mBirth" />

											</div>

											<div class="row">

												<!-- 성별 -->
												<div class="col-sm-12">
													<div class="form-group">
														남자<input type="radio"
															style="font-size: 15px; width: 15px; height: 10px"
															class="form-control" name="mGender" value="남" /> 여자<input
															type="radio"
															style="font-size: 15px; width: 15px; height: 10px"
															class="form-control" name="mGender" value="여" />
													</div>
												</div>

												<!-- 이메일 -->
												<div class="col-sm-12">
													<div class="form-group">
														<input type="email" class="form-control" name="mEmail"
															id="mEmail" placeholder="이메일" />
													</div>
												</div>
											</div>
											<div class="row">

												<!-- 주소 -->
												<div class="col-sm-12">
													<div class="form-group">
														<input type="text" id="sample6_postcode" placeholder="우편번호" name="addr1"> 
														<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"> <br> 
														<input type="text" id="sample6_address" placeholder="주소" name="addr2"> <br>
														<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addr3">
												</div>

												<!-- 프로필사진 -->
												
											</div>
											<div id="btn_group">
												<button type="reset" id="btn1">다시작성</button>
												<button type="submit" id="btn2">가입</button>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}

						} else {

						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	function checkId() {
		var mId = document.getElementById('mId').value;
		var confirmId = document.getElementById('confirmId');
		
		$.ajax({
			type : "POST" , 
			
			url : "checkId" ,
			
			data : {"mId" : mId} ,
			
			dataType : "text" , 
			
			success : function(msg){ // 통신 성공시 
				if(msg=="OK"){
					confirmId.style.color="#0000ff";
					confirmId.innerHTML = "사용가능한 아이디";
				} else {
					confirmId.style.color="#ff0000";
					confirmId.innerHTML = "사용 불가능한 아이디";
				}
			},
			error : function(){ // 통신 실패시		
				alert('checkId함수 통신 실패!')
			}
		});
	}
	
	
</script>
</html>