<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
    <%@page import ="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>내 피드</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
<link rel="stylesheet" href="css/soc_boardCss.css">

</head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script> 
$(document).ready(function() { 
    $("#list").magnificPopup({
        delegate: 'a.popup',
        type: 'ajax',
        modal: false,
        showCloseBtn: false, 
        closeOnContentClick: false,
        closeOnBgClick: true,
        enableEscapeKey: true,
        callbacks: {
            ajaxContentAdded: function() {
                this.content.addClass('white-popup');
                this.content.on('click', function(e){
                	e.stopPropagation();
                });
            }
        },
    }); 
});

$(document).ready(function() {
    $('#write').magnificPopup({
        type: 'ajax',
        closeOnContentClick: false,
        closeOnBgClick: true,
        enableEscapeKey: true,
        callbacks: {
            ajaxContentAdded: function() {
                this.content.addClass('white-popup');
                this.content.on('click', function(e){
                	e.stopPropagation();
                });
            }
        },
        modal: false,
        showCloseBtn: false,
    }); 
});
</script>

<body>

<div>   
	<div class="postWrap"><!-- 전체div -->
	    <!-- 로고,검색창,아이콘 박스 -->
	    <div class="titleWrap">
		    <div class="postLogo">
		    	<a href="soc_basicboard.jsp"><img src="imgs/board/itlog_logo.png"></a>
		    </div>
		    <div class="searchBox">
		       <input type="text" class="search-input" placeholder="검색어를 입력해주세요." />
		       <input type="button" value="검색">
		    </div>
		    <div class="postIcon">
		    	<a href="tour002.jsp"><img src="imgs/board/home_icon.png"></a>
		    	<a href="soc_boardWrite.jsp" id="write"><img src="imgs/board/plus_icon.png"></a>
		    	<a href="#"><img src="imgs/board/bell_icon.png"></a>
		    	<a href="soc_board_my.jsp"><img src="imgs/board/person_icon.png"></a>
		    </div>
		  </div>
		 
	    <!-- 이미지리스트1 -->
	 	<div class="imglistWrap" id="list">
		    <div class="imglist">
			    <div>
				    <a href="soc_boardView_my.jsp" class="popup"><img src="imgs/board/aaa1.jpg"></a>
				    <div>
					    <div class="likeBox">
					    <div>좋아요 n개</div>&nbsp;&nbsp;&nbsp;&nbsp;<div>댓글 n개</div>
					    </div>
				    	<div class="tagbox">#김시도 #김기동 #고영이 #오에오에 #블라블라라라랄 #김시도 #김기동 #고영이 #오에오에</div>
			    	</div>
			    	</div>
			    	<div>
				    <a href="soc_boardView_my.jsp" class="popup"><img src="imgs/board/aaa10.jpg"></a>
				    <div>
					    <div class="likeBox">
					    <div>좋아요 n개</div>&nbsp;&nbsp;&nbsp;&nbsp;<div>댓글 n개</div>
					    </div>
				    	<div class="tagbox">#김시도 #김기동 #고영이 #오에오에 #블라블라라라랄 #김시도 #김기동 #고영이 #오에오에</div>
			    	</div>
			    	</div>
			    	<div>
				    <a href="soc_boardView_my.jsp" class="popup"><img src="imgs/board/aaa12.jpg"></a>
				    <div>
					    <div class="likeBox">
					    <div>좋아요 n개</div>&nbsp;&nbsp;&nbsp;&nbsp;<div>댓글 n개</div>
					    </div>
				    	<div class="tagbox">#김시도 #김기동 #고영이 #오에오에 #블라블라라라랄 #김시도 #김기동 #고영이 #오에오에</div>
			    	</div>
			    	</div>
			    	
			    	
			    </div>
		    </div>
	    </div>
	</div>
  </body>
</html>