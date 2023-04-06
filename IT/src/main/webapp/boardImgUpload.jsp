<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
	String uploadPath=request.getRealPath("/upload");
	
	int size = 10*1024*1024;
	String name="";
	String subject="";
	String filename1="";
	String filename2="";
	String origfilename1="";
	String origfilename2="";
	
	try{
		MultipartRequest multi=new MultipartRequest(request,
							uploadPath,
							size, 
							"UTF-8",
				new DefaultFileRenamePolicy());

		name=multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		Enumeration files=multi.getFileNames();
		
		String file1 =(String)files.nextElement();
		filename1=multi.getFilesystemName(file1);
		origfilename1= multi.getOriginalFileName(file1);

		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script>

</script>
<html>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
	<input type="textarea" placeholder="내용을 입력하세요.">
	<input type="submit" value="등록" onclick="javascript:filecheck.submit()">
	<input type="button" value="취소" id="cancel_btn" onclick=onclick=location.href="basicboard.jsp">
	
</form>

</body>
</html>