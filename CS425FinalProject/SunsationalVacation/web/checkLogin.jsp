<%-- 
    Document   : checkLogin
    Created on : May 8, 2013, 11:27:46 AM
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
            String username = request.getParameter("username");
            String password = request.getParameter("password");
           out.println("Checking login<br>");
            if (username == null || password == null) {
 
                out.print("Invalid paramters ");
            }
 
            // Here you put the check on the username and password
            if (username.toLowerCase().trim().equals("muntaser") && password.toLowerCase().trim().equals("123")) {
                out.println("Welcome " + username + " <a href=\"WelcomePage1.jsp\">Back to main</a><br>");
                out.println( " <a href=\"UserPage.jsp\">go to Client page</a>");
                session.setAttribute("username", username);
               
            }
           else 
               {
                out.println("Invalid username and password");
           }
 
 
 
 
%>

<form id="form6" name="form1" method="post" action="UserLogInPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>
