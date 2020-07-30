jQuery(document).ready(function() {
	$(".login-form").on('submit',function(e){
		var res = $("#code_input_submit").attr("class");
			
			var useraccount = $(this).find(".useraccount").val();
			var password = $(this).find(".password");
			var length = password.length;
			var account_length  = useraccount.length;
			if(length!=null && length!=0){

					if(account_length!=11){
						alert("请输入长度为11位的账号");
						e.preventDefault();
					}else{
						
						if(length==2){
							if($(password[0]).val()!=$(password[1]).val()){
								alert("您输入的两次密码不一致！");
								e.preventDefault();
							}else{
								$.ajax({
									url:'RegisterServlet',
									type:'POST',
									async:true,
									data:{
										"useraccount":useraccount,
										"password":$(password[0]).val()
										},
									dataType:'text',
									success:function(data){
										if(data==1){
											alert("注册成功！");
										}else if(data==0){
											alert("注册失败！");
										}
									},
									error:function(data){
										alert("服务器响应失败");
									}
								})
							}
						}else if(length==1){
							if(res=="1"){
								$.ajax({
									url:'LoginServlet',
									type:'POST',
									async:true,
									data:{
										"useraccount":useraccount,
										"password":$(password[0]).val()
										},
									dataType:'text',
									success:function(data){
										if(data==1){
											alert("登陆成功！");
											window.location.reload();
										}else if(data==0){
											alert("账号或密码有误！");
										}
									},
									error:function(data){
										alert("服务器响应失败");
									}
								})
							}else{
								alert("您输入的验证码有误，请重新输入");
								e.preventDefault();
							}
						}
					}
			}
		
		
			
	})
	$("#comment-form").on("submit",function(){
		var content =$(this).find("#message").val();
		var videoid = $(this).find("#videoid").val();
		$.ajax({
			url:'InsertCommentServlet',
			type:'POST',
			async:true,
			data:{
				"content":content,
				"videoid":videoid
				},
			dataType:'text',
			success:function(data){
				if(data==1){
					alert("发表成功！");
					window.location.reload();
				}else if(data==0){
					alert("发表失败！");
				}
			},
			error:function(data){
				alert("服务器响应失败");
			}
		})
	})
	  
	
})
	
	