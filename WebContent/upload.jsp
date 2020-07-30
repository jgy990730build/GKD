<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户投稿</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<style type="text/css">
        #progressBar{width: 560px;height: 10px;border: 1px #EEE solid;  border-radius:0 10px 10px 0; margin-top:5px;}
        #progress{width: 0%;height: 10px;background-color: #4dec9b;    border-radius:0 10px 10px 0;}
    </style>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/css/style.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script>
function previewFile() {
	var preview = document.getElementById("upload_img");
  var file    = document.querySelector('input[type=file]').files[0];
  var reader  = new FileReader();
  reader.onloadend = function () {
    preview.src = reader.result;
  }

  if (file) {
    reader.readAsDataURL(file);
  } else {
    preview.src = "";
  }
}

$('#upload_img').on('change',function(){
if( $('#upload_img').attr('src') == '' ){
	$(this).hide();
}
});
	
</script>
<script type="text/javascript">
    function changeAgentContent(){
        document.getElementById("inputFileAgent").value = document.getElementById("path1").value;
    }
</script>
<script>
 $(function(){
  $("#uploadform").on('submit',function(e){
    var path1 = $("#spicture").val();
    var path2 = $("#spicture1").val();
      console.log(path1);
       console.log(path2);
    var str1=path1.substring(path1.indexOf('.')+1);
    var str2=path2.substring(path2.indexOf('.')+1);
    var b=0;
    var b1=0;
    var img_type= ["jpg","gif","png"];
    var video_type = ["mp4"];
    for(i=0;i<img_type.length;i++){
     if(str1==img_type[i]){
      b=1;
     }
    }
     for(i=0;i<video_type.length;i++){
      if(str2==video_type[i]){
       b1=1;
      }
    }
    if(b==0){
     alert("只能上传图片文件的文件格式，请重新输入！");
     e.preventDefault();
    }else if(b1==0){
     alert("只能上传mp4文件的文件格式，请重新输入！");
     e.preventDefault();   
    }else if(b1==1 && b==1){
   			 var pro=null;
  	 			pro=setInterval(function(){
                $.get("UploadServlet","",function(data){
                    if(data=='100%'){
                        clearInterval(pro);
                        $("#proInfo").text("上传进度：100%");
                         //更新进度条
                        $("#progress").width("100%");
                    }else{//正在上传
                        //更新进度信息
                        $("#proInfo").text("上传进度："+data);
                        //更新进度条
                        $("#progress").width(data);
                    }
                });
            },200);
    }else{
    alert("缺少上传文件，请检查你的文件是否齐全！");
     e.preventDefault(); 
    }
   
  });
 });

