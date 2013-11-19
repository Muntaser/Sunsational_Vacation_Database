<%-- 
    Document   : Query 12
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>
<%
  String name = request.getParameter( "v3" );
   session.setAttribute( "theValue", name );
   %>
<html>
    <HEAD>
        <TITLE>Average number of days booked per trip </TITLE>
    </HEAD>

    <BODY>
        <H1>Average number of days booked per trip
        </H1>

        <% 
            try{
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT Booking.clientID, AVG(Dept_Date - Arrival_date)"+
                "FROM Booking,Client where Booking.clientID=Client.clientID and concat(concat(Client.firstnm,' '),Client.lastnm)='"
                        +session.getAttribute("theValue")+"'"+"GROUP BY Booking.clientID") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Client ID</TH>
               <TH>Average number of Days</TH>
              
               
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
     <form id="form6" name="form1" method="post" action="AgentPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

