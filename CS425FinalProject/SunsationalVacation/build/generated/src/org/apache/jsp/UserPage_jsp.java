package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"facefiles/jquery-1.2.2.pack.js\" type=\"text/javascript\"></script>\n");
      out.write("<link href=\"facefiles/facebox.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<link href=\"css/css1.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"jquery/jquery-1.7.1.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function hideall(){\n");
      out.write("$(\"#a11\").hide();\n");
      out.write("$(\"#a12\").hide();\n");
      out.write("$(\"#a14\").hide();\n");
      out.write("$(\"#a15\").hide();\n");
      out.write("$(\"#a21\").hide();\n");
      out.write("$(\"#a23\").hide();\n");
      out.write("$(\"#a24\").hide();\n");
      out.write("}\n");
      out.write("\n");
      out.write("$(document).ready(function(){\n");
      out.write("hideall();\n");
      out.write("\n");
      out.write("$(\"#q11\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a11\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("\n");
      out.write("$(\"#q12\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a12\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("\n");
      out.write("\n");
      out.write("$(\"#q14\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a14\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("\n");
      out.write("$(\"#q15\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a15\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("\n");
      out.write("$(\"#q24\").click(function(){hideall();\n");
      out.write("$(\"#a24\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("$(\"#q21\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a21\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("$(\"#q23\").click(function(){\n");
      out.write("hideall();\n");
      out.write("$(\"#a23\").toggle('slow');\n");
      out.write("}\n");
      out.write(");\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("$(\"#q21\").click(function(){\n");
      out.write("$(\"#ResortRating\").toggle('slow');\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(");\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<body>\n");
      out.write("<table width=\"895\" height=\"550\" border=\"1\">\n");
      out.write("  <tr>\n");
      out.write("    <td width=\"855\" align=\"left\"><div align=\"center\">Client Information</div></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"536\"><table width=\"890\" height=\"320\" border=\"1\">\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"403\">Booking and Resort Information</td>\n");
      out.write("        \n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td ><p id=\"q11\"><a href=\"JavaScript:void()\"> Find booking information</a></p>\n");
      out.write("          \n");
      out.write("            <p id=\"q22\"><a href=\"Query7.jsp?act=a22\"> Find resorts which have all amenities</a></p>\n");
      out.write("          <p id=\"q23\"><a href=\"JavaScript:void()\">Most popular resorts in various countries</a></p>\n");
      out.write("          <p id=\"q24\"><a href=\"JavaScript:void()\">List number of resorts by country</a></p>\n");
      out.write("          <p id=\"q25\"><a href=\"query1.php?act=a25\"> Find the Country which has highest average Sun Rate</a></p></td>\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("       \n");
      out.write("      <div id=\"a21\">\n");
      out.write("        <p><strong>Resort Sun Rating</strong></p>\n");
      out.write("        <form id=\"form2\" name=\"form1\" method=\"post\" action=\"Query5.jsp\">\n");
      out.write("            <label> Resort Name\n");
      out.write("            <input type=\"text\"  name=\"v8\" id=\"value\" />\n");
      out.write("            </label>\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Search\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
      out.write("      </div>      \n");
      out.write("      <div id=\"a24\">\n");
      out.write("        <p><strong>Find Resort by city</strong></p>\n");
      out.write("         <form id=\"form3\" name=\"form1\" method=\"post\" action=\"Query8.jsp\">\n");
      out.write("            <label>City\n");
      out.write("            <input type=\"text\"  name=\"v9\" id=\"value\" />\n");
      out.write("           </label>\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Search\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
      out.write("      </div>      \n");
      out.write("      \n");
      out.write("        <div id=\"a25\">\n");
      out.write("            <p><strong>Find Resort by country</strong></p>\n");
      out.write("         <form id=\"form3\" name=\"form1\" method=\"post\" action=\"Query8b.jsp\">\n");
      out.write("            <label>Country\n");
      out.write("            <input type=\"text\"  name=\"v20\" id=\"value\" />\n");
      out.write("           </label>\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Search\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("           <div id=\"a12\">\n");
      out.write("        <p><strong>Resort Room type price</strong></p>\n");
      out.write("         <form id=\"form4\" name=\"form1\" method=\"post\" action=\"query..?act=a12\">\n");
      out.write("            <label></label>&nbsp;\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Search\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
      out.write("      </div>   \n");
      out.write("      \n");
      out.write("       <div id=\"a14\">\n");
      out.write("        <p><strong>Find amenities by string</strong></p>\n");
      out.write("         <form id=\"form5\" name=\"form1\" method=\"post\" action=\"Query10.jsp\">\n");
      out.write("            <label>Amenity name\n");
      out.write("            <input type=\"text\"  name=\"v10\" id=\"value\" />\n");
      out.write("</label>\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("                    <label>\n");
      out.write("                    <input type=\"submit\" name=\"button\" id=\"button\" value=\"Search\" />\n");
      out.write("            </label>\n");
      out.write("        </form>\n");
      out.write("      </div>   \n");
      out.write("      \n");
      out.write("         <div id=\"a23\">\n");
      out.write("        <p><strong>Most popular resorts:</strong></p>\n");
      out.write("         <form id=\"form6\" name=\"form1\" method=\"post\" action=\"query...jsp?act=a23\">\n");
      out.write("          \n");
      out.write("&nbsp;&nbsp;\n");
      out.write("   <label></label>\n");
      out.write("                    <p>\n");
      out.write("                      <label>\n");
      out.write("                      <input type=\"radio\" name=\"radio\" id=\"radio\" value=\"radio1\" />\n");
      out.write("                      One Sun Rating</label>\n");
      out.write("                      <label>\n");
      out.write("                      <input type=\"radio\" name=\"radio\" id=\"radio\" value=\"radio2\" />\n");
      out.write("                      Two Sun Rating</label>\n");
      out.write("                      <label>\n");
      out.write("                      <input type=\"radio\" name=\"radio\" id=\"radio\" value=\"radio3\" />\n");
      out.write("                      Three Sun Rating</label>\n");
      out.write("                      <label>\n");
      out.write("                      <input type=\"radio\" name=\"radio\" id=\"radio\" value=\"radio4\" />\n");
      out.write("                      All</label>\n");
      out.write("                      &nbsp;&nbsp;\n");
      out.write("                      <input type=\"submit\" name=\"button2\" id=\"button2\" value=\"Search\" />\n");
      out.write("           </p>\n");
      out.write("         </form>\n");
      out.write("      </div>   \n");
      out.write("      \n");
      out.write("      <p>&nbsp;</p>    </td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
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
