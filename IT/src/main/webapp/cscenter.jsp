<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTf-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>고객센터</title>

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	 <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
	 
	 
	 <link rel="stylesheet" type="text/css" href="css/header_footer.css">
	 <link rel="stylesheet" type="text/css" href="css/cscenter.css">
	 
	 
	 <!-- 헤더 js -->
	 <script src="js/slick-1.8.1/slick/slick.min.js"></script>

	 <script src="js/shopping_bn.js"></script>

</head>


<body>

<!--헤더부분-->

	<header>
	   <jsp:include page="header.jsp" />
	</header> 
    


	<section>

		<div class="cscenter" >
		
		<div id="cs_title_wrap" >
		
			<h1>고객센터&nbsp;1577-5177</h1>
			
		
		</div>
		
			<div class="cscenter_menu_wrap" >
			
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="N_list.jsp" >공지사항</a></p>
						</div>	
						
						<div class="cscenter_menu_con" >				
							<ul>							
								<li>월~금 10:00~17:30</li>
								<li>점심시간 12:00~13:30</li>
								<li>토,일,공휴일 휴무</li>
								<li><h3><a href="N_list.jsp" >공지사항</a></h3></li>								
							</ul>
						</div>
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="cscenter_faq.jsp">FAQ</a></p>
							<p>자주하는 질문</p>
						</div>
						
						<div class="cscenter_menu_con" >
							<ul>
								<li><a href="">전체보기</a></li>
								<li><a href="">주문/입금/결제</a></li>
								<li><a href="">항공권</a></li>
								<li><a href="">투어티켓</a></li>
								<li><a href="">쇼핑</a></li>
							</ul>
						</div>
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="">Q&A</a></p>
							<p>직접 문의하기</p>
						</div>
						
						<div class="cscenter_menu_con" >
							<ul>
								<li><a href="">상품 문의 게시판</a></li>
								<li><a href="">문의 게시판</a></li>
								<li><a href="">배송전 변경/취소 문의</a></li>
								<li><a href="">교환/반품 문의</a></li>
								<li><a href="">A/S문의</a></li>
								<li><a href="">대량구매문의</a></li>
								<li><a href="">1:1문의하기</a></li>
								<li><a href="">나의 문의 확인하기</a></li>
							</ul>
						</div>
					
					</div>
				
				</div>
						
		</div>
	
	</section>



	<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>


</div>
</body>

</html>