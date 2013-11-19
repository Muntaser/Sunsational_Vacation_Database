<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>


<html>
    <HEAD>
        <TITLE>Client table </TITLE>
    </HEAD>

    <BODY>
        <H1>Welcome to Booking Database </H1>
 
        <% 
             try{
             Class.forName("oracle.jdbc.OracleDriver") ; 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT * from Booking ") ; 
             
        %>

       <TABLE BORDER="1">
            <TR>
                   <TH>Booking ID</TH>
                <TH>Agent ID</TH>
                <TH>Client ID</TH>
                <TH>Booking ID</TH>
                <TH>Resort ID</TH>
                <TH>Arrival Date</TH>
                <TH>Departure Date</TH>
                <TH>Room Type</TH>
                
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(7) %></TD>
                <TD> <%= resultset.getString(8) %></TD>
                
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
        <div id="a15">
        
         <form id="form6" name="form1" method="post" action="Query....jsp">
                    <label>
                    <input type="submit" name="button" id="button" value="Insert Agent" />
            </label>
              </form>
      </div>  
       <div id="a15">
        
         <form id="form6" name="form1" method="post" action="DeleteBooking.jsp">
                    <label>Delete a Booking with specific Booking ID
            <input type="text"  name="v0" id="value2" />
          
           </label>
             &nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Delete" />
            </label>
              </form>
      </div>
    </BODY>
    
     <form id="form6" name="form1" method="post" action="AgentPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>

