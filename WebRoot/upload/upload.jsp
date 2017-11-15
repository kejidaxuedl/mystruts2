<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Outline, free responsive template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 
        Outline Template
        http://www.cssmoban.com/preview/templatemo_453_outline
        -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/templatemo-style.css">
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<script src="js/html5.js"></script>
<style type="text/css">
.message {
	width: 320px;
	margin: 120px auto 0px auto;
	line-height: 24px;
	color: #ffd5bc;
	overflow: hidden
}

.message .input {
	width: 219px;
	height: 28px;
	line-height: 28px;
	border: none;
	background: #333333;
	padding-left: 20px;
	color: #ffffff;
	font-family: Microsoft YaHei;
}

.message .liulan {
	width: 64px;
	height: 28px;
	border: 1px solid #ffb660;
	background: #fe9e19;
	color: #ffffff;
	cursor: pointer;
}

.message .files {
	position: absolute;
	left: -1000px;
	top: 52px;
	heigth: 26px;
	cursor: pointer;
	filter: Alpha(opacity = 0);
	-moz-opacity: 0;
	opacity: 0;
}
</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div class="site-bg"></div>


	<!-- SITE-HEADER -->
	<header class="site-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 hidden-xs">
				<span class="phone"><i class="fa fa-phone"></i>010-020-0340</span>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-6 logo-holder">
				<a href="#" class="site-brand">Out<span>Line</span></a>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-6 social-icons-header">
				<ul class="social-top">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	</header>

	<div class="responsive-menu visible-xs">
		<a href="#" class="toggle-menu"> <i class="fa fa-bars"></i>
		</a>
		<div class="show-menu">
			<ul class="main-menu">
				<li><a href="#" class="show-1 homebutton">Home</a></li>
				<li><a href="#" class="show-2 aboutbutton">About Me</a></li>
				<li><a href="#" class="show-3 projectbutton">My Work</a></li>
				<li><a href="#" class="show-4 contactbutton">Stay In Touch</a></li>
			</ul>
		</div>
	</div>

	<!-- MENU -->
	<div class="menu-bottom">
		<div class="desktop-menu hidden-xs">
			<div class="container">
				<div class="row">
					<div class="main-menu">
						<div class="col-md-3 col-sm-3">
							<a href="#" class="show-1 homebutton"> <span
								class="menu-icon"><i class="fa fa-home"></i></span> <span
								class="menu-text">Home</span>
							</a>
						</div>
						<div class="col-md-3 col-sm-3">
							<a href="#" class="show-2 aboutbutton"> <span
								class="menu-icon"><i class="fa fa-user"></i></span> <span
								class="menu-text">About Me</span>
							</a>
						</div>
						<div class="col-md-3 col-sm-3">
							<a href="#" class="show-3 projectbutton"> <span
								class="menu-icon"><i class="fa fa-photo"></i></span> <span
								class="menu-text">My Work</span>
							</a>
						</div>
						<div class="col-md-3 col-sm-3">
							<a href="#" class="show-4 contactbutton"> <span
								class="menu-icon"><i class="fa fa-envelope"></i></span> <span
								class="menu-text">Stay in Touch</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container" id="page-content">

		<div class="content-holder">

			<div id="menu-container">

				<!-- HOMEPAGE -->
				<div id="menu-1" class="homepage home-section text-center">
					<h1>FREE FILE UPLOAD</h1>
					<p class="description">
						<a href="#">The shortest way to do many things </a> is to only one
						thing at a time. <span class="blue">if you</span><span
							class="green"> wish</span>. You can download, upload<a
							rel="nofollow" href="http://unsplash.com"> photo</a> or files
					</p>
					<form
						action="${pageContext.request.contextPath }/uploadAction.kedabs"
						method="post" enctype="multipart/form-data" class="subscribe-form">
						<h3>file upload</h3>
						<div class="message">
							<!-- <input type="text" id="txt" name="txt" class="input" value="file address"
								disabled="disabled" /> <input type="button"
								onMouseMove="f.style.pixelLeft=event.x-60;f.style.pixelTop=this.offsetTop;"
								value="upload" size="30" onClick="f.click()" class="liulan"> -->
							<input type="file"  name = "file1"/>
							<input type="submit" value="提交"/>
						</div>
						<p class="small">please check your address!</p>
					</form>
				</div>
				<!-- ABOUT ME -->
				<div id="menu-2" class="content about-section">
					<div class="text-center">
						<div class="page-top">
							<h1 class="page-title">About Me</h1>
						</div>
						<h2 class="subtitle">WHO I AM?</h2>
					</div>
					<div class="row">
						<div class="col-md-7">
							<div class="about-block">
								<div class="thumb-it">
									<img src="img/1.jpg" alt="">
								</div>
								<div class="block-content">
									<h3>Marry Cool</h3>
									<span class="subtitle">Artist, Designer</span>
									<p>Phasellus tristique enim consequat purus semper varius.
										In convallis, tellus in viverra dapibus, diam risus pharetra
										massa, id tempor enim nisl nec mi. Sed pretium condimentum
										lectus quis mattis. Suspendisse suscipit felis et rhoncus
										pretium. Suspendisse placerat rhoncus libero at tempor.</p>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<div class="about-block">
								<div class="thumb-it">
									<img src="img/2.jpg" alt="">
								</div>
								<div class="block-content">
									<h3>GRADUATED</h3>
									<p>Aenean a purus in magna consequat venenatis. Integer
										porttitor condimentum tempor. Mauris malesuada magna maximus
										mi tristique dictum. Nulla sed tincidunt ipsum.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END ABOUT ME -->

				<!-- GALLERY -->
				<div id="menu-3" class="content gallery-section">
					<div class="text-center">
						<div class="page-top">
							<h1 class="page-title">My Work</h1>
						</div>
						<h2 class="subtitle">latest projects</h2>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<div class="project-block">
								<div class="thumb-it">
									<a href="#"><img src="img/3.jpg" alt=""></a>
								</div>
								<div class="block-content">
									<h3>
										<a href="#">Summer Holiday</a>
									</h3>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="project-block">
								<div class="thumb-it">
									<a href="#"><img src="img/4.jpg" alt=""></a>
								</div>
								<div class="block-content">
									<h3>
										<a href="#">Experience Nature</a>
									</h3>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="project-block">
								<div class="thumb-it">
									<a href="#"><img src="img/5.jpg" alt=""></a>
								</div>
								<div class="block-content">
									<h3>
										<a href="#">New Green Way</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END GALLERY -->

				<!-- CONTACT -->
				<div id="menu-4" class="content contact-section">
					<div class="text-center">
						<div class="page-top">
							<h1 class="page-title">Contact Me</h1>
						</div>
						<h2 class="subtitle">Send a message</h2>
					</div>
					<div class="row">
						<div class="col-md-7">
							<form action="#" method="post" class="contact-form">
								<div class="row">
									<div class="col-md-6">
										<fieldset class="input-holder">
											<label for="name">Name:</label> <input name="name"
												type="text" class="name" id="name">
										</fieldset>
									</div>
									<div class="col-md-6">
										<fieldset class="input-holder">
											<label for="email">Email:</label> <input name="email"
												type="email" class="email" id="email">
										</fieldset>
									</div>
									<div class="col-md-12">
										<fieldset class="input-holder">
											<label for="message">Message:</label>
											<textarea name="message" id="message" cols="30" rows="4"></textarea>
										</fieldset>
									</div>
									<div class="col-md-12">
										<fieldset class="input-holder">
											<input name="submit" type="submit" class="btn default"
												id="submit" value="Send Message">
										</fieldset>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-5">
							<div class="contact-block">
								<div class="thumb-it">
									<img src="img/6.jpg" alt="">
								</div>
								<div class="block-content">
									<h3>Address</h3>
									<p>Donec facilisis imperdiet feugiat. Nam enim lorem,
										consectetur eu tincidunt quis, commodo sed velit.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END CONTACT -->
			</div>

		</div>

	</div>

	<div class="footer">
		<div class="text-center">
			<p class="copyright-text">made from &copy; tjkjdxbysj</p>
		</div>
	</div>

	<script
		src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')
	</script>
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/main.min.js"></script>

</body>
</html>