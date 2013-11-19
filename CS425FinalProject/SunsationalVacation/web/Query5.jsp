<%-- 
    Document   : Query 5
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>
<%
   String resortName = request.getParameter( "v8" );
   session.setAttribute( "resort", resortName );
%>
<html>
    <HEAD>
        <TITLE>Sun Rating of the given Resort </TITLE>
    </HEAD>

    <BODY>
        <H1>Sun Rating of the given Resort
        </H1>

        <% 
            try{
                Class.forName("oracle.jdbc.OracleDriver") ;
            
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                
                ResultSet resultset = 
                    statement.executeQuery("select Resort.Resort_name,Rate_id from Resort_Rating,"
              + "Resort where Resort.Resort_id=Resort_Rating.Resort_id and Resort.Resort_name ="
                        +"'"+ session.getAttribute("resort")+"'"
                        ) ; 
                
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Resort</TH>
               <TH>Resort Rating</TH>
               
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

