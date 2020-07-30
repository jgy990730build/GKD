<%@page import="java.util.ArrayList"%>
<%@page import="src.com.dao.VideosDao"%>
<%@page import="java.util.List"%>
<%@page import="src.com.bean.VideosBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>乐趣视频网</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
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
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
<!--/main-header-->
  <!--/banner-section-->
  
  
  
  
  <!--/首页自动放映存放图片的地方-->
	<div id="demo-1" data-zs-src='["images/2.jpg", "images/1.jpg", "images/3.jpg","images/4.jpg"]' data-zs-overlay="dots">
	    <div class="demo-inner-content">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp"><span>乐</span><span>趣</span>视频网</a></h1>
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
											<li><a href="action.jsp">动作</a></li>
											<li><a href="action.jsp">传记</a></li>
											<li><a href="action.jsp">犯罪</a></li>
											<li><a href="action.jsp">家庭</a></li>
											<li><a href="action.jsp">惊悚</a></li>

										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="action.jsp">奇幻</a></li>
											<li><a href="action.jsp">喜剧</a></li>
											<li><a href="action.jsp">记录</a></li>
											<li><a href="action.jsp">科幻</a></li>
											<li><a href="action.jsp">恐怖</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">

											<li><a href="action.jsp">古装</a></li>

										<li><a href="action.jsp">历史</a></li>
											<li><a href="action.jsp">音乐</a></li>
                                            											<li><a href="action.jsp">爱情</a></li>
			<li><a href="action.jsp">战争</a></li>

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
                           		<a href="#" class="dropdown-toggle" data-toggle="dropdown">联系我们<b class="caret"></b></a>
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
							<div class="w3ls_search" style="margin-top:25px;float:left;">
									
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
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3><span>La</span>test <span>On</span>Line <span>Vi</span>deos</h3>
				  <h4>In space no one can hear you scream.</h4>
			   </div>
			<!--/banner-ingo-->		
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm">
			     <div class="w3_agilits_inner_bottom">

						 <div class="col-md-6 wthree_share_agile">
									
									<div class="single-agile-shar-buttons">
									<ul>
								<li>
									<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
									
								</li>

								
							</ul>
								</div>
						</div>
				</div>
			</div>
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
															<a href="#" data-toggle="modal" data-target="#myModal2">忘记密码？</a>
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
														<label class="checkbox"><input type="checkbox" name="checkbox">我同意 你的<a class="w3layouts-t" href="#" target="_blank">使用条款</a> 和 <a class="w3layouts-t" href="#" target="_blank">隐私政策</a></label>
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
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
						<!--/agileinfo_tabs-->
					   <div class="agileinfo_tabs">
						<!--/tab-section-->
				    
				    
				    
				    <!--/包含三个无序列表的视频分类的大div-->
					    <div id="horizontalTab">
					    
					    <!--/三个无序列表表示三个不同热度的视频分类-->
								<ul class="resp-tabs-list">
									<li>最新</li>
									<li>热 门</li>
									<li>高 评 分</li>
									
								</ul>
						<div class="resp-tabs-container">
						<div class="tab1">
						<%
							VideosDao videosDao = new VideosDao();
							List<VideosBean> list = videosDao.VideosBean();	
						%>
								<div class="tab_movies_agileinfo">
									
									<!--/无序列表下的视频分类-->
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
									            
									            <!--/左侧的大视频海报-->
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="/img/<%=list.get(0).getCover() %>" alt="" class="img-responsive" style="height:350px;" /> </div>
													</div>


										<!--/大海报的详情介绍-->								
	        								<div class="player-text">
												<p class="fexi_header"><%=list.get(0).getName() %></p>
												<p class="fexi_header_para"><span class="conjuring_w3">故事情节<label>:</label></span><%=list.get(0).getDesc() %></p>
												<% String str1 = list.get(0).getUploadtime(); %>
												<p class="fexi_header_para"><span>上映时间<label>:</label></span><%=str1.substring(0,str1.indexOf(":")) %></p>
												<p class="fexi_header_para">
													<span>类型<label>:</label> </span>
													<a href="action.jsp"><%=list.get(0).getType() %></a> | 					
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>星级评定<label>:</label></span>
													<% 
														int i =list.get(0).getScore();
														
														while(i>19){
															i-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
												</p>
											</div>
										    </div>
										    
										    <!--/海报左侧的分类视频-->
										     <div class="col-md-7 wthree_agile-movies_list">
										     <!--/一部视频的详情（包括海报时间）-->
										     <%
														for(VideosBean videosBean : list){
										     %>
										     
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp?vid=<%=videosBean.getVideoid() %>" class="hvr-sweep-to-bottom"><img src="/img/<%=videosBean.getCover() %>" title="Movies Pro" class="img-responsive" alt=" ">
										<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
															
															
															<!--/海报下面的影片名、上映年份、热度-->
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp?vid=<%=videosBean.getVideoid() %>"><%=videosBean.getName() %></a></h6>			
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																	<% String str = videosBean.getUploadtime(); %>
																		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=str.substring(0,str.indexOf(":")) %></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">评分：
																				<% 
														int i1 =videosBean.getScore();
														
														while(i1>19){
															i1-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i1>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
																
																<!--/新影片标签提示-->
															<div class="ribben">
														<p>NEW</p>
															</div>
													</div>
													<%} %>
											</div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
						<div class="tab2">
								<div class="tab_movies_agileinfo">
									
									<!--/无序列表下的视频分类-->
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
									            
									            <!--/左侧的大视频海报-->
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="/img/<%=list.get(0).getCover() %>" alt="" class="img-responsive" style="height:350px;" /> </div>
													</div>


										<!--/大海报的详情介绍-->								
	        								<div class="player-text">
												<p class="fexi_header"><%=list.get(0).getName() %></p>
												<p class="fexi_header_para"><span class="conjuring_w3">故事情节<label>:</label></span><%=list.get(0).getDesc() %></p>
												
												<p class="fexi_header_para"><span>上映时间<label>:</label></span><%=str1.substring(0,str1.indexOf(":")) %></p>
												<p class="fexi_header_para">
													<span>类型<label>:</label> </span>
													<a href="action.jsp"><%=list.get(0).getType() %></a> | 					
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>星级评定<label>:</label></span>
													<% 
														int i2 =list.get(0).getScore();
														
														while(i2>19){
															i2-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i2>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
												</p>
											</div>
										    </div>
										    
										    <!--/海报左侧的分类视频-->
										     <div class="col-md-7 wthree_agile-movies_list">
										     <!--/一部视频的详情（包括海报时间）-->
										     <%
														for(VideosBean videosBean : list){
										     %>
										     
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp?vid=<%=videosBean.getVideoid() %>" class="hvr-sweep-to-bottom"><img src="/img/<%=videosBean.getCover() %>" title="Movies Pro" class="img-responsive" alt=" ">
										<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
															
															
															<!--/海报下面的影片名、上映年份、热度-->
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp?vid=<%=videosBean.getVideoid() %>"><%=videosBean.getName() %></a></h6>			
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																	<% String str = videosBean.getUploadtime(); %>
																		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=str.substring(0,str.indexOf(":")) %></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">评分：
																				<% 
														int i3 =videosBean.getScore();
														
														while(i3>19){
															i3-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i3>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
																
																<!--/新影片标签提示-->
															<div class="ribben">
														<p>NEW</p>
															</div>
													</div>
													<%} %>
											</div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
						<!--/无序列表中“新上映”的整体框架-->
							<div class="tab3">
								<div class="tab_movies_agileinfo">
									
									<!--/无序列表下的视频分类-->
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
									            
									            <!--/左侧的大视频海报-->
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="/img/<%=list.get(0).getCover() %>" alt="" class="img-responsive" style="height:350px;" /> </div>
													</div>


										<!--/大海报的详情介绍-->								
	        								<div class="player-text">
												<p class="fexi_header"><%=list.get(0).getName() %></p>
												<p class="fexi_header_para"><span class="conjuring_w3">故事情节<label>:</label></span><%=list.get(0).getDesc() %></p>
												
												<p class="fexi_header_para"><span>上映时间<label>:</label></span><%=str1.substring(0,str1.indexOf(":")) %></p>
												<p class="fexi_header_para">
													<span>类型<label>:</label> </span>
													<a href="action.jsp"><%=list.get(0).getType() %></a> | 					
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>星级评定<label>:</label></span>
												
													<% 
														int i4 =list.get(0).getScore();
														
														while(i4>19){
															i4-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i4>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
												</p>
											</div>
										    </div>
										    
										    <!--/海报左侧的分类视频-->
										     <div class="col-md-7 wthree_agile-movies_list">
										     <!--/一部视频的详情（包括海报时间）-->
										     <%
														for(VideosBean videosBean : list){
										     %>
										     
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp?vid=<%=videosBean.getVideoid() %>" class="hvr-sweep-to-bottom"><img src="/img/<%=videosBean.getCover() %>" title="Movies Pro" class="img-responsive" alt=" ">
										<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
															
															
															<!--/海报下面的影片名、上映年份、热度-->
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp?vid=<%=videosBean.getVideoid() %>"><%=videosBean.getName() %></a></h6>			
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																	<% String str = videosBean.getUploadtime(); %>
																		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=str.substring(0,str.indexOf(":")) %></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings"><%="评分：" %>
																			<%
																				int i5 =videosBean.getScore();
														
														while(i5>19){
															i5-=20;
															%>
														<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
															<%
														}
														if(i5>=10){
															%>
														<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
															<%
														}
													%>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
																
																<!--/新影片标签提示-->
															<div class="ribben">
														<p>NEW</p>
															</div>
													</div>
													<%} %>
											</div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
							
							<!--/无序列表中“高评分”的整体框架-->
						
							</div>
						</div>
						
					</div>
				<!--//tab-section-->	
				  <h3 class="agile_w3_title"> 最新 <span>视频</span></h3>
			<!--/movies-->				
			<div class="w3_agile_latest_movies">
			<div id="owl-demo" class="owl-carousel owl-theme">
					
					<%
					VideosDao videosDao2 =new VideosDao();
					List<VideosBean> list2 = videosDao.videosBean();
						for(VideosBean videosBean : list2){
					%>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp?vid=<%=videosBean.getVideoid() %>" class="hvr-sweep-to-bottom"><img src="/img/<%=videosBean.getCover() %>" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp?vid=<%=videosBean.getVideoid() %>"><%=videosBean.getName() %></a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<% String str0 = videosBean.getUploadtime(); %>
									<p><%=str0.substring(0,str0.indexOf(":")) %></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<%
														int i5 =videosBean.getScore();
														
														while(i5>19){
															i5-=20;
															%>
														<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<%
														}
														if(i5>=10){
															%>
														<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<%
														}
													%>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
							</div>
						</div>
						<%} %>
						
					   </div>
				    </div>
				
				
				    </div>
				<!--//movies-->
				
				<!--//top-movies-->
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
						<h4>视频类型</h4>
							<ul>
								
								<li><a href="action.jsp">奇幻</a></li>
								<li><a href="action.jsp">喜剧</a></li>
								<li><a href="action.jsp">科幻</a></li>
								<li><a href="action.jsp">动作  </a></li>
								<li><a href="action.jsp">视频  </a></li>
								<li><a href="action.jsp">惊悚  </a></li>
								
							</ul>
						</div>
				

							<div class="col-md-2 footer-grid">
								<h4>回顾视频</h4>
									<ul class="w3-tag2">
									<li><a href="action.jsp">喜剧</a></li>
									<li><a href="action.jsp">惊悚</a></li>
									<li><a href="action.jsp">历史</a></li>
									<li><a href="action.jsp">浪漫</a></li>
									<li><a href="action.jsp">爱情</a></li>
									<li><a href="action.jsp">动作</a></li>
									<li><a href="action.jsp">评价</a></li>
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
						<h4>最新的视频</h4>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/1.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">视频名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/2.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">视频名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
							
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/4.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">视频名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/3.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">视频名</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<div class="col-md-2 footer-grid">
						   <h4 class="b-log"><a href="index.jsp"><span>乐</span><span>趣</span>视频网</a></h4>
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
						<ul class="bottom-links-agile"></ul>
					</div>
					<h3 class="text-center follow">联系 <span>我们</span></h3>
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


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>

			<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
			<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 
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