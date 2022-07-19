<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>


 	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="resources/assets/css/cgvlayout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
    
    

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
			

<!-- 실컨텐츠 시작 -->
<div class="wrap-movie-detail" id="select_main">

    
<!--
<div class="tit-heading-wrap">
    <h3>영화상세</h3>
</div>
    //-->
<div class="sect-base-movie">
    <h3><strong>${adMovView.adMovCode}. ${adMovView.adMovName}</strong></h3>
    <div class="box-image">
         <span class="thumb-image"><img alt="영화포스터" src="resources/fileUpload/${adMovView.mFileName}" /></span>
    </div>
    <div class="box-contents">
        <div class="title"> 
            <strong>${adMovView.adMovCode}. ${adMovView.adMovName}</strong>
            <em class="round lightblue"><span>현재상영중</span></em>
            
            
        </div>
        
        <!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
        <div class="spec" style="margin:20px">
            
            <dl>
                <dt>[감독] &nbsp;</dt>
                <dd>${adMovView.adMovDirector}</dd></br>

                <dt>[장르] &nbsp;</dt> 
                <dd>${adMovView.adMovGenre}</dd></br>
                
                <dt>[등급] &nbsp;</dt> 
                <dd>${adMovView.adMovGrade}</dd></br>
                
                <dt>[개봉] &nbsp;</dt> 
                <dd>${adMovView.adMovOpen}</dd></br>
                
                <dt>[시간] &nbsp;</dt> 
                <dd>${adMovView.adMovTime}</dd></br>
                
                <dt>[리뷰] &nbsp;</dt>
                <dd><textarea rows=1 cols=70 id="cContents" placeholder="리뷰를 작성해주세요"></textarea>
				<button id="commBtn" style="margin:20px">리뷰 등록</button></dd>

            </dl>
            
        </div>
        <span class="screentype">
        
    </span>

        

    </div>
</div><!-- .sect-base -->

	<div id="commentArea" style="margin: 20px"></div>

    <div id="btn_group">
		<button onclick="location.href='scView?scMovCode=${adMovView.adMovCode}'" id="">상영시간표</button>
		<button id="btn2" onclick="history.back(-1);">HOME</button>
	</div>

						<!-- 실컨텐츠 끝 -->
</body>

<!-- jquery 가져오기 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script type="text/javascript">

	// 페이지 로딩될 때 실행
	$(document).ready(function(){
		
		// 리뷰 목록
		var cMovCode = ${adMovView.adMovCode};

		$.ajax({
			type : "POST",
			url : "comment/cList",		
			data : { "cMovCode" : cMovCode },
			dataType : "json",
			success : function(list){    
				commentList(list);
			},
			error : function(){
				alert('리뷰 목록 불러오기 실패');
			}
		});
		
		// 리뷰 등록
		var loginId = '${login.mId}';  
		
		// 버튼 클릭 시
		$('#commBtn').click(function(){
			if(!loginId){
				alert('로그인 이후 사용 바람');
				location.href="mLoginForm";
			} else{
				var cWriter = loginId;
				var cContents = $('#cContents').val();
				var cMovCode = ${adMovView.adMovCode};
				
				console.log('cWriter : ' + cWriter);
				console.log('cContents : ' + cContents);
				console.log('cMovCode : ' + cMovCode);
				
				$.ajax({
					type : "POST",
					url : "comment/cWrite",		
					data : {"cWriter" : cWriter,
							"cMovCode" : cMovCode,
							"cContents" : cContents},	
					dataType : "json",
					success : function(list){
						commentList(list);
						$('#cContents').val("");
					},
					error : function(){
						alert('리뷰 등록 실패');
					}
				});
			}
		});
	});
	
	// 리뷰 목록 조회 함수
	function commentList(list){
	
		var output = "";
		var loginId = '${login.mId}';
		
		// output 변수에 계속 추가 (+=)
		output += "<table>";
		output += "<tr>";
		output += "<th><작성자></th>";
		output += "<th><내용></th>";
		output += "<th><작성일></th>";
		output += "<th><수정></th>";
		output += "<th><삭제></th>";
		output += "</tr>";
		
		// 리뷰(list) 갯수만큼 반복문 실행
		for(var i in list){
			output += "<tr>";
			output += "<td>" + list[i].cWriter + "</td>";
			output += "<td>" + list[i].cContents + "</td>";
			output += "<td>" + list[i].cDate + "</td>";
			
			// 작성자와 로그인한 아이디가 같을 경우에만 수정 가능
			if(list[i].cWriter == loginId){
			output += "<td><button onclick='commentModify("+ list[i].cNum +", "+ list[i].cMovCode +")'>수정</button></td>";
			} else{
				output += "<td><button>수정</button></td>";
				
			}
			
			// 작성자와 로그인한 아이디가 같거나 관리자일 경우에만 삭제 가능
			if(list[i].cWriter == loginId || loginId == 'admin'){
				output += "<td><button onclick='commentDelete("+ list[i].cNum +", "+ list[i].cMovCode +")'>삭제</button></td>";
			} else{
				output += "<td><button>삭제</button></td>";
			}
			
			output += "</tr>";
		}
		
		output += "</table>";
		
		// div 영역 commentArea
		var commentArea = document.getElementById('commentArea');
		
		// commentArea에 output 내용 넣기
		commentArea.innerHTML = output;
		
	}
	
	// 리뷰 삭제
	function commentDelete(cNum, cMovCode){
		
		var check = confirm('리뷰를 삭제하시겠습니까?');
		
		if(check){
			
			$.ajax({
				type : "POST",
				url : "comment/cDelete",
				data : {"cNum" : cNum, "cMovCode" : cMovCode},
				dataType : "json",
				success : function(list){
					commentList(list);
				},
				error : function(){
					alert('리뷰 삭제 실패');
				}
			});
			
		} 
	}
	
	// 리뷰 수정
	function commentModify(cNum, cMovCode){
		
		var check = confirm('리뷰를 수정하시겠습니까?');
		
		var cContents = $('#cContents').val();		
		
		if(check){
			
			$.ajax({
				type : "POST",
				url : "comment/cModify",
				data : {"cNum" : cNum, "cMovCode" : cMovCode, "cContents" : cContents},
				dataType : "json",
				success : function(list){
					commentList(list);
				},
				error : function(){
					alert('리뷰 수정 실패');
				}
			});
		}
	}
	
	function movReserve(){
		
		//String randomStr = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
		
		/* const String = String.valueOf(rnd.nextInt(26) + 65);
		
		RandomStringUtils.randomAscii(int 1); */
		
		/* const string = RandomStringsUtils.random(int 1, int 26, int 65) */
		const strArray = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'k'];
		const string = strArray[Math.floor(Math.random()*strArray.length)];
		const num = Math.floor(Math.random()*51); 
		
		alert('예매가 완료되었습니다! 고객님의 좌석번호는 : ' +  string + num + " 입니다.");
	}
	
</script>


</html>