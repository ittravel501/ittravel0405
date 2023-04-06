<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잇로그</title>
<link rel="stylesheet" href="./boardpopcss.css">
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	function openPopup(obj){
		$(".layer_pop_txt").hide();
		$(obj).show();
	}
	function closePopup(obj){
		$(obj).hide();
	}
	
</script>
<body>
<h3>잇로그</h3>
	<div class="container">
		<p class="pop_button"><a href="#;" onclick="openPopup('#pop_txt1')"><img src=""></a></p>
		</div>
		
	<div class="layer_pop_txt" id="pop_txt1">
	<div class="pop_content">
	<p>이미지1</p>
	<a class="close_btn" href="#;" onclick="closePopup('#pop_txt1')">X</a>
	</div>
	</div>
</body>
</html>