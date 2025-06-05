
<%
try
{
 session.removeAttribute("username");
 session.removeAttribute("uname");
response.sendRedirect("index.jsp");
}
catch(Exception e)
        {
    }
%>

