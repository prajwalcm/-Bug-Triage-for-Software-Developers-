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
<%
      
        if(request.getParameter("status")!=null){
        out.println("<script>alert('Successfully Registered!')</script>");
        }
%>


<!--Header_section-->
<header id="header_outer">
  <div class="container">
    <div class="header_section">
     
      
     <div class="logo"><a href="#"><img src="img/bugLogo.jpg" width="80" height="80" alt=""></a>
      <a><font size="14">Bug Triage</font></a></div>
      <nav class="nav" id="nav">
        <ul class="">
           <li><a href="index.jsp">Home</a></li>

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
    		<table align="center">
				<tr>
				<td>
				<img src="img/user.png" width="100" height="100">&nbsp;&nbsp;&nbsp;</td>
				</tr>
				
				<tr> 
				 <td><span style="font-size:22px">User Login</span></td>
				 </tr>
            </table>
    
                 <form action="log" method="post">
            <br/>
            <table align="center">
            <tr>
            <td><span style="font-size:20px">Username</span></td><td><input type="text" name="username" placeholder="username"></input></td>
            </tr>
            <tr>
            <td><br/></td>
            
            <td>
            </td>
            </tr>
            <tr>
            <td><span style="font-size:20px">Password</span></td><td><input type="password" name="password" placeholder="password"></input>
            </tr>
            <!-- <tr>
            <td>
            
           

            </tr> -->
            </table>
            <br/>
             <div align="center"><input type="submit" value ="Login" style="font-size:large; 70px; height: 40px; width:60px; color: white; background-color: green"></input></div>
            
            </form>
    
    
    
    
    </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
    <div class="footer_bottom"> <span>C <a href="http://themesell.co/">ThemeSell</a>. </span> </div>
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

<%
      
        if(request.getParameter("status")!=null){
        out.println("<script>alert('Successfully Registered!')</script>");
        }
%>

<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<%@ include file='logo.jsp' %>
		</div>
		<div id="menu-wrapper">
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
		<table align="center">
				<tr>
				<td>
				 <img src="images/user.png" width="70" height="60">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px">Member Login</span></td>
				 </tr>
            </table>
            
            <br/>
             <form action="log" method="post">
            <br/>
            <table align="center">
            <tr>
            <td><span style="font-size:20px">Username</span></td><td><input type="text" name="username" placeholder="username"></input></td>
            </tr>
            <tr>
            <td><br/></td>
            
            <td>
            </td>
            </tr>
            <tr>
            <td><span style="font-size:20px">Password</span></td><td><input type="password" name="password" placeholder="password"></input>
            </tr>
            <!-- <tr>
            <td>
            
           

            </tr> -->
            </table>
            <br/>
             <div align="center"><input type="submit" value ="Login" style="font-size:large; 70px; height: 40px; width:60px;"></input></div>
            
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
		<!--<div id="sidebar-bg">
			<div id="sidebar">
				<ul>
					<li>
						<h2>Links</h2>
						<ul>
							<li><a href="http://dm.ustc.edu.cn/zhu-cikm13.pdf">Download Pdf</a></li>
							<li><a href="https://www.youtube.com/watch?v=XHsrbeJmwcw">Watch Video</a></li>
							<li><a href="http://staff.ustc.edu.cn/~cheneh/paper_pdf/2014/Hengshu-Zhu-TKDE.pdf">Related Pdf</a></li>
							<li><a href="https://www.youtube.com/watch?v=raY1bs5FFfs">Click for Video</a></li>
							<li><a href="http://www.computer.org/csdl/trans/tk/preprint/06807765.pdf">Pdf</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>-->
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