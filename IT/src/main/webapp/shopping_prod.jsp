<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.util.ArrayList" %>
    
    <%@page import="dto.N_MD" %>
    <%@page import="dto.QNA_MD" %>
    
    <%@page import="dto.PROD_MD" %>
    
    <%@page import="vo.ProdInfo" %>
    
    <%@page import="dao.N_controller" %>
    <%@page import="dao.ProdDao" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑 제품 상세 페이지</title>

<link rel="stylesheet" type="text/css" href="css/shopping_prod.css">


</head>

	<jsp:useBean id="user" class="dao.N_controller"/> 

<body>

<header>
<jsp:include page="header.jsp" />
</header>


<section>

<button onclick="scrollToTop()" id="scroll-to-top-button">Top</button>

<script type="text/javascript">
function scrollToTop() {
	  window.scrollTo({
	    top: 0,
	    behavior: "smooth"

	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction() {
	  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	    document.getElementById("scroll-to-top-button").style.display = "block";
	  } else {
	    document.getElementById("scroll-to-top-button").style.display = "none";
	  }
	}

</script>


<%

ArrayList<ProdInfo> prod = user.Prod_info();

//String qnacon = prod.get(i).getProd_qna();

//ArrayList<PROD_MD> prod_qnacount = user.Prod_qnacount(qnacon);
//int prod_qnacount =  prod_qnacount.size();


for (int i=0 ; i<prod.size(); i++) {
	
	//String qnacon = prod.get(i).getProd_qna(); //qna내용
	
	
	%>
	
<form action="shopping_basket.do">

<div id="s_order_wrap" >
	<div class="s_prod_wrap">
	
		<div class="img_wrap">
		
		<div id="s_prod_detail_img_wrap" >
		
			<div class="s_prod_detail_img" >
				<img style="width: 100px; height: 100px;" src="./shopimg/db972b0e08c7e2484bff82d75c1469fe.jpg">
			</div>
			
			<div class="s_prod_detail_img" >
				<img style="width: 100px; height: 100px;" src="./shopimg/plg39158_2679.jpg">
			</div>
		</div>
			
			<div id="s_prod_big_img" >
				<img style="width: 500px; height: 500px;" src="./shopimg/db972b0e08c7e2484bff82d75c1469fe.jpg">
			</div>
		</div>
		
		<script>
		    const detailImgs = document.querySelectorAll('.s_prod_detail_img img');
		    const bigImg = document.querySelector('#s_prod_big_img img');
		    for (let i = 0; i < detailImgs.length; i++) {
		        detailImgs[i].addEventListener('click', function() {
		            bigImg.src = this.src;
		        });
		    }
		</script>
		
		<div class="prod_info_wrap" >
		
			<div class="info_heading_wrap" >
			 
				<div class="info_heading_desc">
				
				<input name="prod_bigct" value="<%=prod.get(i).getProd_bigct() %> " readonly="readonly" >
				 > 
				 <input name="prod_smallct" value=<%=prod.get(i).getProd_smallct() %> readonly="readonly" >	
				 </div>
				
				<h2><input id="prod_name" name="prod_name" value="<%=prod.get(i).getProd_name() %>" readonly="readonly" > </h2>
				
				<div class="info_heading_desc">고민이 될 때는 세트로!	</div>
		
			</div>
			
			<%
			String mem_id = (String)session.getAttribute("mem_id");
			%>
			<input type="hidden" name = "prod_mem_id" value = "<%=mem_id%>">
			<input type="hidden" name = "prod_num" value = "<%=prod.get(i).getProd_num()%>">
			<table>
				<tr>
					<th><%= "&#8361;" %></th>
					
					<td>
						<span>
							<input id="prod_price" name="prod_price" value="<%=prod.get(i).getProd_price() %>" readonly="readonly" >
						</span>
					</td>
					
				</tr>
			</table>

			<div class="total_prod_wrap">
			
				<p><%=prod.get(i).getProd_name() %></p>
				
				<div id="quantity_wrap">
				
					<input type="text" id="quantity" class="qunt_up" name="quantity_opt" value="1" min="1">
					
						<div id="count_btn_wrap" >
							<a href="#" onclick="increaseQuantity(event)">
							  <img src="shopimg/btn_count_up.gif">
							</a>
							
							<a href="#" onclick="decreaseQuantity(event)">
							  <img src="shopimg/btn_count_down.gif">
							</a>

						</div>
				</div>
				
			</div>

			<div class="total_price_wrap">
				<div id="total_price">
				
					<input id="prod_total_price" name="prod_total_price" value="<%=prod.get(i).getProd_price() %>" readonly="readonly" > 
				</div>
			</div>

			<script>
			
			function increaseQuantity(event) {
				  event.preventDefault(); // 기본 동작 취소
				  var quantityInput = document.getElementById("quantity");
				  var currentQuantity = parseInt(quantityInput.value);
				  quantityInput.value = currentQuantity + 1;
				  updateTotalPrice();
				}

				function decreaseQuantity(event) {
				  event.preventDefault(); // 기본 동작 취소
				  var quantityInput = document.getElementById("quantity");
				  var currentQuantity = parseInt(quantityInput.value);
				  if (currentQuantity > 1) {
				    quantityInput.value = currentQuantity - 1;
				    updateTotalPrice();
				  } else {
				    alert("최소 주문 수량은 1개입니다.");
				  }
				}


				function updateTotalPrice() {
				  var prodPrice = document.getElementById("prod_price").value;
				  var quantity = document.getElementById("quantity").value;
				  var totalPrice = prodPrice * quantity;
				  document.getElementById("prod_total_price").value = totalPrice.toFixed(0);

				}
				
			</script>


			
			<div class="prod_button" >
			
				<!-- <a href="shopping001_basket.jsp" class="prod_cart" >장바구니</a>  -->
				
				<a href="shopping001_basket.jsp" class="prod_cart" >
					<input type="submit" value="여기 장바구니" >
				</a>
				
				<a href="shopping_buy.jsp" class="prod_buy" >구매하기</a>
				
				
			</div>
			
				<div id="kakao_checkout_button" >
					
					<div class="__checkout_buy_contents">
      
					  <span class="__checkout_img_comm __checkout_buy_title">
					    구매와 관리를<br>톡으로 간편하게
					  </span>
					
					      
					  <button type="button" class="__checkout_btn_buy "  onclick="openPopup()" >
					    <span class="__checkout_img_comm __checkout_img_buy">
					    
					      카카오 페이구매
					    </span>
					  </button>
					  
					  <script>
						function openPopup() {
							var url = "http://wepplication.github.io/tools/barcodeGen/";
							var width = 500;
							var height = 500;
							var left = 0;
							var top = 0;
							window.open(url, '_blank', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=' + width + ', height=' + height + ', top=' + top + ', left=' + left);
						}
						</script>
					
					      
					  <button type="button" class="__checkout_btn_wish ">
					    <span class="__checkout_img_comm __checkout_img_wish">찜</span>
					  </button>
					
					</div>
					
				</div>		
				
				<div id="naver_checkout_button"	>
				</div>
			</div>
		
		</div>
		
	</div>
	
	
	
	

<!-- -------------------- prod_additional 시작---------------------------- -->

	
	
	
	
	<div id="prod_additional">
	
		<div class="prod_detail_tab" id="myList1">
			<ul class="myList"  >
				<a href="#myList1"><li style="border-top: 2px solid #000;" >상품이미지</li></a>
				<a href="#myList2"><li>Q&A(<%=prod.get(i).getProd_qna() %>)</li></a>
				<a href="#myList3"><li>REVIEW</li></a>
			</ul>
		
		
		<div class="prod_detail_content" id="prod_img">
		
			<div class="info_img_wrap" >
				<img src="shopimg/prod_detail_img1.jpg" style="margin: 0 auto;" >
			</div> 
			
		</div>
		</div>
			
		<div class="prod_detail_tab" id="myList2">
			<ul class="myList" >
				<a href="#myList1"><li>상품이미지</li></a>
				<a href="#myList2"><li style="border-top: 2px solid #000;">Q&A(<%=prod.get(i).getProd_qna() %>)</li></a>
				<a href="#myList3"><li>REVIEW</li></a>
			</ul>
		
		<div class="prod_detail_content" id="prod_qna">
		
			<div id="prod_qna_wrap" >
			 	<%=prod.get(i).getProd_qna() %> 여기에 큐앤에이 리스트 나와야함.
			 	
			 	
			 </div>		
			 
		</div>
		</div>
		
			
		<div class="prod_detail_tab" id="myList3"		>
			<ul class="myList" >
				<a href="#myList1"><li>상품이미지</li></a>
				<a href="#myList2"><li>Q&A(<%=prod.get(i).getProd_qna() %>)</li></a>
				<a href="#myList3"><li style="border-top: 2px solid #000;">REVIEW</li></a>
			</ul>
		
		<div class="prod_detail_content" id="prod_review">
			<div id="prod_review_wrap">
				<%=prod.get(i).getProd_review() %> 여기에 리뷰 리스트 나와야함
				
				
			</div>
		</div>
		</div>
	  
</div>


<!-- -------------------- prod_additional 끝 ---------------------------- -->

</div>


</form>

	<%
}
%>
</section>

<footer>
<jsp:include page="footer.jsp" />
</footer>

</body>
</html>