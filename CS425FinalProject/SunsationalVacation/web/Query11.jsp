<%-- 
    Document   : Query 10
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>List of users who stayed all inclusive in last 3 months </TITLE>
    </HEAD>

    <BODY>
        <H1>List of users who stayed all inclusive in last 3 months
        </H1>

        <% 
            try{
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT b.clientID, c.firstnm, c.lastnm, c.emailAdd from Booking b, Client c where (to_char((SysDate-90),'yyyy-mm-dd'))<=to_char(Date_Booking,'yyyy-mm-dd')  and c.clientID = b. clientID ") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Client ID</TH>
               <TH>First Name</TH>
               <TH>Last Name</TH>
               <TH>Email</TH>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
              <TD> <%= resultset.getString(2) %></td>
              <TD> <%= resultset.getString(3) %></td>
              <TD> <%= resultset.getString(4) %></td>
              
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
    
     <form id="form6" name="form1" method="post" action="AgentPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

