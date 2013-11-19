<%-- 
    Document   : Query8
    Created on : May 3, 2013, 6:14:54 PM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>
<%
   String name = request.getParameter( "v20" );
   session.setAttribute( "theValue", name );
%>
<html>
    <HEAD>
        <TITLE>Trips booked by a specific Client</TITLE>
    </HEAD>

    <BODY>
        <H1>Number of resorts in a given country </H1>

        <%
               try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
     statement.executeQuery("SELECT Country,COUNT(*)FROM Resort where Country ='"+session.getAttribute("theValue")+"'"
                    
                        +"GROUP BY Country"
                        ) ; 
                 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Country</TH>
                
                <TH>Number of Resorts</TH>
                
                    
                    
              
                
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></td>
               
                
                
              
               
            </TR>
            <% } %>
        </TABLE>
        <%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
    </BODY>
    
     <form id="form6" name="form1" method="post" action="UserPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>
