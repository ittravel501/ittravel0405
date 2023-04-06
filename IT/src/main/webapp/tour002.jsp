<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>투어페이지</title>
	<!--link-->
	<link rel="stylesheet" href="css/tour_index.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
	
	<link rel="stylesheet" href="css/slick.css" />
	<link rel="stylesheet" href="css/slick-theme.css" />

	<script src="js/jquery.js"></script>
	
	<script src="js/slick-1.8.1/slick/slick.min.js"></script>
	<!--수정-->

	<!-- -->
	
</head>
<body>
 <header>
  <%@include file="header.jsp" %>
</header>


<div id="wrap" style="text-align: center;">
		<!--투어페이지-->
		<div id="topwrap" style="text-align: center;">
			<div class="slider">
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/01tour (1).jpg">
						<span class="float-text">#하와이</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/tour08.jpg">
						<span class="float-text">#호옹콩</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">	
						<img src="imgs/tour/01tour (2).png">
						<span class="float-text">#유럽</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/01tour (2).jpg">
						<span class="float-text">#호주</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/large.jpg">
						<span class="float-text">#오사카</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/01tour (1).png">
						<span class="float-text">#유럽</span>
					</div>
				</div>
				<div>
					<div class="imgwrap">
						<img src="imgs/tour/tour06.jpg">
						<span class="float-text">#어디지</span>
					</div>
				</div>
			</div>
			<div id="all">
				<div id="cat_wrap">
					<div id="cat_wrap02">
					<div class="category" style="font-size: 15px;" >카테고리</div>
					<div id="cat_wrap01">
						<div class="group">
							<div class="select-group">
								<select class="drop_02">
									<option>해외여행</option>
									<option>일본</option>
									<option>동남아</option>
									<option>홍콩·대만·중국</option>
									<option>미주·하와이</option>
									<option>유럽</option>
								</select>
								<select class="drop_02">
									<option>국내여행</option>
									<option>서울·경기·인천</option>
									<option>강원도</option>
									<option>경상도</option>
									<option>전라도</option>
									<option>충청도</option>
								</select>
									<select class="drop_02">
									<option>제주도</option>
									<option>제주시</option>
									<option>서귀포시</option>
								</select>
							</div>
							<ul class="link-group">
								<li><a href="#">입장권·패스·현지투어</a></li>
								<li><a href="#">패키지·자유여행</a></li>
								<li><a href="#">해외호텔·숙박</a></li>
								<li><a href="#">지역별상품</a></li>
							</ul>
						</div>
					</div>
					</div>
					</div>
			</div>
			<div id="bottomwrap">
				<div id="drop_1">
					<select class="drop_01">
						<option>인기순</option>
						<option>최신순</option>
						<option>판매량순</option>
						<option>가격낮은순</option>
					</select>
					<select class="drop_01">
						<option>#힐링</option>
						<option>#액티비티</option>
						<option>#맛집</option>
						<option>#교통</option>
						<option>#테마파크</option>
						<option>#문화</option>
					</select>
					<select class="drop_01">
						<option>#혼자</option>
						<option>#친구와</option>
						<option>#부모님과</option>
						<option>#아이와</option>
						<option>#연인과</option>
						<option>#반려동물과</option>
					</select>
				</div>
				<div class="wrap001">
					<div id="prod_con">
						<ul>
							<li>
								<div class="prod_img"><a href="#"><img src="imgs/tour/tour01.jpg"></a></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜🤍<a href="count">[29]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour02.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜💜<a href="count">[4]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour03.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜🤍<a href="count">[12]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour04.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜💜<a href="count">[92]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour05.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜💜<a href="count">[29]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour06.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜💜<a href="count">[29]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour07.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tour/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜🤍<a href="count">[29]</a></div>
								</div>
							</li>
							<li>
								<div class="prod_img"><img src="imgs/tour/tour08.jpg"></div>
								<div class="prod_txt">
									<div class="txt00">[히트상품]</div>
									<div class="txt01"><br/>얼리버드 세부퍼시픽 <br/>특가좌석</div>
									<div class="txt02"><br/>
									세부 / 마닐라 편도 항공권 11%</div><br/>
									<div class="img03"><img src="imgs/tours/calender.png" style="width: 24px; opacity: 70%;"></div>
									<div class="txt04">~9월 초 출발일</div>
									<div class="txt05"><br/>899,000원~</div>
									<div class="average"><br/>💜💜💜💜💜<a href="count">[225]</a></div>
								</div>
							</li>
						</ul>		
					</div>
					<div id="pagewrap">
						<ul>
							<li class="page_arr"><a href="#"><</a></li>
							<li class="page_icon"><a href="#">1</a></li>
							<li class="page_icon"><a href="#">2</a></li>
							<li class="page_icon"><a href="#">3</a></li>
							<li class="page_icon"><a href="#">4</a></li>
							<li class="page_icon"><a href="#">5</a></li>
							<li class="page_arr"><a href="#">></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	  <footer>
           <%@include file="footer.jsp" %>
        </footer>
	<script>
		$( document ).ready( function() {
			$('.slider').slick({
				autoplay: true,
				autoplaySpeed : 4000,
					arrows: false,
					centerMode: true,
					centerPadding: '0',
					slidesToShow: 4,
				});
			} );
		function searchToggle(obj, evt){
    var container = $(obj).closest('.search-wrapper');
        if(!container.hasClass('active')){
            container.addClass('active');
            evt.preventDefault();
        }
        else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){
            container.removeClass('active');
            // clear input
            container.find('.search-input').val('');
        }
}

	</script>	
</body>
</html>