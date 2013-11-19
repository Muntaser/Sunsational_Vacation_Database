package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.util.*;

public final class Query14b_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("oracle.jdbc.OracleDriver") ; 
      out.write('\n');
      out.write('\n');

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        String startDate = request.getParameter( "v6" );
        //request.getRequestURI()
String endDate = request.getParameter( "v7" );
java.util.Date parsedUtilDate = sdf.parse(startDate);  
java.util.Date parsedUtilDate1 = sdf.parse(endDate);
java.sql.Date startDate1= new java.sql.Date(parsedUtilDate.getTime()); 
java.sql.Date endDate1= new java.sql.Date(parsedUtilDate1.getTime());
   session.setAttribute( "start", startDate1 );
   session.setAttribute( "end", endDate1 );
   
      out.write("\n");
      out.write("<html>\n");
      out.write("    <HEAD>\n");
      out.write("        <TITLE>Query 14b</TITLE>\n");
      out.write("    </HEAD>\n");
      out.write("\n");
      out.write("    <BODY>\n");
      out.write("        <H1>Client who has spent the most money in\n");
      out.write("a given period</H1>\n");
      out.write("\n");
      out.write("        ");
 
            try{
                Class.forName("oracle.jdbc.OracleDriver") ;
            
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");
            
           
            
                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT c.clientID FROM Booking b, Client c, Resort r,Room_type rt,Amenities a WHERE b.clientID=c.clientID AND r. Resort_id=rt.Resort_id AND a.Resort_id=r.Resort_id AND to_char(Date_Booking,'yyyy-mm-dd')>='2000-01-01' AND to_char(Date_Booking,'yyyy-mm-dd')<='2010-01-01' GROUP BY c.clientID HAVING SUM(rt.price+a.Amenityprice) >= ALL ( Select sum(rt2.price+a2.Amenityprice) FROM Booking b2, Client c2, Resort r2, Room_type rt2,Amenities a2 WHERE b2.clientID=c2.clientID and r2. Resort_id=rt2.Resort_id and a2.Resort_id=r2.Resort_id and to_char(Date_Booking,'yyyy-mm-dd')>='2000-01-01' and to_char(Date_Booking,'yyyy-mm-dd')<='2010-01-01' GROUP BY c2.clientID)");
               // session.getAttribute("start")+" "+
                       // "AND to_char(Date_Booking,'yyyy-mm-dd')<='2010-01-01'"+""+
                // session.getAttribute("end")+""+
//"GROUP BY c.clientID "+
//"HAVING SUM(rt.price+a.Amenityprice) >= ALL ( Select sum(rt2.price+a2.Amenityprice)  "+
 //"FROM Booking b2, Client c2, Resort r2, Room_type rt2,Amenities a2"+
 //"WHERE b2.clientID=c2.clientID and r2. Resort_id=rt2.Resort_id "+
         //"and a2.Resort_id=r2.Resort_id"+
 //"and to_char(Date_Booking,'yyyy-mm-dd')>='2000-01-01' "+""+
                        //session.getAttribute("start") +""+
	//"and to_char(Date_Booking,'yyyy-mm-dd')<='2010-01-01' "+""+
                       // session.getAttribute("end")+""+
                       // "GROUP BY c2.clientID)") ; 
        
      out.write("\n");
      out.write("\n");
      out.write("       <TABLE BORDER=\"1\">\n");
      out.write("            <TR>\n");
      out.write("                <TH><Client ID</TH>\n");
      out.write("                \n");
      out.write("             \n");
      out.write("            </TR>\n");
      out.write("            ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("            <TR>\n");
      out.write("                <TD> ");
      out.print( resultset.getString(1) );
      out.write("</TD>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </TR>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("        </TABLE>\n");
      out.write("        ");

}
catch(SQLException sqe)
{ 
out.println(sqe);
}

      out.write("\n");
      out.write("    </BODY>\n");
      out.write("</html>\n");
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
