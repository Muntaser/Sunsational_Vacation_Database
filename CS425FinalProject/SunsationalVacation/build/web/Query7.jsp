<%-- 
    Document   : Query 7
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>List amenities containing a certain string </TITLE>
    </HEAD>

    <BODY>
        <H1>List of Resorts which offer all amenities 
        </H1>

        <% try{
            
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT b.Resort_id, Resort_name FROM Amenities b JOIN Resort  ON b.Resort_id = Resort.Resort_id GROUP BY b.Resort_id, Resort_name HAVING COUNT( b.Resort_id )= (  SELECT COUNT(DISTINCT a.Amenity_description ) FROM Amenities a)") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH><%= resultset.getMetaData().getColumnName(1)%></TH>
                <TH><%= resultset.getMetaData().getColumnName(2)%></TH>
               
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
     <form id="form6" name="form1" method="post" action="UserPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

