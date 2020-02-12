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

<script type="text/javascript">

function ValidateMobNumber(txtMobId) {
  var fld = document.getElementById(txtMobId);

  if (fld.value == "") {
  alert("You didn't enter a phone number.");
  fld.value = "";
  fld.focus();
  return false;
 }
  else if (isNaN(fld.value)) {
  alert("The phone number contains illegal characters.");
  fld.value = "";
  fld.focus();
  return false;
 }
 else if (!(fld.value.length == 10)) {
  alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
  fld.value = "";
  fld.focus();
  return false;
 }

}

</script>

<script>
function AllowAlphabet(){
    if (!ureg.username.value.match(/^[a-zA-Z]+$/) && ureg.username.value !="")	
	{
		ureg.username.value="";
		ureg.username.focus();
		alert("Please Enter only alphabets in text");
	}
	if (!ureg.location.value.match(/^[a-zA-Z]+$/) && ureg.location.value !="")	
	{
		ureg.location.value="";
		ureg.location.focus();
		alert("Please Enter only alphabets in text");
	}
        if (!ureg.ans.value.match(/^[a-zA-Z]+$/) && ureg.ans.value !="")	
	{
		ureg.ans.value="";
		ureg.ans.focus();
		alert("Please Enter only alphabets in text");
	}
	

}
 
</script>

</head>

<script language = "Javascript">

    function validation(){
        var uname=document.ureg.username.value;
        var pass=document.ureg.password.value;
        var cpass=document.ureg.cpassword.value;
        var mail=document.ureg.email.value;
        var location=document.ureg.location.value;
        var ans=document.ureg.ans.value;
        //var ph=document.ureg.mobile.value;
        
        
       // var fm_name=document.getElementById("name");
        
       
        
        
        if(location==0){
            alert("Enter Location");
            document.ureg.location.focus();
            return false;
        }
        if(ans==0){
            alert("Enter Pet name");
            document.ureg.ans.focus();
            return false;
        }
        if(uname==0){
            alert("Enter username");
            document.ureg.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ureg.password.focus();
            return false;
        }
        if(cpass!=pass){
            alert("Incorrect password");
            document.ureg.cpassword.focus();
            return false;
        }
        
        
        if(mail==0){
            alert("Enter mailid");
            document.ureg.mail.focus();
            return false;
        }
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
        {  
        }else{
        	alert("Enter mailid");
        	 document.ureg.mail.focus();
           return false;
    	}
        
      
         if(pass != "" && pass == cpass) {
             if(pass.length < 6) {
               alert("Error: Password must contain at least six characters!");
               document.ureg.password.focus();
               return false;
             }
             if(pass == name) {
               alert("Error: Password must be different from Username!");
               document.ureg.password.focus();
               return false;
             }
             re = /[0-9]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one number (0-9)!");
               document.ureg.password.focus();
               return false;
             }
             re = /[a-z]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one lowercase letter (a-z)!");
               document.ureg.password.focus();
               return false;
             }
             re = /[A-Z]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one uppercase letter (A-Z)!");
               document.ureg.password.focus();
               return false;
             }
           } else {
             alert("Error: Please check that you've entered and confirmed your password!");
             document.ureg.password.focus();
             return false;
           }
    }
      
                </script>
                <script>