</script>
</head>
<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
	 <div class="banner-inner-dott">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile part2">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp"><span>乐</span><span>趣</span>电影网</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">主页</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">类型 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="action.jsp?vtype=动作">动作</a></li>
											<li><a href="action.jsp?vtype=传记">传记</a></li>
											<li><a href="action.jsp?vtype=犯罪">犯罪</a></li>
											<li><a href="action.jsp?vtype=家庭">家庭</a></li>
											<li><a href="action.jsp?vtype=惊悚">惊悚</a></li>

										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="action.jsp?vtype=奇幻">奇幻</a></li>
											<li><a href="action.jsp?vtype=喜剧">喜剧</a></li>
											<li><a href="action.jsp?vtype=记录">记录</a></li>
											<li><a href="action.jsp?vtype=科幻">科幻</a></li>
											<li><a href="action.jsp?vtype=恐怖">恐怖</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="action.jsp?vtype=古装">古装</a></li>
											<li><a href="action.jsp?vtype=历史">历史</a></li>
											<li><a href="action.jsp?vtype=音乐">音乐</a></li>
                                            <li><a href="action.jsp?vtype=爱情">爱情</a></li>
											<li><a href="action.jsp?vtype=战争">战争</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="action.jsp">电视剧</a></li>
							<li><a href="news.jsp">新闻</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">全部地区 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="action.jsp">亚洲</a></li>
												<li><a href="action.jsp">法国</a></li>
												<li><a href="action.jsp">台湾</a></li>
												<li><a href="action.jsp">美国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="action.jsp">中国</a></li>
												<li><a href="action.jsp">香港</a></li>
												<li><a href="action.jsp">日本</a></li>
												<li><a href="action.jsp">泰国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="action.jsp">欧洲</a></li>
												<li><a href="action.jsp">印度</a></li>
												<li><a href="action.jsp">韩国</a></li>
												<li><a href="action.jsp">英国</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="list.jsp">A-Z列表</a></li>
							<li class="dropdown">
                           		<a href="#" class="dropdown-toggle" data-toggle="dropdown">个人中心<b class="caret"></b></a>
                           		<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="contact.jsp">用户中心</a></li>
												<li><a href="upload.jsp">用户投稿</a></li>
												<li><a href="uploaded.jsp">投稿记录</a></li>
											</ul>
										</div>
									</li>
								</ul>
                             
                           	</li>
								<%
							    	if(session.getAttribute("useraccount")!=null){
							    		out.print("<a href='contact.jsp'><img src='images/touxiang.jpg' alt='' width='60px' height='60px' style='border-radius:50%; border:2px white solid'></a>");
							    	}else{
							    		out.print("<li><a href='#' class='login'  data-toggle='modal' data-target='#myModal4'>登录</a></li><li><a href='#' class='login reg'  data-toggle='modal' data-target='#myModal5'>注册</a></li>");
							    	}
							    %>
						</ul>

					<div style="float:right;">
							<div class="w3ls_search" style="margin-top:25px;margin-left:-100px;float:left;">
									
									<div class="cd-main-header" >
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
									</div>	
							</div>
					</div>
					</div>
					
					<div class="clearfix"> </div>
									
				</nav>
					<div class="w3ls_search">
									<div id="cd-search" class="cd-search">
										<form action="result.jsp" method="post">
											<input name="Search" type="search" placeholder="Search...">
										</form>
									</div>
								</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm"></div>
			<!--//banner-bottom-->
		     <!-- Modal1 -->
					<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>登录</h4>
										<div class="login-form">
											<form action="" method="post">
												<input type="text" id="useraccount" class="useraccount" name="useraccount" placeholder="输入账号" required>
												<input type="password" id="password" class="password" name="password" placeholder="输入密码" required>
												<!--生成图片验码证，点击刷新验证码-->
												验证码：<div id="v_container" style="width:125px;height:30px;margin-top:5px;"></div>
												<input type="text" placeholder="输入验证码" name="random" size="4" id="code_input" />
												<div class="tp">
													<input id="code_input_submit" class="0" type="submit" value="登录">
												</div>
												<div class="forgot-grid">
												       <div class="log-check">
														<label class="checkbox"><input type="checkbox" name="checkbox">记住我</label>
														</div>
														<div class="forgot">
															<a href="#" data-toggle="modal" data-target="#myModal2">忘记密码?</a>
														</div>
														<div class="clearfix"></div>
													</div>
												
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
				  <!-- Modal1 -->
					<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>注册</h4>
										<div class="login-form">
											<form action="" method="post">
											    <input type="text" id="useraccount" class="useraccount" name="useraccount" placeholder="账号" required>
												<input type="password" id="password" class="password" name="password" placeholder="密码" required>
												<input type="password" id="password" class="password" name="conform password" placeholder="确认密码" required>
												<div class="signin-rit">
														<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">我同意你的<a class="w3layouts-t" href="#" target="_blank">使用条款</a>和<a class="w3layouts-t" href="#" target="_blank">隐私政策</a></label>
													</span>
												</div>
												<div class="tp">
													<input type="submit" value="注册">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
						<!-- breadcrumb -->
	<div class="w3_breadcrumb">
		<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.jsp">主页</a><i>//</i></li>
				<li>用户投稿</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
							<div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">投稿</h3>
								<p class="w3ls_head_para">留下一个有趣的视频叭</p>
							</div>
						<div class="w3_mail_grids">
						<iframe name="aa" style="display: none;"></iframe>
								<form id="uploadform" action="UploadServlet" method="post" enctype="multipart/form-data">
									<div class="col-md-6 w3_agile_mail_grid">
										<span class="input input--ichiro"></span>
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="text" id="input-25" name="name" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-25">
												<span class="input__label-content input__label-content--ichiro">视频名称</span>
											</label>
										</span>
										<span class="input input--ichiro">
										<b>视频分类：</b>
										<select name="vtype" data-ratio="true" style="width:80%;height:35px;background:#f0f0f0;">
												<script>
												var str = ["动作","奇幻","古装","传记","喜剧","历史","犯罪","记录","音乐","家庭","科幻","爱情","惊悚","恐怖","战争"];
												for(var i=0;i<str.length;i++){
													document.write("<option value='"+str[i]+"'>"+str[i]+"</potion>");
												}
												</script>
											</select>
										</span>
										<input type="file" id="spicture" onchange="previewFile()" name="spicture" style="display:none;">
										<input type="button" onclick="document.getElementById('spicture').click()" value="上传封面"  style="position:absolute; bottom:0; width: 30%;" />
										<img id="upload_img" src="images/cover.PNG" height="310" width="500">
									</div>
									<div class="col-md-6 w3_agile_mail_grid two">
										<input type="file" id="spicture1" onchange="changeAgentContent()" name="spicture1" style="display:none;">
										<input type="button" onclick="document.getElementById('spicture1').click()" value="上传视频" />
										<div id="progressBar">
            							<div id="progress"></div>
       	 								</div>
        								<span id="proInfo">上传进度：0%</span>
										<textarea name="Message" placeholder="视频简介" required></textarea>
										
										<input type="submit" value="提交" style="margin-top: 89px;">
									</div>
									<div class="clearfix"> </div>
								</form>
								
					
					</div>
					</div>
							
				</div>
			<!--//content-inner-section-->


	<!--/footer-bottom-->
		<div class="contact-w3ls" id="contact">
			<div class="footer-w3lagile-inner">
			<h2>订购我们的<span>新闻稿</span></h2>
				<div class="footer-contact">
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="输入邮箱...." required>
						<input type="submit" value="订购">
					</form>
				</div>
					<div class="footer-grids w3-agileits">
						<div class="col-md-2 footer-grid">
						<h4>发布时间</h4>
							<ul> 
								<li><a href="#" title="Release 2016">2016</a></li> 
								<li><a href="#" title="Release 2015">2015</a></li>
								<li><a href="#" title="Release 2014">2014</a></li> 
								<li><a href="#" title="Release 2013">2013</a></li> 
								<li><a href="#" title="Release 2012">2012</a></li>
								<li><a href="#" title="Release 2011">2011</a></li> 
							</ul>
						</div>
						<div class="col-md-2 footer-grid">
						<h4>电影类型</h4>
							<ul>
								
								<li><a href="action.jsp">奇幻</a></li>
								<li><a href="action.jsp">喜剧</a></li>
								<li><a href="action.jsp">科幻</a></li>
								<li><a href="action.jsp">动作</a></li>
								<li><a href="action.jsp">电影</a></li>
								<li><a href="action.jsp">惊悚</a></li>
								
							</ul>
						</div>
				

							<div class="col-md-2 footer-grid">
								<h4>回顾电影</h4>
									<ul class="w3-tag2">
									<li><a href="action.jsp">喜剧</a></li>
									<li><a href="action.jsp">惊悚</a></li>
									<li><a href="action.jsp">历史</a></li>
									<li><a href="action.jsp">浪漫</a></li>
									<li><a href="action.jsp">爱情</a></li>
									<li><a href="action.jsp">动作</a></li>
									<li><a href="single.jsp">评价</a></li>
									<li><a href="action.jsp">喜剧</a></li>
									<li><a href="action.jsp">惊悚</a></li>
									<li><a href="action.jsp">历史</a></li>
									<li><a href="action.jsp">浪漫</a></li>
									<li><a href="action.jsp">爱情</a></li>
									<li><a href="action.jsp">喜剧</a></li>
									<li><a href="action.jsp">惊悚</a></li>
									<li><a href="action.jsp">历史</a></li>
									
								</ul>


						</div>
								<div class="col-md-2 footer-grid">
						<h4>最新电影</h4>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/1.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">电影名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/2.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">电影名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
							
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/4.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">电影名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/3.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">电影名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<div class="col-md-2 footer-grid">
						   <h4 class="b-log"><a href="index.jsp"><span>乐</span><span>趣</span>电影网</a></h4>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m1.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m2.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m3.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m4.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m5.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m6.jpg" alt=" " class="img-responsive"></a>
							</div>
								
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
						<ul class="bottom-links-agile">
								
								
							</ul>
					</div>
					<h3 class="text-center follow">联系<span>我们</span></h3>
						<ul class="social-icons1 agileinfo">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>	
					
			 </div>
						
			</div>
			
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<!-- //search-jQuery -->
			

<script type="text/javascript">
$(function(){
		$("#code_input_submit").click(function(){
			<!--验证-->
			var res = verifyCode.validate(document.getElementById("code_input").value);
			if(res){
				$(this).attr("class","1");
			}
		});
	<!--调用js方法-->
	var verifyCode = new GVerify("v_container");
})
</script>
<script src="js/gVerify.js"></script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="js/bootstrap.js"></script>
	<script src="js/script.js"></script>

 

</body>
</html>