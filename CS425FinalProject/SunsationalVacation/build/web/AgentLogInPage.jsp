<%-- 
    Document   : UserLogInPage
    Created on : May 8, 2013, 11:18:10 AM
    Author     : mkhan12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <TITLE>Login using jsp</TITLE>
    </HEAD>
 
    <BODY>
        <H1>LOGIN FORM</H1>
        <H2>Put username: admin and password: 123</H2>
        <%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
        else 
            {
            %>
            <form action="checkLoginAdmin.jsp">
                <table>
                    <tr>
                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> Password  : </td><td> <input name="password" size=15 type="text" /> </td> 
                    </tr>
                </table>
                <input type="submit" value="login" />
            </form>
            <% 
            }
         
             
            %>
        <form id="form6" name="form1" method="post" action="WelcomePage1.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
         
    </BODY>
</HTML> 