

<%@page import="com.util.DbConnection"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><%@ include file='title.jsp' %></title>
<!-- <link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajerrornameax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.0.js"></script> -->
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




<script>
function load()
{
	
	alert($('#errorname').val());
	$.ajax({
		url:"retriveerror",
		data:{"errorname":$('#errorname').val()}, /* #medfor is catch from the below code and medfor is send as a logical name to servlet */
		/* method:"abcS", */
		success:function(data)
		{ 
			/* here data contain what ever print in servlet 
			and #data is a logical name for which we create div and print below
		    */
		    
			$("#data").html(data);	
		}
	});
}
</script>

</head>
<body>

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
           <li><a href="home.jsp">Home</a></li>
          <li><a href="viewunsolvederror.jsp">Unsolved Error</a></li>
          <li><a href="logoutServlet">Logout</a></li>
        </ul>
      </nav>
      <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a> </div>
  </div>
</header>


		<section id="top_content" class="top_cont_outer">
  <div class="top_cont_inner">
    <div class="container">
      <div class="top_content">
        <div class="row">
          <div align="center">		
            
            <div>
            	<br/>
            		<br/>
            			<br/>
            			<h1>Enter your Bug to Get the Solution</h1>
            			<a href="request.jsp"><h4 style="color: black;"><strong>Click Here to Add Bug Request </strong></h4></a>
            				<br/>
            					<br/>
            						<br/>
            							<br/>
            								<br/>	<br/>
            								
         <form action="retriveError" method="post">  
            <center>
            <table>
            <tr>
            <td><strong>See the Solution for Previously Entered Bugs</strong></td><td>
            
            
<select name="errorname" onchange="" id="errorname">
<%Connection con=DbConnection.getConnection();
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select distinct errorname from programming union select distinct errorname from system union select distinct errorname from runtime union select distinct errorname from logical union select distinct errorname from other order by errorname");
           while(rs.next()){
        	   
           %>


<option value="<%=rs.getString("errorname")%>"><%=rs.getString("errorname")%></option>

<%
	

           }
%>
</select>
  
           <!-- <input type="text" name="error" id="error"/></td> -->
           </td></tr> <tr>
            <center><td colspan="2" align="center"><input type="button" value="SEE" onclick="load()"> </td></tr></center>
          
           
            </table>
            </center></form>
					
			<div id="data"></div>									
<!-- 			</form> -->
			</div>
				<div style="clear: both;">&nbsp;</div>
			</div>
			
		</div>
	</div>
	</div>
	<!-- end #header -->
	<!--<div id="page">-->
		<div id="content">
			
		</div>
		
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page --> 
<!--</div>-->
<%@ include file='footer.jsp' %> 
-- end #footer -->
</body>
</html>


