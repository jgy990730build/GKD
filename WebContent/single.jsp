<%@page import="src.com.dao.UpdateScoreDao"%>
<%@page import="com.mongodb.client.model.Filters"%>
<%@page import="org.bson.conversions.Bson"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="src.com.demo.MongoDBUtil"%>
<%@page import="src.com.dao.ScoreDao"%>
<%@page import="src.com.bean.Userinfo"%>
<%@page import="src.com.bean.User"%>
<%@page import="src.com.dao.UserDao"%>
<%@page import="src.com.bean.CommentBean"%>
<%@page import="src.com.dao.CommentDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="src.com.bean.VideosBean" %>
<%@ page import="src.com.dao.VideosDao" %>
<%@ page import="java.util.List"

 %>
<!DOCTYPE html>
<html>
<head>
<title>Single Page</title>
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

<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/willesPlay.css"/>
<script src="js/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/willesPlay.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<!--//web-fonts-->
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
				  <!-- Modal1 -->
					<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>Register</h4>
										<div class="login-form">
											<form action="#" method="post">
											    <input type="text" name="name" placeholder="Name" required="">
												<input type="email" name="email" placeholder="E-mail" required="">
												<input type="password" name="password" placeholder="Password" required="">
												<input type="password" name="conform password" placeholder="Confirm Password" required="">
												<div class="signin-rit">
														<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">I agree to your <a class="w3layouts-t" href="#" target="_blank">Terms of Use</a> and <a class="w3layouts-t" href="#" target="_blank">Privacy Policy</a></label>
													</span>
												</div>
												<div class="tp">
													<input type="submit" value="REGISTER NOW">
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

				<li>视频播放</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
			<%
				String vid=request.getParameter("vid");
				VideosDao dao = new VideosDao();
				VideosBean videosBean = dao.Onevideo(vid);
				int score = videosBean.getScore();
				String uploadtime = videosBean.getUploadtime();
				int click_count = videosBean.getClick_count();
				int collection_count = videosBean.getCollection_count();
				
				ScoreDao scoreDao = new ScoreDao();
				int score1 = scoreDao.ScoreDao(uploadtime, click_count+1, collection_count, score);
				
				 UpdateScoreDao updateScoreDao = new UpdateScoreDao();
				 updateScoreDao.UpdateScoreDao(vid, score1,collection_count,click_count+1);
			%>
				<div class="w3_content_agilleinfo_inner">
						<div class="agile_featured_movies">
				            <div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">正在播放</h3>
								<p class="w3ls_head_para">小小视频，大大世界</p>
							</div>
							   <div class="latest-news-agile-info">
								   <div class="col-md-8 latest-news-agile-left-content">
											<div class="single video_agile_player">
												<div class="col-md-12">
													<div id="willesPlay">
												<div class="playHeader">
												<div class="videoName"><%=videosBean.getName() %></div>
												</div>
												<div class="playContent">
												<div class="turnoff">
													<ul>
														<li><a id="love"  title="喜欢" class="glyphicon glyphicon-heart-empty"></a></li>
														<li><a href="javascript:;" title="关灯" class="btnLight on glyphicon glyphicon-sunglasses"></a></li>
														<li><a href="javascript:;" title="分享" class="glyphicon glyphicon-share"></a></li>
													</ul>
												</div>
												<video width="100%" height="100%" id="playVideo">、
													<!-- 视频地址-->
													<source src="/video/<%=videosBean.getPath() %>" type="video/mp4"></source>
													当前浏览器不支持 video直接播放，点击这里下载视频： <a href="/">下载视频</a>
												</video>
												<div class="playTip glyphicon glyphicon-play"></div>
												</div>
												<div class="playControll">
												<div class="playPause playIcon"></div>
												<div class="timebar">
													<span class="currentTime">0:00:00</span>
													<div class="progress">
														<div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
														</div>
													<span class="duration">0:00:00</span>
												</div>
												<div class="otherControl">
													<span class="volume glyphicon glyphicon-volume-down"></span>
													<span class="fullScreen glyphicon glyphicon-fullscreen"></span>
													<div class="volumeBar">
															<div class="volumewrap">
																<div class="progress">
																<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 8px;height: 40%;"></div>
															</div>
																</div>
														</div>
												</div>
												</div>
												</div>
												</div>
										    </div>
											<div class="single-agile-shar-buttons">
													<ul>
														<li>
															<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>

														</li>
														<li>
															<!-- Place this tag where you want the +1 button to render. -->
															<div class="g-plusone" data-size="medium"></div>

															<!-- Place this tag after the last +1 button tag. -->

														</li>
													</ul>
											</div>
										<div class="admin-text">
												<h5>视频简介</h5>
												<div class="admin-text-left">
													<a href="#"><img src="images/admin.jpg" alt=""></a>
												</div>
												<div class="admin-text-right">
													<p><%=videosBean.getDesc() %></p>
													<%
														UserDao userDao = new UserDao();
														Userinfo userinfo = userDao.UserDao(videosBean.getUseraccount());;
													%>
													<span>View all posts by :<a href="#"> <%=userinfo.getUsername() %> </a></span>
												</div>
												<div class="clearfix"> </div>
										</div>
										<div class="response">
							<h4>其他评论</h4>
							<%
								CommentDao commentDao = new CommentDao();
								List<CommentBean> list = commentDao.CommentDao(videosBean.getVideoid().toString());
								if(list!=null){
									for(CommentBean commentBean : list){
										%>
							<div class="media response-info" style="background:#E8E8E8;">
								<div class="media-left response-text-left">
									<a href="#">
										<img class="media-object" src="images/touxiang.jpg" width="80px" height="80px"> 
									</a>
									<h5><a href="#"><%=commentBean.getUsername() %></a></h5>
								</div>
								<div class="media-body response-text-right">
									<p><%=commentBean.getContent() %></p>
									<ul>
										<li><%=commentBean.getCreatetime() %></li>
									</ul>
								</div>

								<div class="clearfix"> </div>
							</div>
										<%
									}
								}
							%>
						</div>
											<div class="all-comments-info">
												 <h5 >写你的评论</h5>
												<div class="agile-info-wthree-box">
													<form id="comment-form" action="" method="post">
													   <div class="col-md-12 form-info">
													   	<input type="hidden" id="videoid" name="videoid" value="<%=videosBean.getVideoid()%>">
														<textarea id="message" name="content" placeholder="Message" ></textarea>
														<input type="submit" value="发送">
													 </div>
													 <div class="clearfix"> </div>

													</form>
												</div>
											</div>
								   </div>
								   <div class="col-md-4 latest-news-agile-right-content">
								   <h4 class="side-t-w3l-agile">搜索 <span>影片Video</span></h4>
										<div class="side-bar-form">
										 <form action="#" method="post">
											<input type="search" name="email" placeholder="Search here...." required="required">
											<input type="submit" value=" ">
										 </form>
									    </div>
								      <h4 class="side-t-w3l-agile">热 <span>评</span></h3>
									    <ul class="side-bar-agile">
										   <li><a href="single.jsp">评论内容</a><p>时间年月日</p></li>
										</ul>
										<h4 class="side-t-w3l-agile">最新 <span>推出</span></h3>
										<div class="video_agile_player sidebar-player">
										      <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA" id="video1">
															<!-- 最新电影的封面 -->
														<img src="images/22.jpg" alt="" class="img-responsive">
														<div id="play">
														</div>
													</div>
													</div>


										    <div class="player-text side-bar-info">
													<!-- 最新视频的题目 -->
												<p class="fexi_header">Me Before You </p>
												<!-- 最新视频的介绍 -->
												<p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>Me Before You Official Trailer #2 (2016) - Emilia Clarke, Sam Claflin Movie HD
