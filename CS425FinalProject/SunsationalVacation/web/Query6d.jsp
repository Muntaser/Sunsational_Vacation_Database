<%-- 
    Document   : Query 6d
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
  String name = request.getParameter( "v23" );
   session.setAttribute( "theValue", name );
   %>
<html>
    <HEAD>
        <TITLE> </TITLE>
    </HEAD>

    <BODY>
        <H1>Total Revenue for a Country
        </H1>

        <% 
            try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("select Country,sum(rt.price+a.Amenityprice) as TotalHotelRevenue FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag where b.clientID=c.clientID and ag.agentID=b.agentID  and r. Resort_id=rt.Resort_id and a.Resort_id=r.Resort_id and Country='"+session.getAttribute("theValue")+"'"+"group by Country");
                         
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Country</TH>
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


