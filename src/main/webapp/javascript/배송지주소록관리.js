
function deleteAddress(){
	//Element에 접근시 name가지고 접근, name이 RowCheck인 애들 다 가져옴
	let RowCheck = document.getElementsByName("RowCheck");
	console.log("length = "+RowCheck.length);
	//체크된 애들을 배열에 넣기위해 배열 생성
	//let RowCheck_items = [];
	//RowCheck를 가진 값의 이름 가져오기
	let size = RowCheck.length;
	for(let i =0; i<size;i++){
		console.log(RowCheck[i].value);
	}
	//RowCheck이름을 가진 check중 체크된 것만 값 가져오기
	for(let i=0; i<size;i++){
		if(RowCheck[i].checked == true){
			console.log(RowCheck[i].value+"체크");
		}
	}
	
	/*let cnt = $("input[name='RowCheck']:checked").length; 
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
	}*/
	

}