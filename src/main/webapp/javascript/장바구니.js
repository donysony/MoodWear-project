//전체선택 체크박스
function checkBox(n){
    var select = document.querySelectorAll(".select_checkbox");
    for(var i=0; i<select.length; i++){
        select[i].checked = n.checked;
    }
    totalPrice();
    
}


//수량 증감
function up(){
    event.target.previousElementSibling.value = parseInt(event.target.previousElementSibling.value) + 1 //선택 이전요소 , 유동적
 	let count = event.target.previousElementSibling.value; //수량
 	let price = event.target.parentElement.previousElementSibling.children[0].value; //정가-문자열
 	price = price.replace(/,/g, "");//,모두 제거 위해 정규식사용
 	let total = parseInt(count) * parseInt(price);//정가 * 수량
 	total = total.toLocaleString('ko-KR'); //나라마다 화폐단위 맞춰줌
 	event.target.parentElement.nextElementSibling.nextElementSibling.children[0].innerText = total+"원"; //=앞에있으면 = 뒤에 있는것을 적어주라, = 뒤에있으면 적혀있는것을 가져와라
 	totalPrice();
}//event.target : 사용자가 함수를 발동시킨 위치 

function down(){
	if(event.target.previousElementSibling.previousElementSibling.value <=1){// 기본이 1이기 때문에 1이하
		alert("0이하는 주문하실수 없습니다^^");
		return false;
	}
    event.target.previousElementSibling.previousElementSibling.value = parseInt(event.target.previousElementSibling.previousElementSibling.value) - 1;
    let count = event.target.previousElementSibling.previousElementSibling.value ;
    let price = event.target.parentElement.previousElementSibling.children[0].value;
 	price = price.replace(/,/g, "");//,모두 제거 위해 정규식사용
 	let total = parseInt(count) * parseInt(price);
 	total = total.toLocaleString('ko-KR'); //나라마다 화폐단위 맞춰줌
 	event.target.parentElement.nextElementSibling.nextElementSibling.children[0].innerText = total+"원"; //=앞에있으면 = 뒤에 있는것을 적어주라, = 뒤에있으면 적혀있는것을 가져와라
 	totalPrice();
	
    
}





//document.querySelector() //딱하나만 가져와 - 무조건 하나로 가져올 수 있는 것을 가져옴 ()안엔 css선택자
//document.querySelectorAll()//해당되는 항목 전부 가져옴

/*
합계구하기 ver1
function totalPrice(){
	let allPrice=0;
	let check = document.querySelectorAll(".select_checkbox:checked");
	for(let i=0;i<check.length;i++){
		let totalprice = check[i].parentElement.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.children[0].innerText;
		totalprice = totalprice.replace(/,/g, "");
		totalprice = totalprice.replace("원","");
		allPrice = allPrice + parseInt(totalprice); 
		
	}
	document.getElementById("payment_value").innerText = allPrice.toLocaleString('ko-KR');
	console.log(document.querySelectorAll(".select_checkbox:checked"));
}*/


//합계구하기 ver2
function totalPrice(){
	let allPrice = 0;
	let check = document.querySelectorAll(".select_checkbox:checked");
	for(let i=0; i<check.length; i++){
		//orderinfo가 몇번째에 있는거냐!
		//check[i].parentElement.parentElement //orderinfo를 가리킴
		
		let hi = [].indexOf.call(document.querySelectorAll(".orderinfo"), check[i].parentElement.parentElement); //두번째 매개변수: 첫번째 매개변수에 몇번째 있는것인지 가져온다		
		let totalprice = document.querySelectorAll(".total")[hi].innerText;  
		totalprice = totalprice.replace(/,/g, "");
		totalprice = totalprice.replace("원","");
		allPrice = allPrice + parseInt(totalprice); 
	}
	document.getElementById("payment_value").innerText = allPrice.toLocaleString('ko-KR')+"원";
	
}

//정규식 사용 - 천단위 콤마찍기 : 사용안함
function priceToString(price){
	return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


//체크된 상품들만 가져와 수량과 장바구니번호를
//근데 up, down함수로 수량이 변경되었는데 이걸 어떻게 가져오지? 똑같이 하면 변경된 값을 가져올 수 있는가?
//글고 얘도 event.target해?
//1. 선택주문 클릭 -> db에 변경수량 저장 : 재접속시 변경수량이 유지됨
//2. 선택주문 클릭 -> 주문페이지에 변경수량 보여짐 : 재접속시 변경수량 초기화
function selectOrder(){
	
	let checkedItem = document.querySelectorAll(".select_checkbox:checked");
	//let quantity = event.target.parentElement.parentElement.previousElementSibling.previousElementSibling.children[1].children[2].children[3].children[0];
	
	
	for(let i=0; i<checkedItem.length; i++){
		let index = [].indexOf.call(document.querySelectorAll(".orderinfo"), checkedItem[i].parentElement.parentElement);
		let quantity = document.querySelectorAll(".quantity")[index].innerText;
		let cart_num = document.querySelectorAll(".select_checkbox")[index].innerText;
		console.log(quantity);
		console.log(cart_num);
		
		
	}
}


