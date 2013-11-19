<%-- 
    Document   : Query 6b
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>


<html>
    <HEAD>
        <TITLE> </TITLE>
    </HEAD>

    <BODY>
        <H1>Total Revenue from Hotel Room Bookings
        </H1>

        <% 
            try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("select ag.agentID,sum(rt.price+a.Amenityprice) as TotalHotelRevenue FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag where b.clientID=c.clientID and ag.agentID=b.agentID  and r. Resort_id=rt.Resort_id and a.Resort_id=r.Resort_id  group by ag.agentID");
                         
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Agent ID</TH>
               <TH>Total Hotel Revenue</TH>
               
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