function AllowAlphabet(){
    if (!ureg.username.value.match(/^[a-zA-Z]+$/) && ureg.username.value !="")	
	{
		ureg.username.value="";
		ureg.username.focus();
		alert("Please Enter only alphabets in text");
 	}
    if (!ureg.fname.value.match(/^[a-zA-Z]+$/) && ureg.fname.value !="")	
	{
		ureg.fname.value="";
		ureg.fname.focus();
		alert("Please Enter only alphabets in text");
	}
    if (!ureg.mname.value.match(/^[a-zA-Z]+$/) && ureg.mname.value !="")	
	{
		ureg.mname.value="";
		ureg.mname.focus();
		alert("Please Enter only alphabets in text");
	}
    if (!ureg.lname.value.match(/^[a-zA-Z]+$/) && ureg.lname.value !="")	
	{
		ureg.lname.value="";
		ureg.lname.focus();
		alert("Please Enter only alphabets in text");
	}
	if (!ureg.location.value.match(/^[a-zA-Z]+$/) && ureg.location.value !="")	
	{
		ureg.location.value="";
		ureg.location.focus();
		alert("Please Enter only alphabets in text");
	}
        if (!ureg.ans.value.match(/^[a-zA-Z]+$/) && ureg.ans.value !="")	
	{
		ureg.ans.value="";
		ureg.ans.focus();
		alert("Please Enter only alphabets in text");
	}
	
	
}
</script>

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
			<li><a href="login.jsp"><span>User Login</span></a></li>
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
    		<table align = "center">
				<tr>
				<td>
				<img src="img/user.png" width="100" height="100">&nbsp;&nbsp;&nbsp;</td>
				</tr>
				
				<tr> 
				 <td><span style="font-size:22px">User Registration</span></td>
				 </tr>
            </table>
    
          <form action="reg" method="post" name="ureg"  onsubmit="return validation()">
            <center>
            <table>
            <tr>
            <td><strong>First Name</strong></td><td><input type="text" name="fname"  onkeyup="AllowAlphabet()" required/>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Middle Name</strong></td><td><input type="text" name="mname" id= "mname" onkeyup="AllowAlphabet()" required/></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Last Name</strong></td><td><input type="text" name="lname" id= "lname" onkeyup="AllowAlphabet()" required/></input>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <br>
        <tr><td></td></tr>
         <tr><td></td></tr> 
            <tr>
            <td><strong>Date of Birth</strong></td><td><input type="text" name="dob" onfocus="showCalendarControl(this);" required></input></td>
             <td><strong>Age</strong></td><td><input type="text" name="age"required/></td>
            </tr>
            
            
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male" required></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
                        
            <tr>
            <td><strong>Address</strong></td><td><input type="text" name="address" id="address" required></input></td>
            <td><strong>City</strong></td><td><input type="text" name="city" id="location" onkeyup="AllowAlphabet()" required></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           <tr><td></td></tr>
         <tr><td></td></tr>
           
            <tr>
            <td><strong>Email Id</strong></td><td><input type="text" name="email" id="email" required/></input></td>
            <td><strong>Mobile no</strong></td><td><input type="text" name="mobile" id="txtMB" onblur="return ValidateMobNumber('txtMB')" required></input></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr><td></td></tr>
         <tr><td></td></tr>
          
            
            <tr>
            <td><strong>UserName</strong></td><td><input type="text" name="username" id="username" onkeyup="AllowAlphabet()" required />&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Password</strong></td><td><input type="password" name="password" id="passwords" required/></td>
            </tr>
           
           
            
           
           <!-- <tr>
           <td><strong>File Upload: Select a file to upload:</strong></td><td><input type="file" name="file" size="50" />
<td><input type="submit" value="Upload File" /></td>
            
            </tr> -->
        <tr><td></td></tr>
         <tr><td></td></tr>
            
</table>
            <table>
            <tr>
            <td><input type="submit" style="font-size:large; color:white;background-color:green;;70px; height: 38px; width:71px;" ></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="register.jsp"><img src="img/reset.jpg" width="91" height="41" title="Reset"></img></a></td>
            </tr>
            </div>
           
            
            
            </table></center>
					
												
			</form>
        </div>
  </div>
</section>
<!--Top_content--> 
  <div class="container">
    <div class="footer_bottom"> <span>Copyright © 2014 Lumia Theme By <a href="http://themesell.co/">ThemeSell</a>. </span> </div>
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
 <link href="./css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="./js/CalendarControl.js"  language="javascript"></script>  



<script type="text/javascript">

function ValidateMobNumber(txtMobId) {
  var fld = document.getElementById(txtMobId);

  if (fld.value == "") {
  alert("You didn't enter a phone number.");
  fld.value = "";
  fld.focus();
  return false;
 }
  else if (isNaN(fld.value)) {
  alert("The phone number contains illegal characters.");
  fld.value = "";
  fld.focus();
  return false;
 }
 else if (!(fld.value.length == 10)) {
  alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
  fld.value = "";
  fld.focus();
  return false;
 }

}

</script>

