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

//정규식 사용 - 천단위 콤마찍기
function priceToString(price){
	return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

//합계계산
function totalPrice(){
    var price = document.getElementById("price").value;
    //콤마 찍혀있는 숫자를 정수형으로 변환
    price = parseInt(price.replace(/,/g, ''));
    var quantity = document.getElementById("quantity").value;
    var total = price * quantity;
    document.getElementById("total").innerText = priceToString(total) +" 원";
}

//전체선택 체크박스
function checkBox(n){
    var select = document.querySelectorAll(".select_checkbox");
    for(var i=0; i<select.length; i++){
        select[i].checked = n.checked;
    }
}

//선택체크박스

function selectCheck(){
	//Element에 접근시 name가지고 접근, name이 product인 애들 다 가져옴
	let productCheck = document.getElementsByName("product");
	//체크된 애들을 배열에 넣기위해 배열 생성
	let productCheck_items = [];

	let cnt = $("input[name='product']:checked").length; 
	if(cnt==0){
		alert("선택된 상품이 없습니다");
	}else{
	//product의 길이만큼 반복
	for(let i=0; i<productCheck.length; i++){
	//product가 checked되었는지 여부 파악
		if(productCheck[i].checked){
			productCheck_items.push(productCheck[i].value);
		}
	}
		//장바구니에서 선택된 상품들만 주문하도록 주문페이지로 이동
		location.href="/OrderServlet?cart_num="+productCheck_items;
	}
	

}
