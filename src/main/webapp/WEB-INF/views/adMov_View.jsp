<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">

<style>
p{font-family: 'Gugi', cursive; text-align: center; font-size: 19px}
p.a {font-family: 'Gugi', cursive; text-align: center; font-size: 40px}
</style>

<meta charset="UTF-8">
<title>영화 상세보기</title>
</head>

<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
<link rel="stylesheet" media="all" type="text/css" href="resources/assets/css/bootstrap2.css" />

<style>
#btn1{display:block; display:float: right; margin: auto; font-color:#e74c3c; background-color: #ffff;}
#poster{display:block; margin: auto; text-align:center;}
</style>

<body>

	<table class="container" style="padding-bottom:50px">
	
		<caption><p class="a">${adMovView.adMovCode}. ${adMovView.adMovName}</p></caption>
	

		<tr>
			<th><p>감독</p></th>
			<td><p>${adMovView.adMovDirector}</p></td>
		</tr>

		<tr>
			<th><p>장르</p></th>
			<td><p>${adMovView.adMovGenre}</p></td>
		</tr>

		<tr>
			<th><p>등급</p></th>
			<td><p>${adMovView.adMovGrade}</p></td>
		</tr>
		
		<tr>
			<th><p>개봉일</p></th>
			<td><p>${adMovView.adMovOpen}</p></td>
		</tr>
	
		<tr>
			<th><p>포스터</p></th>
			<td><img src="resources/fileUpload/${adMovView.mFileName}" width="200px" id="poster"></td>
		</tr>
		
		</table>
		
				<button style="margin-right:25px; width:200px; float: right;" onclick="location.href='adMovModiForm?adMovCode=${adMovView.adMovCode}'"><p>수정</p></button>
				<button style="margin-right:25px; width:200px; float: right;" onclick="location.href='adMovDelete?adMovCode=${adMovView.adMovCode}'"><p>삭제</p></button>
				
				
			
		
	
	
</body>
</html>