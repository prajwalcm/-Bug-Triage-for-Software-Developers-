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
      <a><font size="14">Bug Triage</font></a></div>      <nav class="nav" id="nav">
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
           <li class="current_page_item"><a href="index.jsp"><span>Home</span></a></li>
				<li><a href="insselect"><span>View User</span></a></li>
			<li><a href="insselect"><span>View Developer</span></a></li>
				<li><a href="insselect"><span>Instance Selection</span></a></li>
			<li><a href="fs.jsp"><span>Feature Selection</span></a></li>
			<li><a href="solvedbug.jsp"><span>Solves Bug</span></a></li>
			<li><a href="unsolvedbug.jsp"><span>Unsolved Bug</span></a></li>
				<li><a href="logoutServlet"><span>Logout</span></a></li>        </ul>
      </nav>
      <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a> </div>
  </div>
</header>
<!--Header_section--> 

<!--Top_content-->
<section id="top_content" class="top_cont_outer">
  <div class="top_cont_inner">
    <div class="container">
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br><br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br><br>
    		<br>
            
    </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
    <div class="footer_bottom"> <span>Copyright � 2014 Lumia Theme By <a href="http://themesell.co/">ThemeSell</a>. </span> </div>
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
			<ul id="menu">
				<li class="current_page_item"><a href="index.jsp"><span>Home</span></a></li>
				
			
				<li><a href="insselect"><span>Instance Selection</span></a></li>
			<li><a href="fs.jsp"><span>Feature Selection</span></a></li>
				<li><a href="logoutServlet"><span>Logout</span></a></li>
				
			</ul>
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
				 <img src="images/people.png" width="60" height="50">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px">New Errors Insertion</span></td>
				 </tr>
            </table>
            <a href="adminrequest.jsp"><h4 style="color: black;"><strong>Click Here to  See Add Error Request </strong></h4></a>
            			<br>
            
            
          <form action="errorReg" method="post" >
            <center><table>
            
            <tr>
            <td><strong>Summary</strong></td><td><select name="errortype" id="errortype" required>
       		<option value="">----Select----</option>
            <option value="logical">Logical</option>
            <option value="system">System</option>
            <option value="programming">Programming</option>
             <option value="runtime">Runtime</option>
              <option value="other">Other</option>
									</select></td>
									
            </tr>
            <tr>
            <td>Description</td><td><input type="text" name="errorname" required></td>
            </tr>
           
          
           
            <tr>
            <td>ID</td><td><input type="text" name="errorcode" required></td>
            </tr>
            
            <tr>
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="patientregister.jsp"><img src="images/reset.png" width="57" height="43" title="Reset"></img></a></td>
            </tr>
            
            <tr><td colspan="2" align="center"><p> ${message}</p>
				<c:remove var="message" scope="session" /></td></tr>
            
            
            
            </table></center>
					
												
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
<%@ include file='footer.jsp' %>
<!-- end #footer -->
</body>
</html>


 --%>