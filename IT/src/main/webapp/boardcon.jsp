<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="test" class="teampro.Board" />
<form action="boardcon01.jsp">
	<!--  제목 : <input type="text" size="50"><p>-->
	본문 : <textarea placeholder="내용입력" cols="55" rows="30"></textarea><p>
	<input type="submit" value="등록" onclick=location.href="basicboard.jsp">
	<input type="button" value="취소">
	</form>
</body>
</html>