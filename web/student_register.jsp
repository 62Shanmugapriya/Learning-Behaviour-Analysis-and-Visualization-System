 <%@page import="java.util.Random"%>
<%@ include file="include/dbconnect.jsp" %>

<%   
try 
{
    String btn = request.getParameter("btn");
    if (btn.equals("Submit")) 
    {
        String pass = request.getParameter("pwd");
        String cpass = request.getParameter("pwd");
        if(pass.equals(cpass))
        {
            String rno = request.getParameter("rno");
	    String name = request.getParameter("name");			
            String fathername = request.getParameter("fathername");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String mnumber = request.getParameter("mnumber");			
            String department = request.getParameter("department");
            String address = request.getParameter("address");
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            String day = String.valueOf(calendar.get(java.util.Calendar.DATE));
            String month = String.valueOf(calendar.get(java.util.Calendar.MONTH) + 1);
            String year1 = String.valueOf(calendar.get(java.util.Calendar.YEAR));
            String cdate = day + "-" + month + "-" + year1;              
            String qry = "select max(id) as maxid from student_reg";
            ResultSet rs = stmt1.executeQuery(qry); 
            int id1 = 0;
            if (rs.next()) 
            {
            id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
            
            String ins = "insert into student_reg values('"+id2+"','" + rno + "','"+name+"','" + fathername + "','" + age + "','"+gender+"','"+dob+"','"+mnumber+"','"+department+"','"+address+"','" + uname + "','"+pwd+"','"+cdate+"','0','0')";                     
            int n = stmt1.executeUpdate(ins);
			if(n==1)
			{
			%>
<script language="javascript" >
		alert("Registration Success");
		                window.location="student.jsp";

		</script>
						
<%
			}
           // response.sendRedirect("user.jsp");             
        }
        else
        {
		 %>
<script language="javascript" >
		alert("Password not matched");
		</script>
						
<%
        }
    }
}
catch (Exception e) 
{
   //out.print(e.getMessage());
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
.button2 {padding: 15px 25px;
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
.button4 {border-radius: 12px;}
.style19 {color: #EF5861; font-weight: bold; font-size: 24px; }
.style23 {color: #37BF91}
.style24 {color: #37BF91; font-weight: bold; font-size: 24px; }
.style25 {font-size: 24px; font-weight: bold;}
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
          <h3 class="tittle"> <span>S</span>tudent <span>R</span>egister </h3>
          <form name="form1" method="post" action="">
            <table width="899" height="637" border="0" align="center">
              <tr>
                <td width="258">&nbsp;</td>
                <td width="72">&nbsp;</td>
                <td width="220"><div align="center" class="style19"><span class="style23"></span></div></td>
                <td width="186"><label></label></td>
                <td width="141">&nbsp;</td>
              </tr>
              <tr>
                <td rowspan="6"><img src="images/reg.png" width="259" height="150"></td>
                <td height="38">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">RollNumber</div>
                </div></td>
                <td><input name="rno" type="text" id="rno" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="40">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">Name</div>
                </div></td>
                <td><input name="name" type="text" id="name" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="42">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">FatherName</div>
                </div></td>
                <td><input name="fathername" type="text" id="fathername" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="38">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">Age</div>
                </div></td>
                <td><input name="age" type="text" id="age" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="43">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">Gender</div>
                </div></td>
                <td><input name="gender" type="radio" value="Male">
                    <span class="style24">Male</span>
                    <input name="gender" type="radio" value="Female">
                    <span class="style24">Female</span></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="41">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">Date Of Birth </div>
                </div></td>
                <td><input name="dob" type="date" id="dob" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="46">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">MobileNumber</div>
                </div></td>
                <td><input name="mnumber" type="text" id="mnumber" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="39">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">DepartMent</div>
                </div></td>
                <td><input name="department" type="text" id="department" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="46">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">Address</div>
                </div></td>
                <td><input name="address" type="text" id="address" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="43">&nbsp;</td>
                <td><div align="center" class="style24">
                    <div align="left">UserName</div>
                </div></td>
                <td><input name="uname" type="text" id="uname" required=""></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="37">&nbsp;</td>
                <td><div align="center" class="style23">
                    <div align="left"><span class="style25">Password</span></div>
                </div></td>
                <td><input name="pwd" type="text" id="pwd" required=""></td>
                <td>&nbsp;</td>
              </tr>

              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style23"></span></td>
                <td><label>
                  <button class="button button4" name="btn" value="Submit">SignUp</button>
                </label></td>
                <td>&nbsp;</td>
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