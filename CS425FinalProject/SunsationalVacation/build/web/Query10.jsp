<%-- 
    Document   : Query 10
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String amenityName = request.getParameter( "v10" );
   session.setAttribute( "amenity", amenityName );
%>

<html>
    <HEAD>
        <TITLE>List amenities containing a certain string </TITLE>
    </HEAD>

    <BODY>
        <H1>List of amenities which contain  the certain string
        </H1>
  

        <% 
   try{
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("select Amenity_description from Amenities where Amenity_description like '%"+session.getAttribute("amenity")+"%'") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH><%= resultset.getMetaData().getColumnName(1)%></TH>
               
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
              
              
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

