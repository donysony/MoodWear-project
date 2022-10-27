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
	
	
	let index = [].indexOf.call(document.querySelectorAll(".orderinfo"), event.target.parentElement.parentElement);//첫번째 매개변수: 리스트 받아옴, 두번째 매개변수 : 리스트중 몇번째 위치하는지 값을 반환
	console.log(index);
	console.log(document.querySelectorAll(".CartFrm")[index]);
	
	document.querySelectorAll('.CartFrm')[index].children[1].value = count;
	document.querySelectorAll('.CartFrm')[index].submit();
	
	
 	totalPrice();
 	
}//event.target : 사용자가 함수를 발동시킨 위치 
 	
 	
 	function order(){
	let cart_num = event.target.parentElement.parentElement.children[0].children[0].value;
	location.href="주문정보확인.jsp?cart_num="+cart_num;	
}

function Delete(){
	let cart_num = event.target.parentElement.parentElement.children[0].children[0].value;
	location.href="장바구니상품삭제Action.jsp?cart_num="+cart_num;
}

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
 	let index = [].indexOf.call(document.querySelectorAll(".orderinfo"), event.target.parentElement.parentElement);
 	console.log(index);
    console.log(document.querySelectorAll(".CartFrm")[index]);
    document.querySelectorAll(".CartFrm")[index].children[1].value = count;
	document.querySelectorAll('.CartFrm')[index].submit();
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


//선택주문
function selectOrder(){
	//check박스 선택 후 선택주문 버튼 클릭시 이벤트
	var checkBoxArr = [];
	$("input:checkbox[name='product']:checked").each(function(){
		checkBoxArr.push($(this).val());// 체크된 것만 값을 뽑아 배열에 push
	})
	console.log(checkBoxArr);

	
	//up, down이 클릭된 인덱스 번호 - 히든폼 인덱스 번호 비교
	//클릭된 up의 인덱스번호 가져오기
//up, down이 클릭된 인덱스번호와 히든폼 인덱스번호비교
//잂치하는 인덱스번호input에 수량입력 후 submit
/*		let arraycheck = Array.from(check); //유사배열을 배열로 변환
		console.log("배열 = "+arraycheck); //배열출력
		console.log('길이='+arraycheck.length); //
		console.log(arraycheck.indexOf(check[0]));
		console.log(arraycheck.indexOf(check[1]));*/

	//let checkBox = "";
	
	//for(let i=0; check.length;i++){
	//	checkBox = checkBox + check[i].checked+" ";		
		//console.log(i+'checkBox = '+ checkBox) //여기선 제대로 값이 들어간 듯 보이나
	//}
	//checkBox.trim().split(" ");
		//console.log('checkBox = '+ checkBox) //출력안됨
	

	}
	



