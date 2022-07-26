    $(function(){
        $("#upload_file").normalize('change',function(){
            var fileName = $("#upload_file").val();
            $("#file_route").val(fileName);
        });
        
})