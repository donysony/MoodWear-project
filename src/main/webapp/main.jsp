<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOODWEAR</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <style>
        .first_prod{display: flex; justify-content: space-between; margin-left: 0px;}
    </style>
    <script src="JS/jquery-3.6.0.min.js"></script>
    <script src="JS/jquery-ui.min.js"></script>
    <script>
        $(function(){
            let sli = $(".first_prod")
            let i = 1;
            let z = -1428;

            $(".farrow").click(function(){

                let x = i*z;
  
                sli.animate({"margin-left":x});
                
                i++;

                if(i == 3){
                    sli.removeAttr("style");
                    i = 0;
                }
            })
        })

        $(function(){
            let sli = $(".second_prod")
            let i = 1;
            let z = -1428;

            $(".sarrow").click(function(){

                let x = i*z;
  
                sli.animate({"margin-left":x});
                
                i++;

                if(i == 3){
                    sli.removeAttr("style");
                    i = 0;
                }
            })
        })
    </script>
</head>
<body>

<header>
<jsp:include page="header.jsp"/>
</header>
    <div id="body-wrapper">
            <section>
                <div>
                    <img src="img/메인3.jpg" id="main">
                </div>
            </section>

            <section id="first">
                <p class="name">베스트셀러</p>

                <article class="first_prod">
                    <div id="a">
                        <div class="ibox">
                            <img src="img/가브리엘.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>

                    <div id="b">
                        <div class="ibox">
                            <img src="img/톰포드.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">톰포드 LOST CHERRY</div>
                            <div class="prodTag">
                                <div>#과일향</div>
                                <div>#관능적</div>
                                <div>#30대</div>
                            </div>
                            <div class="volume">100mlㅣ909,000</div>
                        </div>
                    </div>

                    <div id="c">
                        <div class="ibox">
                            <img src="img/세르주 루텐.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">세르주 루텐 다튜라느와</div>
                            <div class="prodTag">
                                <div>#상큼한</div>
                                <div>#사탕향</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">50mlㅣ143,500</div>
                        </div>
                    </div>

                    <div id="d">
                        <div class="ibox">
                            <img src="img/테싯.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">이솝 테싯</div>
                            <div class="prodTag">
                                <div>#유자</div>
                                <div>#바질</div>
                                <div>#흙내음</div>
                            </div>
                            <div class="volume">50mlㅣ140,000</div>
                        </div>
                    </div>

                    <div id="e">
                        <div class="ibox">
                            <img src="img/딥디크 필로시코스.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">딥디크 필로시코스</div>
                            <div class="prodTag">
                                <div>#ㄱㄴㄷ</div>
                                <div>#ㅁㅂㅅ</div>
                                <div>#ㅇㅈㅊ</div>
                            </div>
                            <div class="volume">100mlㅣ188,000</div>
                        </div>
                    </div>

                    <div id="f">
                        <div class="ibox">
                            <img src="img/안나수이 판타지아.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        
                        <div class="tag">
                            <div class="prodName">안나수이 판타지아</div>
                            <div class="prodTag">
                                <div>#과일향</div>
                                <div>#관능적</div>
                                <div>#30대</div>
                            </div>
                            <div class="volume">100mlㅣ909,000</div>
                        </div>
                    </div>

                    <div id="g">
                        <div class="ibox">
                            <img src="img/세르주 루텐.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">세르주 루텐 다튜라느와</div>
                            <div class="prodTag">
                                <div>#상큼한</div>
                                <div>#사탕향</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">50mlㅣ143,500</div>
                        </div>
                    </div>

                    <div id="h">
                        <div class="ibox">
                            <img src="img/테싯.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">이솝 테싯</div>
                            <div class="prodTag">
                                <div>#유자</div>
                                <div>#바질</div>
                                <div>#흙내음</div>
                            </div>
                            <div class="volume">50mlㅣ140,000</div>
                        </div>
                    </div>
                    <div id="i">
                        <div class="ibox">
                            <img src="img/가브리엘.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>

                    <div id="j">
                        <div class="ibox">
                            <img src="img/톰포드.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">톰포드 LOST CHERRY</div>
                            <div class="prodTag">
                                <div>#과일향</div>
                                <div>#관능적</div>
                                <div>#30대</div>
                            </div>
                            <div class="volume">100mlㅣ909,000</div>
                        </div>
                    </div>

                    <div id="k">
                        <div class="ibox">
                            <img src="img/세르주 루텐.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">세르주 루텐 다튜라느와</div>
                            <div class="prodTag">
                                <div>#상큼한</div>
                                <div>#사탕향</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">50mlㅣ143,500</div>
                        </div>
                    </div>

                    <div id="l">
                        <div class="ibox">
                            <img src="img/테싯.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">난 마지막</div>
                            <div class="prodTag">
                                <div>#유자</div>
                                <div>#바질</div>
                                <div>#흙내음</div>
                            </div>
                            <div class="volume">50mlㅣ140,000</div>
                        </div>
                    </div>
                </article>

                <img src="img/우화살.png" class="farrow">
            </section>

            <section id="first">
                <p class="name">TREND NOW</p>

                <article class="second_prod">
                    <div>
                        <div class="ibox">
                            <img src="img/바니유 앙상세 코롱 압솔뤼.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">바니유 앙상세 코롱 압솔뤼</div>
                            <div class="prodTag">
                                <div>#라임</div>
                                <div>#상큼한</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">100mlㅣ203,900</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아쿠아 알레고리아.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">겔랑 아쿠아 알레고리아</div>
                            <div class="prodTag">
                                <div>#만다린</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">75mlㅣ150,100</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/버버리 her.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">버버리 her</div>
                            <div class="prodTag">
                                <div>#머스크</div>
                                <div>#청량한</div>
                                <div>#시원한</div>
                            </div>
                            <div class="volume">100mlㅣ168,000</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아무아쥬.jpg" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">아무아쥬 디아 우먼 EDP</div>
                            <div class="prodTag">
                                <div>#우아한</div>
                                <div>#꽃다발</div>
                                <div>#가을</div>
                            </div>
                            <div class="volume">100mlㅣ428,000</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/바니유 앙상세 코롱 압솔뤼.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">바니유 앙상세 코롱 압솔뤼</div>
                            <div class="prodTag">
                                <div>#라임</div>
                                <div>#상큼한</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">100mlㅣ203,900</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아쿠아 알레고리아.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">겔랑 아쿠아 알레고리아</div>
                            <div class="prodTag">
                                <div>#만다린</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">75mlㅣ150,100</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/버버리 her.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">버버리 her</div>
                            <div class="prodTag">
                                <div>#머스크</div>
                                <div>#청량한</div>
                                <div>#시원한</div>
                            </div>
                            <div class="volume">100mlㅣ168,000</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아무아쥬.jpg" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">아무아쥬 디아 우먼 EDP</div>
                            <div class="prodTag">
                                <div>#우아한</div>
                                <div>#꽃다발</div>
                                <div>#가을</div>
                            </div>
                            <div class="volume">100mlㅣ428,000</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/바니유 앙상세 코롱 압솔뤼.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">바니유 앙상세 코롱 압솔뤼</div>
                            <div class="prodTag">
                                <div>#라임</div>
                                <div>#상큼한</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">100mlㅣ203,900</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아쿠아 알레고리아.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>
                        <div class="tag">
                            <div class="prodName">겔랑 아쿠아 알레고리아</div>
                            <div class="prodTag">
                                <div>#만다린</div>
                                <div>#20대</div>
                                <div>#여름</div>
                            </div>
                            <div class="volume">75mlㅣ150,100</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/버버리 her.png" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">버버리 her</div>
                            <div class="prodTag">
                                <div>#머스크</div>
                                <div>#청량한</div>
                                <div>#시원한</div>
                            </div>
                            <div class="volume">100mlㅣ168,000</div>
                        </div>
                    </div>

                    <div>
                        <div class="ibox">
                            <img src="img/아무아쥬.jpg" class="product">
                                <div class="two">
                                    <div class="tbox">
                                        <img src="img/좋아요.png">
                                    </div> &ensp;
                
                                    <div class="tbox">
                                        <img src="img/장바구니.png">
                                    </div>
                                </div>
                        </div>

                        <div class="tag">
                            <div class="prodName">아무아쥬 디아 우먼 EDP</div>
                            <div class="prodTag">
                                <div>#우아한</div>
                                <div>#꽃다발</div>
                                <div>#가을</div>
                            </div>
                            <div class="volume">100mlㅣ428,000</div>
                        </div>
                    </div>
                </article>
                
                <img src="img/우화살.png" class="sarrow">
            </section>

            <section>
                <a href="회원가입.html"><img src="img/가입배너.png" id="banner"></a>
            </section>
        </div>
  <footer>
<jsp:include page="footer.jsp"/>
</footer>
    </body>
    </html>