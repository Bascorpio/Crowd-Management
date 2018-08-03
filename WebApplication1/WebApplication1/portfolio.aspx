﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>upload</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="gettemplates.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	
	
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

	<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
    <form id="form1" runat="server">
   <div class="gtco-loader"></div>
	
	<div id="page">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 text-right gtco-contact">
					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.html">CSM<em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li class="active"><a href="index.html">Home</a></li>
						
						<li >
							<a href="portfolio.html">Missing</a>
							
						</li>
						<li >
							<a href="about.html">Search for a lost</a>
							
						</li>
						
						<li class="has-dropdown " ><a href="#">Contact</a>
                            <ul class="dropdown">
                                <li><a href="#" >Phone</a></li>
								<li><a href="#">Email</a></li>
                                </ul>
                            
                        </li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>

	<header id="gtco-header" class="gtco-cover gtco-cover-xs" role="banner" style="background-image:url(images/img_bg_1.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc">
                            
							<img  id="uploadedImage" style="display:none" runat="server" >
                            <br>
							<h1 class="animate-box" data-animate-effect="fadeInUp">Please Drag Photo</h1>
							<p class="animate-box" data-animate-effect="fadeInUp">
								<label class="fileContainer btn btn-white btn-lg btn-outline">
								Upload Photo
								<input type="file" id="fileName" accept="image/x-png,image/gif,image/jpeg" onchange="validateFileType()" />

							</label>
							</p>
                            <p class="animate-box" data-animate-effect="fadeInUp" runat="server"><button runat="server" class="btn btn-white btn-lg btn-outline"   onserverclick="Unnamed_ServerClick"  >submit</button></p>
						</div>
					</div>
				</div>
			</div>
			</div>
	</header>
        <div class="gtco-container">
        <div class="foo" >
            <ul class="" style="list-style: none">
            <li><i class="fab fa-facebook" ></i></li>
            <li><i class="fab fa-twitter" ></i></li>
                <li> <i class="fas fa-map-marker-alt"></i></li>
            </ul>
        </div>
        </div>
	<asp:HiddenField ID="hdnfldVariable" runat="server" />
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	
	<script>
	    function validateFileType() {
	        var preview = document.querySelector('img'); //selects the query named img
	        var file = document.querySelector('input[type=file]').files[0]; //sames as here
	        var reader = new FileReader();
	        var source = document.querySelector('img').src;
	        
	        reader.onloadend = function () {
	            document.getElementById("uploadedImage").style.display = "block";
	            preview.src = reader.result.replace(/^data:image\/(png|jpg);base64,/, "");
	            var hdnfldVariable = document.getElementById('hdnfldVariable');
	            hdnfldVariable.value = preview.src;
	        }

	        if (file) {
	            reader.readAsDataURL(file); //reads the data as a URL
	            
	        } else {
	            preview.src = "";
	        }
	    }

	    function submitImage() {
	        

	    }

	</script>
	
	<style>
	#uploadedImage{
	width: 350px;
    border: 1px solid #aaaaaa;
    text-align: center;
    height: 200px;
    margin: 0 auto 0 auto;
	}
	
	.fileContainer {
    overflow: hidden;
    position: relative;
}

.fileContainer [type=file] {
    cursor: inherit;
    display: block;
    font-size: 999px;
    filter: alpha(opacity=0);
    min-height: 100%;
    min-width: 100%;
    opacity: 0;
    position: absolute;
    right: 0;
    text-align: right;
    top: 0;
}
	</style>

    </form>
</body>
</html>
