<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>
<%
   String name = request.getParameter( "v2" );
   session.setAttribute( "theValue", name );
%>

<html>
    <HEAD>
        <TITLE>Trips booked by a specific Client</TITLE>
    </HEAD>

    <BODY>
        <H1>Trips booked by a specific Client </H1>

        <%
            try{
                Class.forName("oracle.jdbc.OracleDriver") ;
            
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
 statement.executeQuery("select Book_id,Agent.firstnm,Agent.lastnm,Booking.clientID,Client.firstnm,Client.lastnm, Date_Booking,Resort_name,Arrival_date,Dept_date,Room.Room_type_name from Booking,Client,Resort,Room,Agent where concat(concat(Client.firstnm,' '),Client.lastnm)="
                        +"'"
                        +session.getAttribute("theValue")+"'"
                        +"and  Booking.clientID=Client.clientID and Booking.Resort_id=Resort.Resort_id and "
                        + "Booking.Room_type_id=Room.Room_type_id and Booking.agentID=Agent.agentID"
                        ) ; 
                 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Book ID</TH>
                <TH>Agent First Name</TH>
                <TH>Agent Last Name</TH>
                <TH>Client ID</TH>
                 <TH>Client First Name</TH>
                 <TH>Client Last Name</TH>
                 <TH>Booking Date</TH> 
                 <TH>Resort </TH>
                  <TH>Arrival Date</TH>
                   <TH>Departure Date</TH>
                    <TH>Room Type </TH>
                    
                    
              
                
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></td>
                <TD> <%= resultset.getString(3) %></td>
                <TD> <%= resultset.getString(4) %></td>
                <TD> <%= resultset.getString(5) %></td>
                <TD> <%= resultset.getString(6) %></td>
                <TD> <%= resultset.getString(7) %></td>
                <TD> <%= resultset.getString(8) %></td>
                <TD> <%= resultset.getString(9) %></td>
                <TD> <%= resultset.getString(10) %></td>
                <TD> <%= resultset.getString(11) %></td>
                
                
              
               
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
