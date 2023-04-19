<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.util.ArrayList" %>
    
    
    <%@page import="dto.Joininfo" %>
    <%@page import="dto.N_MD" %>
    <%@page import="dto.QNA_MD" %>
    <%@page import="dto.PROD_MD" %>
    <%@page import="dao.N_controller" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>

<link rel="stylesheet" href="css/shopping_buy.css">
</head>

<jsp:useBean id="user" class="dao.N_controller"/> 


<body>
<%

PROD_MD pr = new PROD_MD();
Joininfo join = new Joininfo(); //회원가입 데이터에서 회원정보 가져와야 된다!!

//int prod_quantity = Integer.parseInt(request.getParameter("quantity_opt[]"));
//String prod_name = request.getParameter("prod_name");
//int prod_price = Integer.parseInt(request.getParameter("prod_price"));
//int prod_total_price = Integer.parseInt(request.getParameter("prod_total_price"));

//pr.setProd_quantity(prod_quantity);
//pr.setProd_name(prod_name);
//pr.setProd_price(prod_price);
//pr.setProd_total_price(prod_total_price);

//PROD_MD prod_info = user.Prod_order_info(pr);

//out.println(prod_quantity);

%>

<header>
	   <jsp:include page="header.jsp" />
</header> 

<section>

<div id="shopping_buy_wrap" >

	<div id="s_order" >
		<ul>
			<li>01장바구니</li>
			<li>02주문서작성/결제</li>
			<li>03주문완료</li>
		</ul>		
	</div>
	
	<form action="shopping_pay">
	
		<div id="shopping_pay_wrap" >
		
			<div id="order_addr_wrap" >
			
				<div id="order_addr_title" >
					<h2>배송지 정보</h2>
				</div>
				
				<div id="order_addr_con">
					<table class="shopping_addr_info" >
					
						<tr>
							<th>배송지선택</th>
							<td><input type="text" name="mem_addr" value="" ></td>
						</tr>
						
						<tr>
							<th>받는 분</th>
							<td><input type="text" name="mem_name" value="" ></td>
						</tr>
						
						<tr>
							<th>연락처</th>
							<td><input type="text" name="mem_mobile" value="" ></td>
						</tr>
						
						<tr>
							<th>주소</th>
							<td><input type="text" name="mem_addr" value="" ></td>
						</tr>
						
					</table>
				</div>
			</div>
		
	
		<div id="order_ask_wrap">
			
				<div id="order_ask_title" >
					<h2>배송 요청사항</h2>
				</div>
			
				<div id="order_ask_con">
				
				<table class="shopping_addr_info" >
				
					<tr>
						<th>배송 메시지</th>
						
						<td>
						
						<!-- <input type="checkbox" value="" >  -->
						
						<select  name="ord_ask" >
							<option>배송메시지를 선택해주세요.</option>
							<option>부재시 경비실에 맡겨주세요.</option>
							<option>부재시 문앞에 놓아주세요.</option>
							<option>파손의 위험이 있는 상품이오니, 배송시 주의해주세요.</option>
							<option>배송 전에 연락주세요.</option>
							<option>택배함에 넣어주세요.</option>
							<option>직접 입력하기</option>
							
						</select>
						
						</td>
					</tr>
					
					<tr>
						<th>기타상세내용</th>
						<td><input type="text" name="mem_addr" value="" ></td>
					</tr>
				</table>
					
				</div>
				
			
			
		</div>
		
	
		<div id="order_payway" >
		
			<div id="order_payway_title" >
				<h2>결제수단 선택</h2>
			</div>
			
			<div id="order_payway_wrap">
			
			    <div>
			        <input type="radio" name="payway" value="신용카드" >신용카드
			        <input type="radio" name="payway" value="무통장입금">무통장입금
			        <input type="radio" name="payway" value="카카오페이">카카오페이
			        <input type="radio" name="payway" value="네이버페이">네이버페이
			        <input type="radio" name="payway" value="휴대폰결제">휴대폰결제
			        <input type="radio" name="payway" value="문화상품권">문화상품권
			    </div>
		
			    <div id="credit_card_wrap" style="display:none;">
			        <tr><label for="card_company_select">카드사</label></tr>
			        <td><select id="card_company_select" name="card_company">
			            <option value="국민카드">국민카드</option>
			            <option value="신한카드">신한카드</option>
			            <option value="삼성카드">삼성카드</option>
			            <option value="하나카드">하나카드</option>
			            <option value="롯데카드">롯데카드</option>
			        </select></td>
			    </div>
		    
			    <div id="paymethod2_wrap" >
			    
			    	<div>
				    	<label for="without_bankbook" >은행명</label>
				    	<select id="without_bankbook" name="paymethod2" >
				    		<option>기업</option>
				    		<option>국민</option>
				    		<option>농협</option>
				    		<option>수협</option>
				    		<option>우리</option>
				    		<option>하나</option>
				    		<option>신한</option>
				    	</select>
			    	</div>
			    	
			    	<div>
						 <label>입금기한</label>
						 <div>주문일+1일</div>
			    	</div>
			    	
			    	<div>
			    		<label>입금자명</label>
			    		
			    		<%
			    			session.getAttribute("ord_name");
			    		%>
			    		<div>
			    		(로그인되어있으면 그 사람이름, 수정가능하게 둬야함.)
			    		</div>
			    		
			    	</div>
						    
			    </div>
		    
			</div>
			</div>
			
			</div>
		
		</form>
		
		
		<!-- /////////////////결제방식 선택 시 나오는 자바스크립트 !! /////////////////////-->
		
	

		<script>
		//신용카드 클릭 시 
		    // Get the payment method and credit card company select elements
		    const paywayRadios = document.querySelectorAll('input[name="payway"]');
		    const creditCardWrap = document.getElementById('credit_card_wrap');
		
		    // Add a change event listener to the payment method radio buttons
		    for (let i = 0; i < paywayRadios.length; i++) {
		        paywayRadios[i].addEventListener('change', () => {
		            if (paywayRadios[i].value === '신용카드') {
		                creditCardWrap.style.display = 'block';
		            } else {
		                creditCardWrap.style.display = 'none';
		            }
		        });
		    }
		</script>
		
		<script type="text/javascript">
		//무통장입금 클릭 시 
		$(document).ready(function() {
			  $('input[name="payway"]').change(function() {
			    if ($(this).val() == '무통장입금') {
			      $('#paymethod2_wrap').show();
			    } else {
			      $('#paymethod2_wrap').hide();
			    }
			  });
			});
		
		</script>


	
	</div>
	
</section>



<footer>
	   <jsp:include page="footer.jsp" />
</footer> 

</body>
</html>