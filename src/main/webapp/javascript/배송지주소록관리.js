/*function deleteAddress(){
	var cnt = $("input[name='RowCheck']:checked").length;  // input태그 중 name이 RowCheck인 것들 중 check된 것들의 개수를 구함 jQuery - 이 개수를 구하는 이유 controller로 check된 개수를 보내서 그 개수만큼 delete문 실행하기 때문
	var arr = new Array(); //Array객체를 생성하는 이유 check된 것들의 id값을 배열에 담아 배열객체를 controller로 넘겨줌
	$("input[name='RowCheck']:checked").each(function(){
	console.log($("input[name='RowCheck']:checked").attr('value'));
		arr = arr.push($(this).attr('value')); //.each메서드 안에서 동작, id값을 배열의 0번째 index부터 저장, array라는 자료구조에 맞는 삽입함수를 이용해 저장-> 그 함수가 push임, attr메서드 이용해 id값 추출
	}) //$("input[name='RowCheck']:checked")는 checkbox중 check된 것의 jQuery선택자, .each메서드는 jquery를 사용해 배열을 관리, 매개변수로 받은 것을 사용해 반복문과 같이 배열이나 객체의 요소 검사
	if(cnt==0){
		alert("선택된 주소록이 없습니다");
	}else{
		location.href="/AddressServlet?address_num="+arr+"&address_length="+cnt;
		}
	
}*/

function deleteAddress(){
	//Element에 접근시 name가지고 접근, name이 RowCheck인 애들 다 가져옴
	let RowCheck = document.getElementsByName("RowCheck");
	//체크된 애들을 배열에 넣어둠
	let RowCheck_items = [];
	//RowCheck의 길이만큼 반복
	for(let i=0; i<RowCheck.length; i++){
	//RowCheck가 checked되었는지 여부 파악
		if(RowCheck[i].checked){
			RowCheck_items.push(RowCheck[i].value);
			location.href="/AddressServlet?address_num="+RowCheck_items;
		}else{
			alert("선택된 주소록이 없습니다");
		}
	}
	
}