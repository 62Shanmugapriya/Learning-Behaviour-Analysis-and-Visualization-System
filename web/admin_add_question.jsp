 <%@ include file="include/dbconnect.jsp" %> 
 <%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

try
{
 
    
    
String a=request.getParameter("Submit");
   
if(a.equals("Submit"))
{

 String question=request.getParameter("question");
String a1=request.getParameter("a1");
String a2=request.getParameter("a2");
String a3=request.getParameter("a3");

java.util.Calendar calender=java.util.Calendar.getInstance();
        String day=String.valueOf(calender.get(java.util.Calendar.DATE));
        String month=String.valueOf(calender.get(java.util.Calendar.MONTH)+1);
        String year=String.valueOf(calender.get(java.util.Calendar.YEAR));
        String cdate=day+"_"+month+"_"+year;
        String qry="select max(id) as maxid from question_details";
        ResultSet rs=stmt.executeQuery(qry);
        int id1=0;
        if(rs.next())
        {
            id1=rs.getInt("maxid");
        }
        int id2=id1+1;   
   //out.print(id2);  
        String ins="insert into question_details values('"+id2+"','"+question+"','"+a1+"','"+a2+"','"+a3+"','0','0','0')";
       int n=stmt1.executeUpdate(ins);
      //  response.sendRedirect("admin_home.jsp");
 %>
	 <script language="javascript">
		alert("Success");
		</script>
						
<%	
        
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
.button1 {  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #37BF91;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.style10 {	font-size: 18px;
	color: #37BF91;
	font-weight: bold;
}
.style11 {	color: #055F9A;
	font-size: 36px;
	font-weight: bold;
}
.style12 {color: #06629C; font-size: 36px; font-weight: bold; }
.style9 {font-size: 36px}
.button11 {padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #37BF91;
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
								 
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
							<%@ include file="include/admin_menu.jsp" %>		
							 
							 
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
					<a href="#">Home</a>
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
					<span>A</span>dd
				<span>Q</span>uestion				</h3>
                <form name="form1" method="post" action="">
                  <table width="291" height="184" border="0" align="center">
                    <tr>
                      <td width="124">Question</td>
                      <td width="157"> 
                      <input name="question" type="text" id="question" required="">                      </td>
                    </tr>
                    <tr>
                      <td>Answer 1 </td>
                      <td><input name="a1" type="text"   id="a1" required=""></td>
                    </tr>
                    <tr>
                      <td>Answer 2 </td>
                      <td><input name="a2" type="text" id="a2" required=""></td>
                    </tr>
                    <tr>
                      <td>Answer 3 </td>
                      <td><input name="a3" type="text" id="a3" required=""></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td> 
                        <input type="submit" name="Submit" value="Submit">
                       </td>
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