<script>
function AllowAlphabet(){
    if (!ureg.username.value.match(/^[a-zA-Z]+$/) && ureg.username.value !="")	
	{
		ureg.username.value="";
		ureg.username.focus();
		alert("Please Enter only alphabets in text");
	}
	if (!ureg.location.value.match(/^[a-zA-Z]+$/) && ureg.location.value !="")	
	{
		ureg.location.value="";
		ureg.location.focus();
		alert("Please Enter only alphabets in text");
	}
        if (!ureg.ans.value.match(/^[a-zA-Z]+$/) && ureg.ans.value !="")	
	{
		ureg.ans.value="";
		ureg.ans.focus();
		alert("Please Enter only alphabets in text");
	}
	

}
 
</script>

</head>



<!-- 

new one validation 



 -->
<script language = "Javascript">

    function validation(){
        var uname=document.ureg.username.value;
        var pass=document.ureg.password.value;
        var cpass=document.ureg.cpassword.value;
        var mail=document.ureg.email.value;
        var location=document.ureg.location.value;
        var ans=document.ureg.ans.value;
        //var ph=document.ureg.mobile.value;
        
        
       // var fm_name=document.getElementById("name");
        
       
        
        
        if(location==0){
            alert("Enter Location");
            document.ureg.location.focus();
            return false;
        }
        if(ans==0){
            alert("Enter Pet name");
            document.ureg.ans.focus();
            return false;
        }
        if(uname==0){
            alert("Enter username");
            document.ureg.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ureg.password.focus();
            return false;
        }
        if(cpass!=pass){
            alert("Incorrect password");
            document.ureg.cpassword.focus();
            return false;
        }
        
        
        if(mail==0){
            alert("Enter mailid");
            document.ureg.mail.focus();
            return false;
        }
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
        {  
        }else{
        	alert("Enter mailid");
        	 document.ureg.mail.focus();
           return false;
    	}
        
      
         if(pass != "" && pass == cpass) {
             if(pass.length < 6) {
               alert("Error: Password must contain at least six characters!");
               document.ureg.password.focus();
               return false;
             }
             if(pass == name) {
               alert("Error: Password must be different from Username!");
               document.ureg.password.focus();
               return false;
             }
             re = /[0-9]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one number (0-9)!");
               document.ureg.password.focus();
               return false;
             }
             re = /[a-z]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one lowercase letter (a-z)!");
               document.ureg.password.focus();
               return false;
             }
             re = /[A-Z]/;
             if(!re.test(pass)) {
               alert("Error: password must contain at least one uppercase letter (A-Z)!");
               document.ureg.password.focus();
               return false;
             }
           } else {
             alert("Error: Please check that you've entered and confirmed your password!");
             document.ureg.password.focus();
             return false;
           }
    }
      
                </script>
                <script>
function AllowAlphabet(){
    if (!ureg.username.value.match(/^[a-zA-Z]+$/) && ureg.username.value !="")	
	{
		ureg.username.value="";
		ureg.username.focus();
		alert("Please Enter only alphabets in text");
 	}
    if (!ureg.fname.value.match(/^[a-zA-Z]+$/) && ureg.fname.value !="")	
	{
		ureg.fname.value="";
		ureg.fname.focus();
		alert("Please Enter only alphabets in text");
	}
    if (!ureg.mname.value.match(/^[a-zA-Z]+$/) && ureg.mname.value !="")	
	{
		ureg.mname.value="";
		ureg.mname.focus();
		alert("Please Enter only alphabets in text");
	}
    if (!ureg.lname.value.match(/^[a-zA-Z]+$/) && ureg.lname.value !="")	
	{
		ureg.lname.value="";
		ureg.lname.focus();
		alert("Please Enter only alphabets in text");
	}
	if (!ureg.location.value.match(/^[a-zA-Z]+$/) && ureg.location.value !="")	
	{
		ureg.location.value="";
		ureg.location.focus();
		alert("Please Enter only alphabets in text");
	}
        if (!ureg.ans.value.match(/^[a-zA-Z]+$/) && ureg.ans.value !="")	
	{
		ureg.ans.value="";
		ureg.ans.focus();
		alert("Please Enter only alphabets in text");
	}
	
	
}
</script>







