<%-- 
    Document   : logout
    Created on : May 8, 2013, 11:37:42 AM
    Author     : mkhan12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
    <%
 
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           out.println(username+" loged out, <a href=\"WelcomePage1.jsp\">Back</a>");
            session.removeAttribute("username");
             
        }
     else 
         {
         out.println("You are already not login <a href=\"WelcomePage1.jsp\">Back</a>");
     }
 
 
 
%>

</html>
