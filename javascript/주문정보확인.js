
function setDisplay(){
    if($('input:radio[id=easy_pay]').is(':checked')){
        $('.easypay_method').show();
    }else{
        $('.easypay_method').hide();
    }
}