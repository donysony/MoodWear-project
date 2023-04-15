<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
    <link rel="stylesheet" href="../css/리뷰.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <script>
      let a1 = 0;
      let a2 = 0;
      let a3 = 0;
      function goImg(){
        // 이미지 갯수 3장 제한
        if(a1== 1 && a2==1 && a3==1){
          alert("이미지는 3장만 첨부 가능합니다.")
          return false;
        }
        if(a1==0) {
          document.getElementById("cbfile").click(); 
        } else if(a2==0) {
          document.getElementById("dbfile").click();          
        } else if(a3==0) {
          document.getElementById("fbfile").click();
        }
      }
      function checkImg(obj){
        let file_kind = obj.value.lastIndexOf('.');
        let file_name = obj.value.substring(file_kind+1,obj.length);
        let file_type = file_name.toLowerCase();
        let check_file_type=new Array();
        check_file_type=['jpg','gif','png','jpeg'];
        if(check_file_type.indexOf(file_type)==-1) {
        alert('이미지 파일(jpg, gif, png, jpeg)만 업로드 가능합니다.');
        let parent_Obj=obj.parentNode;
        let node=parent_Obj.replaceChild(obj.cloneNode(true),obj);
        document.getElementById("cbfile").select();
        document.getElementById("cbfile").value = "";
        return false;
        }
        // 이미지 칸 순서대로 업로드 파일 미리보기 표시
        let reader = new FileReader();
        let img
        reader.onload = function(obj){
          if(a1==0) {
            img = document.getElementById("aimg");
              a1 = 1;  
          } else if(a2==0) {
            img = document.getElementById("bimg");
              a2 = 1;
              
          } else if(a3==0){
            img = document.getElementById("cimg");
              a3 = 1;
          }
            img.src = obj.target.result
          }
          reader.readAsDataURL(obj.files[0]);
        }
        function deleteimg(){
              document.getElementById("aimg").src="../img/리뷰이미지.png";
              a1 = 0;
        }
        function deleteimg2(){
              document.getElementById("bimg").src="../img/리뷰이미지.png";
              a2 = 0;
        }
        function deleteimg3(){
              document.getElementById("cimg").src="../img/리뷰이미지.png";
              a3 = 0;
        }
    </script>
</head>
<body>
<section>
    <article class="review_article">
      <form action="">
        <div class="head">
          <b>리뷰쓰기</b>
            <img src="../img/로고 누끼.png" alt="logo">
        </div>
        <div class="iteminfo">
          <img src="../img/조말론 런던 우드세이지.png" alt="product" class="orderitem"> &emsp;
          <div class="orderiteminfo">
          <h3>조말론</h3>
          <p>
            런던 우드세이지<br>
            오 드 뚜왈렛<br>
            100ml</p>
          </div>
        </div>
        <div class="contents">
          <p>다음 사람에게 도움이 되는 생생한 리뷰를 남겨주세요.</p>
          <p><b>어떤점이 좋았나요?</b></p>
          <textarea name="" id="" cols="45" rows="8" placeholder="최소 10자 이상 입력해주세요"></textarea>
        </div>
	        <form action = "upload.jsp" method = "post" enctype = "multipart/form-data">
		       <input type = "file" name = "file" id="cbfile" onchange="checkImg(this)"/>
	           <input type="file" name = "file2" id="dbfile" onchange="checkImg(this)">
	           <input type="file" name = "file3" id="fbfile" onchange="checkImg(this)">
	     	 </form>

         <section id="mom">
            <article>
              <div class="wrap">
                <img class="image" src="../img/리뷰이미지.png" id="aimg">
                <img class="image" src="../img/리뷰이미지.png" id="bimg">
                <img class="image" src="../img/리뷰이미지.png" id="cimg">
              </div>
            </article>

             <article>
              <img src="../img/닫기.png" alt="삭제" id="oc" onclick="deleteimg()">
              <img src="../img/닫기.png" alt="삭제" id="tc" onclick="deleteimg2()">
              <img src="../img/닫기.png" alt="삭제" id="thc" onclick="deleteimg3()">
            </article>
          </section>

        <div class="attach_photo" for="cbfile" onclick="goImg()">
          <img src="../img/camera.png">&emsp;
           <p id="imgcs">사진 첨부하기</p>
        </div>
          <div class="worning">
            <b>상품과 무관한 사진을 첨부한 리뷰는 통보없이 삭제됩니다.</b>
          </div>
          <input type="submit" value="리뷰 등록하기" id="reviewbtn">       
      </form>
    </article>
  </section>
</body>
</html>