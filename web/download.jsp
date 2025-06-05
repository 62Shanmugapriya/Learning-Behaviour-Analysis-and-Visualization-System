<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.io.*" errorPage="" %>
<%

BufferedInputStream buf = null;
ServletOutputStream myOut = null;

try {
    String filename = request.getParameter("file_name");

    File myfile = new File(getServletContext().getRealPath("/") + "upload/" + filename);

    response.setContentType("application/octet-stream");
    response.addHeader("Content-Disposition", "attachment; filename=" + filename);
    response.setContentLength((int) myfile.length());

    FileInputStream input = new FileInputStream(myfile);
    buf = new BufferedInputStream(input);

    myOut = response.getOutputStream(); // ? You must get the output stream from response

    int readBytes = 0;

    while ((readBytes = buf.read()) != -1) {
        myOut.write(readBytes);
    }

} catch (IOException ioe) {
    throw new ServletException(ioe.getMessage());
} finally {
    // Always close streams in finally
    if (myOut != null) {
        myOut.flush();  // optional, ensures all bytes are written
        myOut.close();
    }
    if (buf != null) {
        buf.close();
    }
}
%>
