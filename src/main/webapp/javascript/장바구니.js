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

//선택체크박스

function deleteAddress(){
	//Element에 접근시 name가지고 접근, name이 RowCheck인 애들 다 가져옴
	let RowCheck = document.getElementsByName("RowCheck");
	//체크된 애들을 배열에 넣기위해 배열 생성
	let RowCheck_items = [];

	let cnt = $("input[name='RowCheck']:checked").length; 
	if(cnt==0){
		alert("선택된 주소록이 없습니다");
	}else{
	//RowCheck의 길이만큼 반복
	for(let i=0; i<RowCheck.length; i++){
	//RowCheck가 checked되었는지 여부 파악
		if(RowCheck[i].checked){
			RowCheck_items.push(RowCheck[i].value);
		}
	}
		location.href="/AddressServlet?address_num="+RowCheck_items;
	}
	

}