<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<%@ include file='logo.jsp' %>
		</div>
		<div id="menu-wrapper">
			<ul id="menu">
				<li class="current_page_item"><a href="index.jsp"><span>Home</span></a></li>
					<li><a href="login.jsp"><span>Login</span></a></li>
				<li><a href="aboutus.jsp"><span>About Us</span></a></li>
				
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
				 <td><span style="font-size:22px">Registration</span></td>
				 </tr>
            </table>
            
            
            
          <form action="reg" method="post" name="ureg"  onsubmit="return validation()">
            <center><table>
            <tr>
            <td><strong>First Name</strong></td><td><input type="text" name="fname"  onkeyup="AllowAlphabet()" required/>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Middle Name</strong></td><td><input type="text" name="mname" id= "mname" onkeyup="AllowAlphabet()" required/></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Last Name</strong></td><td><input type="text" name="lname" id= "lname" onkeyup="AllowAlphabet()" required/></input>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            
            <tr>
            <td><strong>Date of Birth</strong></td><td><input type="text" name="dob" onfocus="showCalendarControl(this);" required></input></td>
             <td><strong>Age</strong></td><td><input type="text" name="age"required/></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male" required></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Address</strong></td><td><input type="text" name="address" id="address" required></input></td>
            <td><strong>City</strong></td><td><input type="text" name="city" id="location" onkeyup="AllowAlphabet()" required></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           
           
            <tr>
            <td><strong>Email Id</strong></td><td><input type="text" name="email" id="email" required/></input></td>
            <td><strong>Mobile no</strong></td><td><input type="text" name="mobile" id="txtMB" onblur="return ValidateMobNumber('txtMB')" required></input></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
          
            
            <tr>
            <td><strong>UserName</strong></td><td><input type="text" name="username" id="username" onkeyup="AllowAlphabet()" required />&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Password</strong></td><td><input type="password" name="password" id="passwords" required/></td>
            </tr>
           
           
            
           
           <!-- <tr>
           <td><strong>File Upload: Select a file to upload:</strong></td><td><input type="file" name="file" size="50" />
<td><input type="submit" value="Upload File" /></td>
            
            </tr> -->
            <!--  <tr><td></td></tr>-->
            <tr>
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="register.jsp"><img src="images/reset.png" width="57" height="43" title="Reset"></img></a></td>
            </tr>
            
            
            
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
 <script type="text/javascript" src="js/jquery.transform-0.9.3.min_.js"></script>
		<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="js/jquery.RotateImageMenu.js"></script>
<%@ include file='footer.jsp' %>
<!-- end #footer -->
</body>
</html>










<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
					<li><a href="login.jsp"><span>Login</span></a></li>
				<li><a href="aboutus.jsp"><span>About Us</span></a></li>
				
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
				 <td><span style="font-size:22px">Registration</span></td>
				 </tr>
            </table>
            
            
            
          <form action="reg" method="post" >
            <center><table>
            <tr>
            <td><strong>First Name</strong></td><td><input type="text" name="fname"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Middle Name</strong></td><td><input type="text" name="mname"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Last Name</strong></td><td><input type="text" name="lname"></input>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            
            <tr>
            <td><strong>Date of Birth</strong></td><td><input type="text" name="dob"></input></td>
             <td><strong>Age</strong></td><td><input type="text" name="age"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Address</strong></td><td><input type="text" name="address"></input></td>
            <td><strong>City</strong></td><td><input type="text" name="city"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           
           
            <tr>
            <td><strong>Email Id</strong></td><td><input type="text" name="email"></input></td>
            <td><strong>Mobile no</strong></td><td><input type="text" name="mobile"></input></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
          
            
            <tr>
            <td><strong>UserName</strong></td><td><input type="text" name="username"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Password</strong></td><td><input type="password" name="password"></input></td>
            </tr>
           
           
            
           
           <!-- <tr>
           <td><strong>File Upload: Select a file to upload:</strong></td><td><input type="file" name="file" size="50" />
<td><input type="submit" value="Upload File" /></td>
            
            </tr> -->
            <!--  <tr><td></td></tr>-->
            <tr>
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="register.jsp"><img src="images/reset.png" width="57" height="43" title="Reset"></img></a></td>
            </tr>
            
            
            
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