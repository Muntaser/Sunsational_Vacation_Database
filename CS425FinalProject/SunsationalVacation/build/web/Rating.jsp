<%-- 
    Document   : Client
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>Resort Rating table </TITLE>
    </HEAD>

    <BODY>
        <H1>Welcome to Resort Rating Database </H1>

        <% 
            try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT Resort_name, Rate_id from Resort,Resort_Rating where Resort.Resort_id=Resort_Rating.Resort_id ") ; 
        %>

       <TABLE BORDER="1">
             <TR>
                <TH>Resort</TH>
                <TH>Rating</TH>
               
               
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

