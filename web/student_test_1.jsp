 <%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
int solitary1=Integer.parseInt((String)session.getAttribute("solitary1"));
int social2=Integer.parseInt((String)session.getAttribute("social2"));
int physical3=Integer.parseInt((String)session.getAttribute("physical3"));
int arural4=Integer.parseInt((String)session.getAttribute("arural4"));
int logical5=Integer.parseInt((String)session.getAttribute("logical5"));
int verbal6=Integer.parseInt((String)session.getAttribute("verbal6"));
int visual7=Integer.parseInt((String)session.getAttribute("visual7"));
out.print(visual7);

String qid=(String)session.getAttribute("qid");
 
int total=Integer.parseInt((String)session.getAttribute("total"));


int qqid=Integer.parseInt(qid);
qqid+=1;
String ss="Select * from question_details where id='"+qqid+"'";
ResultSet rs=stmt.executeQuery(ss);
String question="";
String a1="";
String a2="";
String a3="";
if(rs.next())
{
question=rs.getString("question");
a1=rs.getString("a1");
a2=rs.getString("a2");
a3=rs.getString("a3");

}

try
{

String a=request.getParameter("Submit");
if(a.equals("Submit"))
{
 String answer=request.getParameter("select");
 //out.print(answer);
 
 
  if((qqid==1))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }
		 ////2

        else if((qqid==2))
        {
            if(answer.equals("0"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////3
        else if((qqid==3))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                social2++;
                total+=2;
            }
            else if(answer.equals("2"))
            {
                solitary1++;
                total+=1;
            }
        }
        ////4
        else if((qqid==4))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////5
        else if((qqid==5))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }

        ////6

        else if((qqid==6))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }
        /////7

        else if((qqid==7))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }
        ////8
        else if((qqid==8))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                solitary1 ++;
                total+=1;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }

        //////9
        else if((qqid==9))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }

        ///////10
        else if((qqid==10))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }

        ///////11
        else if((qqid==11))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("2"))
            {
                solitary1++;
                total+=1;
            }
        }
        ////12
        else if((qqid==12))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ///13
        else if((qqid==13))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////14
        else if((qqid==14))
        {
            if(answer.equals("0"))
            {
                social2++;
                total+=2;
            }
            else if(answer.equals("1"))
            {
                solitary1++;
                total+=1;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////15
        else if((qqid==15))
        {
            if(answer.equals("0"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ///16
        else if((qqid==16))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                verbal6++;
                total+=6;
            }
        }
        ///17
        else if((qqid==17))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                verbal6++;
                total+=6;
            }
        }
        ///18
        else if((qqid==18))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                arural4++;
                total+=4;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////19
        else if((qqid==19))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("2"))
            {
                logical5++;
                total+=5;
            }
        }
        ////20
        else if((qqid==20))
        {
            if(answer.equals("0"))
            {
                visual7++;
                total+=7;
            }
            else if(answer.equals("1"))
            {
                verbal6++;
                total+=6;
            }
            else if(answer.equals("2"))
            {
                physical3++;
                total+=3;
            }
        }
        ////The End////

		
 
   if(qqid<20)
        {
            session.setAttribute("qid",""+qqid);
            
            
 

            session.setAttribute("solitary1",""+solitary1);
            session.setAttribute("social2",""+social2);
            session.setAttribute("physical3",""+physical3);
            session.setAttribute("arural4",""+arural4);
            session.setAttribute("logical5",""+logical5);
            session.setAttribute("verbal6",""+verbal6);
            session.setAttribute("visual7",""+visual7);
            session.setAttribute("total",""+total);
            
            response.sendRedirect("student_test_1.jsp");
       

        }
        else
        {
            response.sendRedirect("student_test_2.jsp");
             
        }

//session.setAttribute("qid","0");
//session.setAttribute("total","0");
// response.sendRedirect("student_test_1.jsp");
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
				<span>T</span>est</h3>
                <form name="form1" method="post" action="">
                  <table width="50%" height="108" border="0" align="center">
                    <tr>
                      <td width="95"><% out.print(qqid);%>
                        .
                      <% out.print(question);%></td>
                    </tr>
                    <tr>
                      <td><div align="left">
                         
                        <select name="select">
                          <option value="0"><% out.print(a1);%></option>
                          <option value="1"><% out.print(a2);%></option>
                          <option value="2"><% out.print(a3);%></option>
                        </select>
                       
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left">
                        <label>
                        <input type="submit" name="Submit" value="Submit">
                        </label>
                      </div></td>
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