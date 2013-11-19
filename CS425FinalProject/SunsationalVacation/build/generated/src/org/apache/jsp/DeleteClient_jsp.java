package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class DeleteClient_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\n');
      out.write('\n');

   String clientID = request.getParameter( "v0" );
   int cID=Integer.parseInt(clientID);
   session.setAttribute( "ID", cID );

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <HEAD>\n");
      out.write("        <TITLE> Delete Client </TITLE>\n");
      out.write("    </HEAD>\n");
      out.write("\n");
      out.write("    <BODY>\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        ");
 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Delete from Client where clientID= "+session.getAttribute("ID")) ; 
         
 
        
      out.write("\n");
      out.write("     \n");
      out.write("        \n");
      out.write("\n");

}
catch(SQLException sqe)
{ 
out.println(sqe);
}

      out.write("\n");
      out.write("  <H1> The Client has been deleted\n");
      out.write("        </H1>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("        \n");
      out.write("            \n");
      out.write("          \n");
      out.write("\n");
      out.write("    </BODY>\n");
      out.write("     <form id=\"form6\" name=\"form1\" method=\"post\" action=\"Client.jsp\">\n");
      out.write("      <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Back\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
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
