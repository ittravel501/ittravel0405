<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import = "java.util.ArrayList" %>

<%@page import="dto.QNA_MD" %>

    <%@page import="dao.N_controller" %>
    
    <%@page import="dto.Joininfo" %>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/css.css">
</head>


<body>

<header>
 <jsp:include page="header.jsp" />
</header> 	
 
<section style="height: 700px">
    <div class="board_wrap">
        <div class="board_title">
            <h2>직접 문의하기</h2>
        </div>
        <div class="board_view_wrap">
        
        <jsp:useBean id="user" class= "dao.N_controller"/>
        
        <% 
        	   request.setCharacterEncoding("utf-8");      
          
               String iii = request.getParameter("qna_num");  //qna-list에서 가져온 문의번호를 iii로 저장한다.   
               QNA_MD Q_arr = user.Q_selectone(iii); //그거를 selectone메소드에 넣는다. 
               
        	String mem_nick = (String)session.getAttribute("mem_nick"); //session으로 가져오면 무조건 String으로 받으로 형변환해야 한다.
        													//리턴값을 오브젝트로 받기 때문이다. 오브젝트는 int와 String를 받을 수 있기 때문에 정확히 변수의 타입을 확실히 정해주어야한다.
         	
        	//String qna_mem_id = Q_arr.getQna_mem_id();  //큐엔에이 저장한 곳에서 멤아이디를 가져와 qna_mem_id로 저장한다. 
         	String sessionid = (String)session.getAttribute("mem_id"); //세션에 저장된 아이디를 sessionid로 저장한다. 
        
        													
	        if(mem_nick==null) {
	        	
	        	%>     	
	        	<script>
				    alert("로그인을 해주세요.");
				    location.href = "login001.jsp";
				</script>      	
	        	<% 
	        	
	        }else if(sessionid.equals(Q_arr.getQna_mem_id())) {
	        		
	        	}else {
	        		
	        		%>     	
		        	<script>
					    alert("본인의 문의만 확인할 수 있습니다.");
					    location.href = "cscenter_qna_list.jsp";
					</script>      	
		        	<%
	        	}

	        
	        
	        %>
        
        <form action="cscenter_qna_edit.jsp">
            <div class="board_view">
                <div class="title">
                    <input type="text" value="<%=Q_arr.getQna_title() %>" name="qna_title" readonly="readonly" id="n_view_title" onselectstart="return false;" onmousedown="return false;" >
                </div>           
                
                <div class="info">

                    <dl>  

                        <dd><input type="text" value="<%=Q_arr.getQna_mem_id() %>" name="qna_writer" readonly="readonly" onselectstart="return false;" onmousedown="return false;"></dd>
                    </dl>
                    
                    <dl>

                        <dd><input type="text" value="<%=Q_arr.getQna_date() %>" name="qna_date" readonly="readonly" onselectstart="return false;" onmousedown="return false;"></dd>
                    </dl>

                    
                </div>
                
                <div class="cont">
                    <input type="text" value="<%=Q_arr.getQna_con() %>" name="qna_con" readonly="readonly" onselectstart="return false;" onmousedown="return false;">
                	<input name="qna_num" hidden="hidden" value=<%=iii %> >
                </div>
            </div>
            
            <%  %>
            
            <div class="bt_wrap">
                <a href="cscenter_qna_list.jsp" class="on">목록</a>
                <a href="cscenter_qna_edit.jsp"><input type="submit" value="수정" style="width: 100px;" height="42px;"> </a>
            	<a href="cscenter_qna_delete.jsp?qna_num=<%=Q_arr.getQna_num() %>"><input type="button" value="삭제" style="width: 100px;"></a>
            </div>
            
            </form>
            
        </div>
    </div>
    </section>
    
    <footer>
    	<jsp:include page="footer.jsp"/>
	</footer>
    
    
</body>
</html>