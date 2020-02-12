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
<body>
<div id="wrapper" align="center">
	<div id="header-wrapper" align="center">
		<div id="header">
			<%@ include file='logo.jsp' %>
		</div>
		<div id="menu-wrapper" style="height: 250px; width: 800px; overflow-y: scroll; padding-bottom: 10px; border: 3px solid black;">
		 <br><br>
           <h1 style="color: black; font-weight: bolder;"> Instance Selection Bug Count </h1><a href="instselect.jsp"><h4 style="color: black;"><strong>Click Here to See Data</strong></h4></a>
           
            <table border="0" cellpadding="10" cellspacing="1" style="width:100%; border:1px solid #ccc; margin-top:40px; border-color: black; " >
                    
                    <tr class="tableheader" >
                        <td style="color: black; font-weight: bolder;">Before Instance Selection<br>Bug Count</td>
                       
                        <td style="color: black; font-weight: bold;">After Instance Selection<br>Bug Count</td>
                        
                         
                    </tr>
                     
                             <!-- <tr><td>_______________________</td><td>_____________________</td></tr> -->
                    <%
                    int x=0;
                    String count1=null;
                   // boolean Authorised=false;
                       if(InstanceSelection.main().equals("active"))
                       {
                    	   Connection con=DbConnection.getConnection(); 
                     //   int Userid = Integer.parseInt((String)session.getAttribute("userId"));
                        int srno = 1;
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select count(*)  as count from errors");
                        
                        while(rs.next()){
                       // int Fileid = rs.getInt("id");
                        
                        
                        
                        String count = rs.getString("count");
                        
                       
                        
                            %>
                        
         
                    <tr class="tablerow">
                       
                        <td style="color: black;"><%= count %></td>
                        
                        
                       
                         
                   <!--  </tr> -->
                    <%                        
                        }}
                    
                    %>
                    
                    <% 
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/bugswitch","root","");  
                    Statement st1= con1.createStatement();
                    ResultSet rs1 = st1.executeQuery("select count(errorname)  as count1 from instanceselection group by errorname");
                  
                    while(rs1.next()){
                    	x++;
                    	 count1 = rs1.getString("count1");
                    	 
                    %>
                    
                    <!-- <tr class="tablerow"> -->
                     
                        
                    <%                        
                        }
                    
                    %>
                    <td style="color: black;"><%= x %></td>
                        
                        
                       
                         
                    </tr>
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


