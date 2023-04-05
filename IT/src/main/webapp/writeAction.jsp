<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.BoardDao" %>
    <%@ page import="java.io.PrintWriter"%>
    <% 
    request.setCharacterEncoding("UTF-8");
    %>
   <jsp:useBean id="board" class="dto.Cominfo" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="board"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <%
 		BoardDao bd = new BoardDao();
 
		int result = bd.write(board);
 		
        String com_mem_id = null;
        // 로그인 된 사람은 회원가입페이지에 들어갈수 없다
        
            
        if(session.getAttribute("com_mem_id") != null )
        {
        	com_mem_id = (String) session.getAttribute("com_mem_id");
        }
        if(com_mem_id != null)
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요')");
            script.println("location.href = 'login_je.jsp'");
            script.println("</script>");
        } else {
        if(board.getCom_name() == null || board.getCom_con() == null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else {
                if(result == -1){ // 글쓰기에 실패했을 경우
                    PrintWriter script = response.getWriter(); //하나의 스크립트 문장을 넣을 수 있도록.
                    script.println("<script>");
                    script.println("alert('글쓰기에 실패했습니다.')");
                    script.println("history.back()");
                    script.println("</script>");
                }
                else { // 글쓰기에 성공했을 경우
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("location.href= 'board_list.jsp'");
                    script.println("</script>");
                    }
            }
        }
    %>

</body>
</html>