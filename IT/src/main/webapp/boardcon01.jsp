<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*"%> 
    <%@page import ="java.util.*" %>
    <%@page import="teampro.Post" %>
    <%@page import="teampro.Board" %>
    <%	
    	
    	Post post=new Post();
    	Board bd=new Board();
    
	    post.setNick((String)request.getParameter("nick"));
	    post.setSoc_img((String)request.getParameter("soc_img"));
	    post.setSoc_con((String)request.getParameter("soc_con"));
	    post.setSoc_num(Integer.parseInt((String)request.getParameter("soc_num")));
	    post.setTru_num(Integer.parseInt((String)request.getParameter("tru_num")));
	    post.setSoc_date(Integer.parseInt((String)request.getParameter("soc_date")));
	    post.setSoc_like(Integer.parseInt((String)request.getParameter("soc_like")));
	    post.setSoc_rep(Integer.parseInt((String)request.getParameter("soc_rep")));
	    
		
	    bd.insert(post);
	    response.sendRedirect("basicboard.jsp");
		
		
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>