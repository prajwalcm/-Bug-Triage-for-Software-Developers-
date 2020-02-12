<%@page import="com.util.DbConnection"%>
<%@page import="com.bugswitch.InstanceSelection"%>

<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
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
  <div class="container" align="center">
    <div class="header_section" align="center">
      <div class="logo"><a href="#"><img src="img/bugLogo.jpg" width="80" height="80" alt=""></a>
      <a><font size="14">Bug Triage</font></a></div>     
       <nav class="nav" id="nav">
      
        <ul class="">
           <li class="current_page_item"><a href="adminhome.jsp"><span>Home</span></a></li>
				
			
				<li><a href="insselect"><span>Instance Selection</span></a></li>
			<li><a href="fs.jsp"><span>Feature Selection</span></a></li>
				<li><a href="logoutServlet"><span>Logout</span></a></li>
        </ul>
      </nav>
      <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a> </div>
  </div>
</header>
<!--Header_section--> 
		<div align="center">
		<div align="center" id="menu-wrapper" style="height: 550px; width: 800px; overflow-y: scroll; padding-bottom: 10px; border: 3px solid black;">
		 <br><br>
           <h1 style="color: black; font-weight: bolder;">After Instance Selection </h1><a href="instancecount.jsp"><h4 style="color: black;"><strong>Click Here to See Count</strong></h4></a>
           
            <table border="0" cellpadding="10" cellspacing="1" style="width:100%; border:1px solid #ccc; margin-top:40px; border-color: red; " >
                    
                    <tr class="tableheader">
                        <td style="color: black; font-weight: bolder;">Sr. No</td>
                       
                        <td style="color: black; font-weight: bold;">Bug Type</td>
                        <td style="color: black; font-weight: bold;">Bug Description</td>
                        <td style="color: black; font-weight: bold;">Bug ID </td>
                         
                    </tr>
                     
                             <tr><td>_______________________</td><td>_____________________</td><td>____________________</td><td>___________________</td></tr>
                    <%
                   // boolean Authorised=false;
                       if(InstanceSelection.main().equals("active"))
                       {
                   Connection con=DbConnection.getConnection();
                   /* PreparedStatement psdelete=con.prepareStatement("delete from instanceselection");
                   psdelete.executeUpdate(); */
                   PreparedStatement ps1;
                         int srno=1;
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select distinct(errorname),errortype,errorcode from instanceselection ");
                        while(rs.next()){
                      
                        String errortype = rs.getString("errortype");
                        String errorname = rs.getString("errorname");
                        String errorcode = rs.getString("errorcode");
                        
                        //String user = GF.getFullName(Integer.parseInt(rs.getString("uploadedBy")));
                        
                    /*    ps1=con.prepareStatement("insert into instanceselection (errortype,errorname,errorcode) values(?,?,?) ");
                       ps1.setString(1, errortype);
                       ps1.setString(2, errorname);
                       ps1.setString(3, errorcode);
                       srno=  ps1.executeUpdate(); */
                      //  System.out.println("---->"+srno);
                            %>
                        
         
                    <tr class="tablerow">
                        <td><%= srno++ %></td>
                        <td><%= errortype %></td>
                        <td><%= errorname %></td>
                        <td><%= errorcode %></td>
                        
                       
                         
                    </tr>
                    <%                        
                        }}
                    
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
		
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page --> 
<!--</div>-->
<%@ include file='footer.jsp' %> 
<%---- end #footer --> --%>
</body>
</html>


