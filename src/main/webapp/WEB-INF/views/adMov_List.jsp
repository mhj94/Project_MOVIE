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
<title>등록된 영화목록</title>
</head>

<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
<link rel="stylesheet" media="all" type="text/css" href="resources/assets/css/bootstrap2.css" />
<body>
	<table class="container" style="padding-bottom:50px">
		<caption style="height: 150px"><p class="a">현재 등록된 영화목록</p></caption>
		<tr>
			<th><p>영화코드</p></th>
			<th><p>제목</p></th>
			<th><p>감독</p></th>
			<th><p>장르</p></th>
			<th><p>등급</p></th>
			<th><p>개봉일</p></th>
			<th><p>포스터</p></th>
		</tr>

		<c:forEach var="mov" items="${adMovList}">
			<tr>
				<td><p><a href="adMovView?adMovCode=${mov.adMovCode}">${mov.adMovCode}</a></td>
				<td><p>${mov.adMovName}</p></td>
				<td><p>${mov.adMovDirector}</p></td>
				<td><p>${mov.adMovGenre}</p></td>
				<td><p>${mov.adMovGrade}</p></td>
				<td><p>${mov.adMovOpen}</p></td>
				<td><p>${mov.mFileName}</p></td>
			</tr>
		</c:forEach>
	</table>
<p>
	<c:if test="${paging.page <=1}">[이전]</c:if>
	<c:if test="${paging.page >1}">
		<a href="adMovList?page=${paging.page-1}&limit=${paging.limit}">[이전]
		</a>
	</c:if>

	<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}"
		step="1">
		<c:choose>

			<c:when test="${paging.page eq i}"> [${i}] </c:when>

			<c:otherwise>
				<a href="adMovList?page=${i}&limit=${paging.limit}">${i}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<c:if test="${paging.page >= paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page < paging.maxPage}">
		<a href="adMovList?page=${paging.page+1}&limit=${paging.limit}"> [다음]</a>
	</c:if>
	 </p>
</body>
</html>