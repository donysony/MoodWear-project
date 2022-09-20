
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
