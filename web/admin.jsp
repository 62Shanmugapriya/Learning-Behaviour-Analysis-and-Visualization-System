<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
<%

try
{
String email="";
String a=request.getParameter("btn");
if(a.equals("Submit"))
{
 String name=request.getParameter("aname");
String pass=request.getParameter("apass");
 
  if((name.equals("admin"))&&(pass.equals("admin")))
{
    response.sendRedirect("admin_home.jsp");
}
else
{
%>
	 <script language="javascript">
		alert("user name/ pass  Wrong!");
		</script>
						
<%	

}
		 
    
    
}


}catch (Exception e)
{



//out.print(e);

}




%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title></title>
	<!-- meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <style type="text/css">
<!--
.button {  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #13131B;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.style7 {	color: #009BDC;
	font-size: 36px;
	font-weight: bold;
}
.style8 {color: #009EDD; font-size: 36px; font-weight: bold; }
.button1 {padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #13131B;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
-->
    </style>
</head>

<body>
	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					
				</p>
			</div>
			<div class="bottom_header_right">
				<div class="bottom-social-icons">
					
				</div>
				<div class="header-top-righ">
  				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.jsp">
							<h1>
								<span class="fa fa-leanpub" aria-hidden="true"></span><strong>E LEARNING</strong>
								<label>SYSTEM</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								
							 <li class="active">
									<a href="index.jsp" class="effect-3"><strong>Home</strong></a>
								</li>
								<li>
									<a href="admin.jsp" class="effect-3"><strong>Admin</strong></a>
								</li>
								<li>
									<a href="staff.jsp" class="effect-3"><strong>Staff</strong></a>
								</li>
								<li>
									<a href="student.jsp" class="effect-3"><strong>Student</strong></a>
								</li>
						  </ul>
								</li>
								 
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">

	</div>
	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="index.html">Home</a>
					<span>| |</span>
				</li>
				<li>Admin</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>A</span>dmin
				<span>L</span>ogin				</h3>
				<form name="form1" method="post" action="">
				  <table width="906" height="326" border="0" align="center">
                    <tr>
                      <td width="53">&nbsp;</td>
                      <td width="100">&nbsp;</td>
                      <td width="272">&nbsp;</td>
                      <td width="205">&nbsp;</td>
                      <td colspan="4" rowspan="4"><img src="images/admin.png" width="309" height="216"></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><div align="center" class="style8">UserName</div></td>
                      <td><label>
                        <input name="aname" type="text" id="aname">
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><div align="center" class="style7">Password</div></td>
                      <td><label>
                        <input name="apass" type="password" id="apass">
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <button class="button1" name="btn" value="Submit">LogIn</button>
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td colspan="4">&nbsp;</td>
                    </tr>
                  </table>
                                </form>
				</div>
			<div class="contact-row">
			  <div class="clearfix"></div>
		  </div>
		</div>
	</div>
	<!-- //contact -->
    <!-- footer -->
<div class="mkl_footer">
  <div class="footer-copy-right">
			<div class="container">
				<div class="allah-copy">
					<p>� Best Study. All rights reserved | Design by
						<a href="#">Admin</a>
					</p>
				</div>
				<div class="footercopy-social">
					<ul>
						<li>
							<a href="#">
								<span class="fa fa-facebook"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-rss"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-vk"></span>
							</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
  </div>
</div>
	<!--/footer -->

	<!-- js files -->
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>

</html>