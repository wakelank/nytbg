$("#sign_submit").click(function(){
            email_id = $("#user_email").val();
            password = $("#user_password").val();

            data =  {email: email_id, password: password };
            url = user/sign_in;

            $.ajax({
                url: url,
                data:  data,
                cache: false,
                type: "post",
                success: function(data){
                    console.log(data);
                }
              });
});
