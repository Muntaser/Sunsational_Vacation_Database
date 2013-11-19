package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.sql.*;

public final class InsertClient1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("oracle.jdbc.OracleDriver") ; 
      out.write('\n');
      out.write('\n');

    SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");
    
   String clientID = request.getParameter( "v1" );
   int aID=Integer.parseInt(clientID);
   session.setAttribute( "ID", aID );
   
   String phone = request.getParameter( "v2" );
   session.setAttribute( "phone", phone );
   
   String email = request.getParameter( "v3" );
   session.setAttribute( "email", email );
   
   String firstName = request.getParameter( "v4" );
   session.setAttribute( "fname", firstName );
   
   String lastName = request.getParameter( "v5" );
   session.setAttribute( "lname", lastName );
   
   String date = request.getParameter( "v6" );
  java.util.Date parsedUtilDate = df.parse(date);  
  java.sql.Date d= new java.sql.Date(parsedUtilDate.getTime()); 
    session.setAttribute( "date", d );
   
   String zipcode = request.getParameter( "v7" );
   int zip=Integer.parseInt(zipcode);
   session.setAttribute( "zip", zip );
   String gender = request.getParameter( "v8" );
 
   session.setAttribute( "gender", gender );

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <HEAD>\n");
      out.write("        <TITLE> Insert Client </TITLE>\n");
      out.write("    </HEAD>\n");
      out.write("\n");
      out.write("    <BODY>\n");
      out.write("        <H1>Insert Client </H1>\n");
      out.write(" \n");
      out.write("        ");
 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Insert Into Client values ("+session.getAttribute("ID")
                        +","+session.getAttribute("phone")
                        +","+session.getAttribute("email")
                        +","+session.getAttribute("fname")
                        +","+session.getAttribute("lname")
                        +","+session.getAttribute("date")
                        +","+session.getAttribute("zip")
                        +","+session.getAttribute("gender")
                               
                                
                        ) ; 
         
 
        
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
      out.write("  <H1> The Client has been added\n");
      out.write("        </H1>");
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
