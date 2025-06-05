 <%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 String uid=(String)session.getAttribute("uid");
 /*
int solitary1=Integer.parseInt((String)session.getAttribute("solitary1"));
int social2=Integer.parseInt((String)session.getAttribute("social2"));
int physical3=Integer.parseInt((String)session.getAttribute("physical3"));
int arural4=Integer.parseInt((String)session.getAttribute("arural4"));
int logical5=Integer.parseInt((String)session.getAttribute("logical5"));
int verbal6=Integer.parseInt((String)session.getAttribute("verbal6"));
int visual7=Integer.parseInt((String)session.getAttribute("visual7"));
*/
 int solitary1=0;
 int social2=0;
 int physical3=0;
 int arural4=0;
 int logical5=0;
 int verbal6=0;
 int visual7=0;
 String qry1 = "select *  from student_result where uid='"+uid+"'";
            ResultSet rs = stmt1.executeQuery(qry1); 
 
            if (rs.next()) 
            {
               solitary1 = rs.getInt("solitary");
               social2 = rs.getInt("social");
               physical3 = rs.getInt("physical");
               arural4 = rs.getInt("arural");
               logical5 = rs.getInt("logical");
               verbal6 = rs.getInt("verbal");
               visual7 = rs.getInt("visual");
            }
int total=Integer.parseInt((String)session.getAttribute("total"));
 HashMap<Integer, String> hmap = new HashMap<Integer, String>();
     hmap.put(visual7, "visual");
             hmap.put(verbal6, "verbal");
             hmap.put(logical5, "logical");
             hmap.put(arural4, "arural");
             hmap.put(physical3, "physical");
             hmap.put(social2, "social");
             hmap.put(solitary1, "solitary");
             
             Map.Entry<Integer, String> firstEntry = hmap.entrySet().iterator().next();
	     int largestKey1 = firstEntry.getKey();
	    
	     String largestKeyValue = firstEntry.getValue();
             int h=0;
      
 
	for (Map.Entry<Integer, String> map : hmap.entrySet()) {
	    int key = map.getKey();
          
	    if (key > largestKey1) 
            {
		largestKey1 = key;                
		largestKeyValue = map.getValue();
	    }
           
	}
         
try
{

String a=request.getParameter("Submit");
if(a.equals("Submit"))
{
 
   String qry="update student_reg set report='"+largestKeyValue+"' where id='"+uid+"'";
   int n = stmt1.executeUpdate(qry);
   
   response.sendRedirect("student_result.jsp"); 
   
   
 
}
}catch (Exception e)
{



//out.print(e);

}





%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Hall Automation</title>
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
						<a class="navbar-brand" href="#">
							<h1>
								<span class="fa fa-leanpub" aria-hidden="true"></span><strong>E LEARNING</strong>
								 
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
							<%@ include file="include/student_menu.jsp" %>	
							
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
				<li>Student</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- contact -->
	<div class="contact">
		<div class="container">
		  <div class="title-div">
				<h3 class="tittle">
				<span>R</span>esult</h3>
                <form name="form1" method="post" action="">
                  <table width="50%" height="108" border="0" align="center">
                    <tr>
                      <td>Total : </td>
                      <td><% out.print(total);%></td>
                    </tr>
                    <tr>
                      <td width="95">Visual :</td>
                      <td width="95"><% out.print(visual7);%></td>
                    </tr>
                    <tr>
                      <td>Verbal :</td>
                      <td><% out.print(verbal6);%></td>
                    </tr>
                    <tr>
                      <td>Logical : </td>
                      <td><% out.print(logical5);%></td>
                    </tr>
                    <tr>
                      <td>Arural :</td>
                      <td><% out.print(arural4);%></td>
                    </tr>
                    <tr>
                      <td>Physical :</td>
                      <td><% out.print(physical3);%></td>
                    </tr>
                    <tr>
                      <td>Social :</td>
                      <td><% out.print(social2);%></td>
                    </tr>
                    <tr>
                      <td>Solitary :</td>
                      <td><% out.print(solitary1);%></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2"><h4 align="center">Your are the   
                        <% out.print(largestKeyValue);%>   
                      Learner !</h4></td>
                    </tr>
                    <tr>
                      <td colspan="2">&nbsp;</td>
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