<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.BoardDao" %>
<%@ page import="dto.Cominfo" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트 문장사용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/com_css.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
    String com_mem_id = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (session.getAttribute("com_mem_id") != null)
    {
    	com_mem_id = (String)session.getAttribute("com_mem_id");
    }
    if (com_mem_id == null)
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요')");
        script.println("location.href = 'login_je.jsp'");
        script.println("</script>");
        return; // 메서드 실행 종료
    }
    int com_num = 0;
    if (request.getParameter("com_num") != null)
    {
    	com_num = Integer.parseInt(request.getParameter("com_num"));
    }
    if (com_num == 0)
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다')");
        script.println("location.href = 'board_list.jsp'");
        script.println("</script>");
        return;
    }
    Cominfo ci = new BoardDao().getBoard(com_num); 
    if (!com_mem_id.equals(ci.getCom_mem_id()))
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다')");
        script.println("location.href = 'board_list.jsp'");
        script.println("</script>");
        return;
    }
    
%>
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <form action="updateAction.jsp?com_num=<%= com_num %>" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" value="글 제목이 들어갑니다"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" placeholder="글쓴이 입력" value="김이름"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호 입력" value="1234"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력">
                    (수정)
					</textarea>
                </div>
            </div>
            <div class="bt_wrap">
               <!--  <a href="view.html" class="on">수정</a> -->
                <input class="on" type="submit" value="수정">
                <a href="view.html">취소</a>
            </div>
        </div>
        </form>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>