<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Fjord+One&family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/브랜드.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
</head>
<body>
    <div id="body-wrapper">
        <header> 
            <div class="top">
                <ul>
                    <li><a href="">고객센터</a></li>
                    <li><a href="">회원가입</a></li>
                    <li><a href="">로그인</a></li>
                </ul>
            </div>
    
            <div class="nav">
                <div>
                    <a href="">
                        <img src="../img/로고 누끼.png" id="logo"></a>
                </div>
    
                    
                <div>
                    <ul>
                        <li><a href="" class="ct">브랜드 상품</a></li>
                        <li><a href="" class="ct">베스트 상품</a></li>
                        <li><a href="" class="ct">무드웨어 소개</a></li>
                        <li><a href="" class="ct">웨어러 추천</a></li>
                        <li><a href="" class="ct">문의</a></li>
                    </ul>
                </div>
    
                <div>
                    <ul>
                        <li>
                            <div class="search">
                                <span>&ensp;검색페이지로 이동&emsp;&ensp;</span> 
                                <img src="../img/화살표.png" id="sc">
                            </div>
                        </li>
                        <li><a href=""><img src="../img/좋아요.png" ></a></li>
                        <li><a href=""><img src="../img/장바구니.png"></a></li>
                    </ul>
                </div>
            </div>
        </header>
    <div class="whole"> <!-- 전체를 큰 박스로 감쌈 -->
    <p class="title">&nbsp;브랜드&emsp;<span class="brandNum">50개</span></p>
    <hr>
    <br>
    <ul>
        <li>
            <div class="alphabet"> A </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Annick Goutal<br>아닉구딸</a></div>
                        <div class="brandName"><a href="#">Aqua di Parma<br>아쿠아 디 파르마</a></div>
                        <div class="brandName"><a href="#">Atelier Cologne<br>아틀리에 코롱</a></div>
                        <div class="brandName"><a href="#">AMOUAGE<br>아무아쥬</a></div>
                        <div class="brandName"><a href="#">ANNA SUI<br>안나수이</a></div>
                    </div>
                    <div class="lineBox">    
                        <div class="brandName"><a href="#">Antonio Banderas<br>안토니오 반데라스</a></div>
                        <div class="brandName"><a href="#">Alfred Sung<br>알프레드 성</a></div>
                        <div class="brandName"><a href="#">Aesop<br>이솝</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> B </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Balenciaga<br>발렌시아가</a></div>
                            <div class="brandName"><a href="#">Boon the Shop<br>분더샵</a></div>
                            <div class="brandName"><a href="#">Bulgari<br>불가리</a></div>
                            <div class="brandName"><a href="#">Bully 1803<br>불리 1803</a></div>
                            <div class="brandName"><a href="#">Burberry<br>버버리</a></div>
                        </div>
                        <div class="lineBox">    
                            <div class="brandName"><a href="#">Byredo<br>바이레도</a></div>
                            <div class="brandName"><a href="#">Betty Boop<br>베티 붑</a></div>
                            <div class="brandName"><a href="#">Bijan<br>비잔</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                        </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> C </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Chanel<br>샤넬</a></div>
                        <div class="brandName"><a href="#">Chloé<br>끌로에</a></div>
                        <div class="brandName"><a href="#">Clean<br>클린</a></div>
                        <div class="brandName"><a href="#">Creed<br>크리드</a></div>
                        <div class="brandName"><a href="#">CARVEN<br>까르뱅</a></div>
                    </div>
                    <div class="lineBox">    
                        <div class="brandName"><a href="#">Carlo Corinto<br>카를로 코린토</a></div>
                        <div class="brandName"><a href="#">Calvin Klein<br>캘빈 클라인</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
            </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> D </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Dior<br>디올</a></div>
                            <div class="brandName"><a href="#">Diptyque<br>딥티크</a></div>
                            <div class="brandName"><a href="#">Dolce & Gabbana<br>돌체 앤 가바나</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> E </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Eisenberg<br>아이젠버그</a></div>
                        <div class="brandName"><a href="#">Etro<br>에트로</a></div>
                        <div class="brandName"><a href="#">ELIZABETH ARDEN<br>엘리자베스 아덴</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> F </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Frederick Mal<br>프리데릭말</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> G </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Giorgio Armani<br>조르지오 아르마니</a></div>
                        <div class="brandName"><a href="#">Glossier<br>글로시에</a></div>
                        <div class="brandName"><a href="#">Gucci<br>구찌</a></div>
                        <div class="brandName"><a href="#">Guerlain<br>겔랑</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> H </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Hermes<br>에르메스</a></div>
                            <div class="brandName"><a href="#">Hugo Boss<br>휴고보스</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> J </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Jean-Paul Gaultier<br>장 폴 고티에</a></div>
                        <div class="brandName"><a href="#">Jo Malone<br>조말론</a></div>
                        <div class="brandName"><a href="#">Juicy Couture<br>쥬시꾸뛰르</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> L </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Lancome<br>랑콤</a></div>
                            <div class="brandName"><a href="#">Le Labo<br>르라보</a></div>
                            <div class="brandName"><a href="#">L'Occitane<br>록시땅</a></div>
                            <div class="brandName"><a href="#">Loewe<br>로에베</a></div>
                            <div class="brandName"><a href="#">Lolita Lempica<br>롤리타렘피카</a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> M </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Maison Francis Kurdjing<br>메종 프란시스 커정</a></div>
                        <div class="brandName"><a href="#">Maison Margiela<br>메종 마르지엘라</a></div>
                        <div class="brandName"><a href="#">Marc Jacobs<br>마크제이콥스</a></div>
                        <div class="brandName"><a href="#">Miu Miu<br>미우미우</a></div>
                        <div class="brandName"><a href="#">Moncler<br>몽클레르</a></div>
                    </div>
                    <div class="lineBox">    
                        <div class="brandName"><a href="#">Montblanc<br>몽블랑</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> O </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Oribe<br>오리베</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> P </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Prada<br>프라다</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> R </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Ralph Lauren<br>랄프로렌</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> S </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Salvador Dali<br>살바도르 달리</a></div>
                        <div class="brandName"><a href="#">Santa Maria Novella<br>산타마리아노벨라</a></div>
                        <div class="brandName"><a href="#">Sergeruten<br>세르주루텐 </a></div>
                        <div class="brandName"><a href="#">Sisley<br>시슬리</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> T </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Tom Ford<br>톰포드</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> V </div> <br>
                <div class="brandBox">  <!-- 전체 박스 -->
                    <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                        <div class="brandName"><a href="#">Valentino<br>발렌티노</a></div>
                        <div class="brandName"><a href="#">Victoria's Secret<br>빅토리아시크릿</a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                        <div class="brandName"><a href="#"> <br> </a></div>
                    </div>
                </div>  
        </li>
        <br>
        <br>
        <li>
            <div class="alphabet"> Y </div> <br>
                <div class="brandBox">
                        <div class="lineBox">  <!-- 한줄 박스(한줄에 5개 들어감) -->
                            <div class="brandName"><a href="#">Yves Saint Laurent<br>입생로랑</a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                            <div class="brandName"><a href="#"> <br> </a></div>
                        </div>
                    </div>
        </li>
        <br>
        <br>
    </ul>
    </div>
    <footer>
        <span id="introduce">
            mood wearㅣ인천시 남동구 인주대로 518, 엔타스 12층 (01234)ㅣ대표자 : 장지윤 박경선 정이랑<br>
            사업자 등록번호 : 214-22-07141ㅣ통신판매업신고 : 2022-인천남동, 10392ㅣ개인정보관리책임자 : <br>
            장지윤ㅣ호스팅서비스사업자 : moodwearㅣ고객센터 : 1234-1234ㅣ이메일 : mwmw@mw.co.kr
        </span>

        <div id="ft">
            <ul>
                <li><a href="">개인정보 처리방침 |</a></li>
                <li><a href="">이용약관 |</a></li>
                <li><a href="">사이트맵 |</a></li>
                <li><a href="">환불 정책 | </a></li>
                <li><a href="">회사 세부정보</a></li>
            </ul>
            <span id="copy">Copyright 2022 MOODWEAR Inc. all rights reserved.</span>
        </div>
    </footer>
</body>
</html>