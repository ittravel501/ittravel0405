<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>항공 예약</title>
        <link rel="stylesheet" href="./css/flight.css">
        <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
        <link rel="stylesheet" href="./slick-1.8.1/slick/slick.css">
        <link rel="stylesheet" href="./slick-1.8.1/slick/slick-theme.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js">
        
        </script> 
        <script src="./slick-1.8.1/slick/slick.min.js">

        </script>
        <script src="./js/flight.js">

        </script>
    </head>
    <style type="text/css">
    </style>
    <body > 
    
         			<div class="select_area2">
         					<label class="come1"> 출발지 </label>
                            <select class="select1">
                              <option value="0" selected> 선택 </option>
                              <option value="제주">제주</option>
                              <option value="김해/부산">김해/부산</option>
                              <option value="김포">김포</option>
                              <option value="인천">인천</option>
                              <option value="광주">광주</option>
                              <option value="여수">여수</option>
                              <option value="울산">울산</option>
                              <option value="양양">양양</option>
                              <option value="오사카">오사카</option>
                              <option value="도쿄(나리타)">도쿄(나리타)</option>
                              <option value="도쿄(하네다)">도쿄(하네다)</option>
                              <option value="후쿠오카">후쿠오카</option>
                              <option value="오키나와">오키나와</option>
                              <option value="삿포로">삿포로</option>
                              <option value="다낭">다낭</option>
                              <option value="방콕">방콕</option>
                              <option value="홍콩">홍콩</option>
                              <option value="타이베이">타이베이</option>
                              <option value="호치민시">호치민시</option>
                              <option value="마닐라">마닐라</option>
                              <option value="세부">세부</option>
                              <option value="하노이">하노이</option>
                              <option value="싱가포르">싱가포르</option>
                              <option value="코타키나발루">코타키나발루</option>
                              <option value="나트랑">나트랑</option>
                              <option value="쿠알라룸푸르">쿠알라룸푸르</option>
                              <option value="상하이">상하이</option>
                              <option value="청도">청도</option>
                              <option value="광저우">광저우</option>
                              <option value="베이징">베이징</option>
                              <option value="연길">연길</option>
                              <option value="심천">심천</option>
                              <option value="로스앤젤레스">로스앤젤레스</option>
                              <option value="하와이(호놀룰루)">하와이(호놀룰루)</option>
                              <option value="뉴욕">뉴욕</option>
                              <option value="밴쿠버">밴쿠버</option>
                              <option value="샌프란시스코">샌프란시스코</option>
                              <option value="토론토">토론토</option>
                              <option value="파리">파리</option>
                              <option value="런던">런던</option>
                              <option value="블라디보스토크">블라디보스토크</option>
                              <option value="로마">로마</option>
                              <option value="프라하">프라하</option>
                              <option value="바르셀로나">바르셀로나</option>
                              <option value="괌">괌</option>
                              <option value="시드니">시드니</option>
                              <option value="멜버른">멜버른</option>
                              <option value="브리즈번">브리즈번</option>
                              <option value="사이판">사이판</option>
                              <option value="오클랜드">오클랜드</option>
                              </select>
                              
                              <label class="come2" > 도착지 </label>
                              <select class="select2">
                              <option value="0" selected> 선택 </option>
                              <option value="제주">제주</option>
                              <option value="김해/부산">김해/부산</option>
                              <option value="김포">김포</option>
                              <option value="인천">인천</option>
                              <option value="광주">광주</option>
                              <option value="여수">여수</option>
                              <option value="울산">울산</option>
                              <option value="양양">양양</option>
                              <option value="오사카">오사카</option>
                              <option value="도쿄(나리타)">도쿄(나리타)</option>
                              <option value="도쿄(하네다)">도쿄(하네다)</option>
                              <option value="후쿠오카">후쿠오카</option>
                              <option value="오키나와">오키나와</option>
                              <option value="삿포로">삿포로</option>
                              <option value="다낭">다낭</option>
                              <option value="방콕">방콕</option>
                              <option value="홍콩">홍콩</option>
                              <option value="타이베이">타이베이</option>
                              <option value="호치민시">호치민시</option>
                              <option value="마닐라">마닐라</option>
                              <option value="세부">세부</option>
                              <option value="하노이">하노이</option>
                              <option value="싱가포르">싱가포르</option>
                              <option value="코타키나발루">코타키나발루</option>
                              <option value="나트랑">나트랑</option>
                              <option value="쿠알라룸푸르">쿠알라룸푸르</option>
                              <option value="상하이">상하이</option>
                              <option value="청도">청도</option>
                              <option value="광저우">광저우</option>
                              <option value="베이징">베이징</option>
                              <option value="연길">연길</option>
                              <option value="심천">심천</option>
                              <option value="로스앤젤레스">로스앤젤레스</option>
                              <option value="하와이(호놀룰루)">하와이(호놀룰루)</option>
                              <option value="뉴욕">뉴욕</option>
                              <option value="밴쿠버">밴쿠버</option>
                              <option value="샌프란시스코">샌프란시스코</option>
                              <option value="토론토">토론토</option>
                              <option value="파리">파리</option>
                              <option value="런던">런던</option>
                              <option value="블라디보스토크">블라디보스토크</option>
                              <option value="로마">로마</option>
                              <option value="프라하">프라하</option>
                              <option value="바르셀로나">바르셀로나</option>
                              <option value="괌">괌</option>
                              <option value="시드니">시드니</option>
                              <option value="멜버른">멜버른</option>
                              <option value="브리즈번">브리즈번</option>
                              <option value="사이판">사이판</option>
                              <option value="오클랜드">오클랜드</option>
                              </select>
                            </div>

</body>
</html>