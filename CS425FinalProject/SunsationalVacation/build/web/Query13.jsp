<%-- 
    Document   : Query 13
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>Agent Booking the largest number of clients </TITLE>
    </HEAD>

    <BODY>
        <H1>List of Agents Booking the largest number of clients</H1>

        <% try{
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT agentID,firstnm,lastnm from Agent where agentID IN (Select agentID From  Booking  b  GROUP BY b.agentID HAVING COUNT(b.Book_id) >= ALL ( Select COUNT(b2.Book_id) FROM Booking b2 GROUP BY b2.agentID)) ") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Agent ID</TH>
                
                <TH>First Name</TH>
                <TH>Last Name</TH>
              
               
            </TR>
         
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
              
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
