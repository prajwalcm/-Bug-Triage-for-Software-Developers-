<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
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
			<li><a href="unsolvedbug.jsp"><span>Unsolved Bug</span></a></li>
			<li><a href="aboutus.jsp"><span>About Us</span></a></li>
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
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<div align="center">
    		
    		<h3>solved Bugs</h3>
    		<table border="1">
    		<tr>
    		<td><strong>SR. No.</strong></td>
    		<td><strong>Error Name:</strong></td>
    		<td><strong>Developer Name:</strong></td>
    		</tr>
    		<%
    		int i=1;
    		Connection con = DbConnection.getConnection();
    		PreparedStatement ps = con.prepareStatement("SELECT * FROM errors WHERE errorsolution IS NOT NULL");
    		ResultSet rs = ps.executeQuery();
    		
    		while(rs.next()){
    			String errorname= rs.getString("errorname");
    			String developername = rs.getString("developername");
    			System.out.println("Error name======"+errorname);
    			System.out.println("Developer name====="+developername);
    			
    			%>
    			
    			<tr>
    			<td><%=i++%></td>
    			<td><%=errorname %></td>
    			<td><%=developername %></td>
    			
    			
    			<% 
    		}
    		
    		%>
    		</tr>
    			</table>
    			</div>
			<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
    		<br>
        </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
 </div>
</footer>

</body>
</html>

