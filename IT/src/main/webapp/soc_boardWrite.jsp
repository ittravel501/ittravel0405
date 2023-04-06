<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잇로그 글쓰기</title>
</head>
	<link rel="stylesheet" href="css/soc_boardWriteCss.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
    <script src="./slick-1.8.1/slick/slick.min.js"></script>
</head>

<body> 
	<div class="wrap"> 
		<!-- 최상단 -->
		<div class="top_wrap">
			<div style="width:30%;">
			<a href="#"><img src="imgs/board/gallery_icon.png"></a>
			<a href="#"><img src="imgs/board/movie_icon.png"></a>
			<a href="#"><img src="imgs/board/pick_icon.png"></a>
			</div>
			<div style="width:45%;"></div>
			<div class="title">잇로그 글쓰기</div>
		</div>
		<!-- 텍스트박스 -->
		<div>
		<textarea placeholder="내용을 입력해주세요."></textarea>
		<a href="soc_basicboard.jsp"><input type="button" value="취소"></a><input type="button" value="등록">
		</div>
	</div>
</body>
</html>