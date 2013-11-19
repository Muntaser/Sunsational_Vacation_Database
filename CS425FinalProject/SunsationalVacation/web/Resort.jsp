<%-- 
    Document   : Client
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>Resort table </TITLE>
    </HEAD>

    <BODY>
        <H1>Welcome to Resort Database </H1>

        <% try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT Resort.Resort_id,Resort_name,City,Country,Address,phoneNo,Room_type_name,price from Resort,Room,Room_type where Room.Room_type_id=Room_type.Room_type_id ") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Resort ID</TH>
                <TH>Name</TH>
                <TH><%= resultset.getMetaData().getColumnName(3)%></TH>
                <TH><%= resultset.getMetaData().getColumnName(4)%></TH>
                <TH><%= resultset.getMetaData().getColumnName(5)%></TH>
                <TH>Telephone</TH>
                <TH>Room Type</TH>
                <TH>Price</TH>
                
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
                    <input type="submit" name="button" id="button" value="Insert Resort" />
            </label>
              </form>
      </div>  
       <div id="a15">
        
         <form id="form6" name="form1" method="post" action="DeleteResort.jsp">
                    <label>Delete a Resort with specific ID
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
            </label>
        </form>
</html>