A girl in a small town forms an unlikely....</p>
												<!-- 最新视频的时间 -->
												<p class="fexi_header_para"><span>发布时间<label>:</label></span>Feb 3, 2016 </p>
												<!--最新的视频的类型标签-->
												<p class="fexi_header_para">
												<span>类型<label>:</label></span>
													<a href="action.jsp">Drama</a> |
													<a href="action.jsp">Adventure</a> |
													<a href="action.jsp">Family</a>
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
											<div class="clearfix"> </div>
											<div class="agile-info-recent">
											<h4 class="side-t-w3l-agile">最新 <span>推出</span></h4>
											<div class="w3ls-recent-grids">
												<div class="w3l-recent-grid">
													<div class="wom">
														<!-- 视频链接-->
														<a href="single.jsp">
														<!-- 视频封面 -->
															<img src="images/m13.jpg" alt=" " class="img-responsive">
														</a>
													</div>
													<div class="wom-right">
														<!-- 题目 -->
															<h5><a href="single.jsp">Lorem Integer rutrum</a></h5>
															<!-- 内容 -->
														<p>Mauris fermentum dictum magna. Sed laoreet aliquam leo.
															Ut tellus dolor, dapibus eget.</p>
															<ul class="w3l-sider-list">
																<!-- 发布日期 -->
																<li><i class="fa fa-clock-o" aria-hidden="true"></i>On Mar 3, 2016</li>
																<!-- 观看人数 -->
																<li><i class="fa fa-eye" aria-hidden="true"></i> 2742</li>
															</ul>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>

							       </div>
								   <div class="clearfix"></div>
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

<script src="js/jquery-1.11.3.min.js"></script>
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
				$("#love").click(function(){
					var videoid = $("#videoid").val();
					$.ajax({
						url:'InsertCollectionServlet',
						type:'POST',
						async:true,
						data:{
							"videoid":videoid
							},
						dataType:'text',
						success:function(data){
							if(data==1){
								alert("收藏成功");
							}else if(data==0){
								alert("已收藏该视频");
							}
						},
						error:function(data){
							alert("收藏失败");
						}
					})
				})  
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
