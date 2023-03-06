let index = {
    init: function(){
        $("#btn-save").on("click",()=>{
            this.save();
        });
    },

    save: function(){
        let data = {
            userid: $("#email").val(),
            password: $("#password").val(),
            username: $("#username").val(),
        }

        console.log(data);
    }
}

$.ajax({
    type: "POST",
    url: "/signup",
    data: JSON.stringify(data),
    contentType:"application/json; charset=utf-8",
    dataType:"json"
}).done(function(resp){
    alert(resp + "회원가입 성공");
    console.log(resp);
    location.href="/";
}).fail(function(error){
    //alert(JSON.stringify(error));
    alert(error+"회원가입 실패");
    console.log(error);
    location.href="/signup";
})

index.init();