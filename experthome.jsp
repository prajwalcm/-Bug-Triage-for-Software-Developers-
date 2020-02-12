<%@page import="com.bugswitch.AESAlgorithm"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DbConnection"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
    
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
<script type="text/javascript">

function callAll()
{
	validate();
	/* passcheck(); */
}

function validate()
{
	
	
	if(document.getElementById("errorsolution").value=="")
   	{
   		alert("Solution should not be blank");
   		document.getElementById("errorsolution").focus();
   		return false;
   	}
	
	
}

</script>

<script>
function load()
{
	
	alert($('#errorname').val());
	$.ajax({
		url:"expertsolution",
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

function decrypt()
{
	var dec = document.getElementById("errorname").value;
	document.getElementById("dec").innerHTML="Original Bug : "+dec;
	
	
}
function priority()
{
	$.ajax({
		url:"expertreg",
		data:{"errorname":$('#errorname').val(),"type":"logical"}, /* #medfor is catch from the below code and medfor is send as a logical name to servlet */
		/* method:"abcS", */
		success:function(data)
		{ 
			/* here data contain what ever print in servlet 
			and #data is a logical name for which we create div and print below
		    */
			$("#dec").html("Priority of Bug : "+data);	
			
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
           <li><a href="experthome.jsp">Home</a></li>
          
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
           
				
				
    <form action="expertsolution" method="post" onsubmit="return validate()">        
            <div>
            	<br/>
            		<br/>
            			<br/>
            			<h1> Select Bug to provide the solution</h1>
            				<br/>
            					<br/>
            					<strong id="dec" style="color: green;"></strong>
            						<br/>
            							<br/>
            								<br/>	<br/>
            								
       <%--   <form action="retriveError" method="post" >  --%> 
            <center>
            
            <table>
            <tr>
            <td><strong>Select your Bug</strong></td><td>
            
            
<select name="errorname" onchange="" id="errorname">
<%
    
	String developername = (String)session.getAttribute("developername");
	System.out.println("Developer name ------="+developername);
	String errortype=(String)session.getAttribute("errortype");
	System.out.println("Test==errortype="+errortype);
	
	
     Connection con=DbConnection.getConnection();
     AESAlgorithm aes = new AESAlgorithm(); 
     
           PreparedStatement ps=con.prepareStatement("select distinct errorname from logical where errortype=? and errorsolution='NULL' ORDER BY severity ASC");
           ps.setString(1, errortype);
         
          ResultSet rs=ps.executeQuery();
          
           while(rs.next()){
        	   String eerrorname=(String)rs.getString("errorname");
        	   System.out.println("Errorname test===="+eerrorname);
        	  /*  String salt1="bugtriage";
        	   String derrorname = new AESAlgorithm().decrypt(eerrorname, "bugtriage");
        	   System.out.println("Decreapted Errorname test===="+derrorname); */
           %>


<%-- <option value="<%=rs.getString("errorname")%>"><%=rs.getString("errorname")%></option> --%>


<%
				
	            Date current = new Date();
	    		Calendar cal = Calendar.getInstance();

	    		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

	    		String formatted = format1.format(cal.getTime());
	    		System.out.println("Current Date====" + formatted);
	    		
	    		
	    		
	    		try{
	    			
	                Connection con1 =DbConnection.getConnection();
	                PreparedStatement ps1 =con1.prepareStatement("SELECT * FROM logical WHERE errorname='"+eerrorname+"'");
	                ResultSet rs1 = ps1.executeQuery();
	                String fdate="";
	                String ldate="";
	    			while(rs1.next())
	    			{
	    				fdate=rs1.getString("assigndate");
	    				System.out.println("assign Date=="+fdate);
	    	            
	    				ldate = rs1.getString("finaldate");
	    				System.out.println("LAST DATE IS:"+ldate);
	    				Date	d1 = format1.parse(formatted);
	    				Date	d2 = format1.parse(ldate);

	    					//in milliseconds
	    					long diff = d2.getTime() - d1.getTime();
	    			System.out.println(" diff "+diff);
	    					long diffSeconds = diff / 1000 % 60;
	    					long diffMinutes = diff / (60 * 1000) % 60;
	    					long diffHours = diff / (60 * 60 * 1000) % 24;
	    					
	    					long diffDays = diff / (24 * 60 * 60 * 1000);
	    			System.out.println("days "+diffDays );
	    					System.out.print(diffDays + " days, ");
	    					System.out.print(diffHours + " hours, ");
	    					System.out.print(diffMinutes + " minutes, ");
	    					System.out.print(diffSeconds + " seconds.");

	    			    	  if(diffDays>0){
	    			    		 
	    			    		  System.out.println("Test done");
	    			    		  
	    			    		  %>
	    			    		  <option value="<%=rs.getString("errorname")%>"><%=aes.encrypt(rs.getString("errorname"),"salt")%></option>
	    			    		  <% 
	    			    	  }
	    			    	  else{
	    			    		 
	    			    		  String errorname2 = rs.getString("errorname");
	    			    		  System.out.println("Out of Date...====="+errorname2);
	    			    		  
	    			    		  Connection con3 = DbConnection.getConnection();
	    			    		  PreparedStatement ps3 = con3.prepareStatement("DELETE FROM unsolvederror WHERE errorname='"+errorname2+"'");
	    			    		  int r1 = ps3.executeUpdate();
	    			    		  if(r1 > 0){
	    			    			  System.out.println("Delete done...");
	    			    		  }
	    			    		  
	    			    		  Connection con2 = DbConnection.getConnection();
	    			    		  PreparedStatement ps2 = con2.prepareStatement("INSERT INTO `bugswitch`.`unsolvederror` (`id`, `errorname`, `preassigned`) VALUES ('null', '"+errorname2+"', '"+developername+"');");
	    			    		  
	    			    		  int result = ps2.executeUpdate();
	    			    		  if(result>0){
	    			    			  System.out.println("Insertion done....");
	    			    		  }
 						
	    			    	  }
	    			}
				
				%>
				<%
				
				
			    	  }
	    		catch(Exception e){
	    			
	    		}
			    		  
				%>


<%
	

           }
%>
</select>

  
          </tr>
          <tr>
          <td><strong>Enter your Solution</strong><td><input type="text" name="errorsolution" id="errorsolution" placeholder="Enter Solution"/></td></tr> 
         
          <tr>
         <td align="center"><input type="button" onclick="decrypt()" value="Decryption of bug"></td>
         <td ><input type="button" onclick="priority()" value="Priority"></td>
         </tr>
          <tr>
           <td colspan="4" align="center"><input type="submit" value="Submit"/> </td></tr></center>
            
           <%-- <input type="submit" value="Seeee"/>--%>
           
            </table>
            </center></form>
            
            <p> ${message1}</p>
					
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


