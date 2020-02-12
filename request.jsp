<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
           <li class="current_page_item"><a href="home.jsp"><span>Home</span></a></li>
				
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
    		<table align="center">
				<tr>
				<td>
				<img src="img/usr.jpg" width="100" height="100">&nbsp;&nbsp;&nbsp;</td>
				</tr>
				
				<tr> 
				 <td><span style="font-size:22px">New Bug Insertion</span></td>
				 </tr>
            </table>
          	<div align="center">
            	</div>
            			<br>
    
            <form action="errorReg" method="post" >
            <center>
            <table>
            <tr>
            <td><strong>Summary</strong></td><td><select name="errortype" id="errortype" required>
       		<option value="">----Select----</option>
            <option value="logical">Logical</option>
            <option value="system">System</option>
            <option value="programming">Programming</option>
             <option value="runtime">Runtime</option>
             <!--  <option value="other">Other</option> -->
									</select></td>
									
            </tr>
            <tr>
            <td>Description</td><td><input type="text" name="errorname" required></td>
            </tr>

            <tr>
            <td>Bug ID</td><td><input type="text" name="errorcode" required></td>
            </tr>
            
            <tr>
            <td>Severity</td>
				<td>
				<select name="severity">
				<option name="severity" value="1">High</option>
				<option name="severity" value="2">Medium</option>
				<option name="severity" value="3">Low</option>
				</select>
				</td>

            </tr>
            <tr>
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            </tr>
            
            <tr><td colspan="2" align="center"><p> ${message}</p>
				<c:remove var="message" scope="session" /></td></tr>

 			 </table></center>
					
												
			</form>
    </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
   </div>


</body>
</html>

