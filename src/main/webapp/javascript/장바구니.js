//수량 증감
function up(){
    var count = document.getElementById("quantity").value;
    document.getElementById("quantity").value = parseInt(count)+1;
}
function down(){
    var count = document.getElementById("quantity").value;
    if(count != 1){
        document.getElementById("quantity").value = parseInt(count)-1;

    }
}

//합계계산
function totalPrice(){
    var price = document.getElementById("price").value;
    var quantity = document.getElementById("quantity").value;
    
    document.getElementById("total").innerText = parseInt(price) * parseInt(quantity)+"원";
}

//전체선택 체크박스
function checkBox(n){
    var select = document.querySelectorAll(".select_checkbox");
    for(var i=0; i<select.length; i++){
        select[i].checked = n.checked;
    }
}