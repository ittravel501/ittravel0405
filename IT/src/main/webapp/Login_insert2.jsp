 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDao" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="dto.Joininfo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body> 

<% 
String mem_id = null;
if (session.getAttribute("mem_id") != null){
	mem_id = (String) session.getAttribute("mem_id");
}
if (mem_id != null){
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('이미 로그인되었습니다.')");
    script.println("location.href = 'main.jsp'");    // 메인 페이지로 이동
    script.println("</script>");
}

UserDao ud = new UserDao();
int result = ud.login(user.getMem_id(),user.getMem_pw()); 

/* response.sendRedirect("header.jsp");  */

/* if(mem_id != null){
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('이미 로그인 되어있는 사용자입니다.' + mem_id +')'");
	 script.println("location.href = 'header.jsp'");
	 script.println("</script>");
}  */
 
 if(result == 1){
	 PrintWriter script = response.getWriter();
	 script.println("<script>");	
	 script.println("location.href = 'Mainindex.jsp'");
	 script.println("</script>");
	 
 }else if(result == 0){
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('비밀번호가 일치하지 않습니다.')");
	 script.println("history.back()");
	 script.println("</script>");
 }else if(result == -1){
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('존재하지 않는 아이디입니다.')");
	 script.println("history.back()");
	 script.println("</script>");
 }else if(result == -2){
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('데이터베이스 오류가 발생했습니다.')");
	 script.println("history.back()");
	 script.println("</script>");
 }
 
%>
</body>
</html>
