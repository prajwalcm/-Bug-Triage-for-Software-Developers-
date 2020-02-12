<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, maximum-scale=1">
<title>Bug Triage</title>
<link rel="icon" href="favicon.png" type="image/png">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/linecons.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">

<link href='http://fonts.googleapis.com/css?family=Lato:400,900,700,700italic,400italic,300italic,300,100italic,100,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Dosis:400,500,700,800,600,300,200' rel='stylesheet' type='text/css'>

<!--[if IE]><style type="text/css">.pie {behavior:url(PIE.htc);}</style><![endif]-->

<script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.isotope.js"></script>
<script type="text/javascript" src="js/wow.js"></script>
<script type="text/javascript" src="js/classie.js"></script>

<!--[if lt IE 9]>
    <script src="js/respond-1.1.0.min.js"></script>
    <script src="js/html5shiv.js"></script>
    <script src="js/html5element.js"></script>
<![endif]-->
</head>
<body>

<!--Header_section-->
<header id="header_outer">
  <div class="container">
    <div class="header_section">
     <div class="logo"><a href="#"><img src="img/bugLogo.jpg" width="80" height="80" alt=""></a>
      <a><font size="14">Bug Triage</font></a></div>
      <nav class="nav" id="nav">
      <!--   <ul class="toggle">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="AdminLogin.jsp">Admin</a></li>
          <li><a href="#experthome.jsp">Expert</a></li>
          <li><a href="register.jsp">Registration</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul> -->
        <ul class="">
           <li><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">User Login</a></li>
          <li><a href="AdminLogin.jsp">Admin</a></li>
          <li><a href="expertlogin.jsp">Developer</a></li>
          <li><a href="register.jsp">Registration</a></li>
          <li><a href="aboutus.jsp">About Us</a></li>
        </ul>
      </nav>
      <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a> </div>
  </div>
</header>
<!--Header_section--> 

<!--Top_content-->
<section id="top_content" class="top_cont_outer">
  <div class="top_cont_inner">
    <div class="container">
      <div class="top_content">
        <div class="row">
       
            <div class="top_left_cont flipInY wow animated">
             
              <h2 align="center">BUG TRIAGE USING DATA REDUCTION WITH PRIORITY AND SECURITY</h2>
              <p>Software companies spend over 45 percent of cost in dealing with software bugs. An inevitable step of fixing bugs is bug
triage, which aims to correctly assign a developer to a new bug. To decrease the time cost in manual work, text classification techniques
are applied to conduct automatic bug triage. In this paper, we address the problemof data reduction for bug triage, i.e., how to reduce the
scale and improve the quality of bug data.We combine instance selection with feature selection to simultaneously reduce data scale on
the bug dimension and the word dimension. To determine the order of applying instance selection and feature selection, we extract
attributes from historical bug data sets and build a predictive model for a new bug data set. We empirically investigate the performance of
data reduction on totally 600,000 bug reports of two large open source projects, namely Eclipse and Mozilla. The results show that our
data reduction can effectively reduce the data scale and improve the accuracy of bug triage. Our work provides an approach to leveraging
techniques on data processing to form reduced and high-quality bug data in software development and maintenance.</p>
               </div>
         
          
        </div>
      </div>
    </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
    <div class="footer_bottom"> <span>Copyright © 2014 Lumia Theme By <a href="http://themesell.co/">ThemeSell</a>. </span> </div>
  </div>
</footer>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><%@ include file='title.jsp' %></title>
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<%@ include file='logo.jsp' %>
		</div>
		<div id="menu-wrapper">
			<%@ include file='menu.jsp' %>
			<script type="text/javascript">
			$('#menu').dropotron();
		</script> 
		<!-- end #menu -->
		<div id="banner">
			<div class="contentbg">
			
				<div class="post">
					
				<h2 class="title"></h2>
				</div>
				<br/>
           <span style="font-size:24px">Prediction and Classification of Cardiac Arrhythmia</span>
            
            <br/>
            <form >
            <br/>
            <p>Software companies spend over 45 percent of cost in dealing with software bugs. An inevitable step of fixing bugs is bug
triage, which aims to correctly assign a developer to a new bug. To decrease the time cost in manual work, text classification techniques
are applied to conduct automatic bug triage. In this paper, we address the problemof data reduction for bug triage, i.e., how to reduce the
scale and improve the quality of bug data.We combine instance selection with feature selection to simultaneously reduce data scale on
the bug dimension and the word dimension. To determine the order of applying instance selection and feature selection, we extract
attributes from historical bug data sets and build a predictive model for a new bug data set. We empirically investigate the performance of
data reduction on totally 600,000 bug reports of two large open source projects, namely Eclipse and Mozilla. The results show that our
data reduction can effectively reduce the data scale and improve the accuracy of bug triage. Our work provides an approach to leveraging
techniques on data processing to form reduced and high-quality bug data in software development and maintenance.</p>
        
            
            
            
            </form>

            
				<div style="clear: both;">&nbsp;</div>
			</div>
			
		</div>
	</div>
	</div>
	<!-- end #header -->
	<!--<div id="page">-->
		<div id="content">
			
		</div>
		<!-- end #content -->
	
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page --> 
<!--</div>-->
<div id="footer">
	<%@ include file='footer.jsp' %>
</div>
<!-- end #footer -->
</body>
</html>
 --%>