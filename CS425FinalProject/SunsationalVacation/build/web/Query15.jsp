<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>List of agents and number of clients who have booked with them in descending 
        order</TITLE>
    </HEAD>

    <BODY>
        <H1>List of agents and number of clients who have booked with them in descending 
        order</H1>

        <% 
            try{Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("select  distinct(agentID) ,count(clientID) as Number_of_clients from"
                        + " Booking group by(agentID) order by Number_of_clients desc"
                        +"") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Agent ID</TH>
                <TH>Number of Clients</TH>
                
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
               
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
