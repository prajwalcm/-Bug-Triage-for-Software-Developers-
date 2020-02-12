<%@page import="com.util.DbConnection"%>
<%@page import="com.bugswitch.InstanceSelection"%>

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
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajerrornameax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.0.js"></script>

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
           <li><a href="adminhome.jsp">Home</a></li>

          <li><a href="insselect"><span>Instance Selection</span></a></li>
			<li><a href="fs.jsp"><span>Feature Selection</span></a></li>
				<li><a href="logoutServlet"><span>Logout</span></a></li>
        </ul>
      </nav>
      <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a> </div>
  </div>
</header>
<!--Header_section--> 


<body>
<div align="center">
<div id="wrapper" >
	<div id="header-wrapper">
		
		<div id="menu-wrapper" style="height: 550px; width: 1200px; overflow-y:scroll; padding-bottom: 10px; border: 3px solid black;">
		 <br><br>
           <h1 style="color: black; font-weight: bolder;"> Feature Selection </h1><a href="fselection"><!-- <h4 style="color: black;"><strong>Click Here to See </strong></h4> --></a>
           
            <table border="0" cellpadding="10" cellspacing="1" style="width:100%; border:1px solid #ccc; margin-top:40px; border-color: red; " >
                    
                    <tr class="tableheader">
                       <!--  <td style="color: black; font-weight: bolder;">Sr. No</td> -->
                       
                        <td style="color: black; font-weight: bold;">a</td>
                        <td style="color: black; font-weight: bold;">b</td>
                        <td style="color: black; font-weight: bold;">c</td>
                         <td style="color: black; font-weight: bold;">d</td>
                        <td style="color: black; font-weight: bold;">e</td>
                         
                    </tr>
                     
                             <tr><td>_______________________</td><td>_____________________</td><td>____________________</td><td>___________________</td><td>____________________</td><td>___________________</td></tr>
                    <%
                   // boolean Authorised=false;
                      /*  if(InstanceSelection.main().equals("active"))
                       { */
                     
                    	  Connection con=DbConnection.getConnection();
                    	   
                        int srno = 1;
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("SELECT  `errorname`,SUBSTRING_INDEX( `errorname` , ' ', 1 ) AS a,SUBSTRING_INDEX( `errorname` , ' ', 2 ) AS b,SUBSTRING_INDEX( `errorname` , ' ', 3 ) AS c,SUBSTRING_INDEX( `errorname` , ' ', 4 ) AS d, SUBSTRING_INDEX( `errorname` , ' ', 5 ) AS e FROM errors");
                        while(rs.next()){
                       // int Fileid = rs.getInt("id");
                        
                        
                        
                        String a = rs.getString("a");
                        String b = rs.getString("b");
                        String c = rs.getString("c");
                        String d = rs.getString("d");
                        String e = rs.getString("e");
                        //String user = GF.getFullName(Integer.parseInt(rs.getString("uploadedBy")));
                       
                       
                        
                            %>
                        
         
                    <tr class="tablerow">
                       <%--  <td><%= srno++ %></td> --%>
                        <td><%= a %></td>
                        <td><%= b %></td>
                        <td><%= c %></td>
                         <td><%= d %></td>
                        <td><%= e %></td>
                        
                    </tr>
                    <%                        
                        }/* } */
                    
                    %>
                    <%-- <%InstanceSelection.class.equals("InstanceSelection"); %> --%>
                </table>

		<!-- end #menu -->
		<div id="banner">
			<div class="contentbg">
			
				<div class="post">
					
				<h2 class="title"></h2>
				</div>
				<br/>
				
            
            <div>
            
            								
       <%--   <form action="retriveError" method="post" >  --%> 
           
           
          
            
            

					
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
		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page --> 
<!--</div>-->
<%@ include file='footer.jsp' %> 
<%---- end #footer --> --%>
</body>
</html>


