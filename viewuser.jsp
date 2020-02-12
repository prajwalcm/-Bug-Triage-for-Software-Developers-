<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.mysql.jdbc.util*" %> --%>

<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

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
    		<h3>User Information</h3>
    		<table align="center" border="10"  cellpadding="5" cellspacing="5">
    		<tr>
    		
    		<td><strong>Name:</strong></td>
    		<td><strong>Date of Birth:</strong></td>
    		<td><strong>Age:</strong></td>
    		<td><strong>Gender:</strong></td>
    		<td><strong>Address:</strong></td>
    		<td><strong>City:</strong></td>
    		<td><strong>Email:</strong></td>
    		<td><strong>Mobile No:</strong></td>
    		<!-- <td><strong>Previous assigned Developer:</strong></td> -->
    		</tr>
    		
    		
    		<%
			String username=request.getParameter("name");
			int srno=1;
			Connection con=DbConnection.getConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from mem_info");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				%>
				<tr>
				
                <%-- <td><%=rs.getString("id") %> --%>
				<td><%=rs.getString("firstname") %>&nbsp;<%=rs.getString("middlename") %>&nbsp; <%=rs.getString("lastname") %></td>
				<td><%=rs.getString("dob") %></td>
				<td><%=rs.getString("age") %></td>
				<td><%=rs.getString("gender") %></td>
				<td><%=rs.getString("address") %></td>
				<td><%=rs.getString("city") %></td>
				<td><%=rs.getString("email") %></td>
				<td><%=rs.getString("mobile") %></td>
				
				
				
			<%						
			}					
			%>
			</tr>
</section>

<!--Top_content--> 
  <!-- <div class="container">
    <div class="footer_bottom"> <span>Copyright © 2014 Lumia Theme By <a href="http://themesell.co/">ThemeSell</a>. </span> </div>
  </div>
</footer>  -->

</body>
</html>

