<%-- 
    Document   : Delete Booking
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String bookID = request.getParameter( "v0" );
   int aID=Integer.parseInt(bookID);
   session.setAttribute( "ID", aID );
%>

<html>
    <HEAD>
        <TITLE> Delete Agent </TITLE>
    </HEAD>

    <BODY>
        <H1>Delete Agent </H1>
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Delete from Booking where Book_id= "+session.getAttribute("ID")) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Booking has been cancelled
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="Agent.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

