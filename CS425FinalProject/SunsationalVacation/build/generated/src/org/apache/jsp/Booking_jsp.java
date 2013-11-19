package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Booking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("oracle.jdbc.OracleDriver") ; 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <HEAD>\n");
      out.write("        <TITLE>Client table </TITLE>\n");
      out.write("    </HEAD>\n");
      out.write("\n");
      out.write("    <BODY>\n");
      out.write("        <H1>Welcome to Booking Database </H1>\n");
      out.write(" \n");
      out.write("        ");
 
             
             
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT * from Booking ") ; 
             
        
      out.write("\n");
      out.write("\n");
      out.write("       <TABLE BORDER=\"1\">\n");
      out.write("            <TR>\n");
      out.write("                   <TH>Booking ID</TH>\n");
      out.write("                <TH>Agent ID</TH>\n");
      out.write("                <TH>Client ID</TH>\n");
      out.write("                <TH>Booking ID</TH>\n");
      out.write("                <TH>Resort ID</TH>\n");
      out.write("                <TH>Arrival Date</TH>\n");
      out.write("                <TH>Departure Date</TH>\n");
      out.write("                <TH>Room Type</TH>\n");
      out.write("                \n");
      out.write("            </TR>\n");
      out.write("            ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("            <TR>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(1) );
      out.write("</td>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(2) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(3) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(4) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(5) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(6) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(7) );
      out.write("</TD>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(8) );
      out.write("</TD>\n");
      out.write("                \n");
      out.write("            </TR>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("        </TABLE>\n");
      out.write("        <div id=\"a15\">\n");
      out.write("        \n");
      out.write("         <form id=\"form6\" name=\"form1\" method=\"post\" action=\"Query....jsp\">\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Insert Agent\" />\n");
      out.write("            </label>\n");
      out.write("              </form>\n");
      out.write("      </div>  \n");
      out.write("       <div id=\"a15\">\n");
      out.write("        \n");
      out.write("         <form id=\"form6\" name=\"form1\" method=\"post\" action=\"DeleteBooking.jsp\">\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Delete Booking\" />\n");
      out.write("            </label>\n");
      out.write("              </form>\n");
      out.write("      </div>\n");
      out.write("    </BODY>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
