<%-- 
    Document   : Resort
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String resortID = request.getParameter( "v0" );
   int aID=Integer.parseInt(resortID);
   session.setAttribute( "ID", aID );
%>

<html>
    <HEAD>
        <TITLE> Delete Resort </TITLE>
    </HEAD>

    <BODY>
       
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Delete from Resort where Resort_id= "+session.getAttribute("ID")) ; 
         
 Statement statement1 = connection.createStatement() ;
                ResultSet rs1 = 
                    statement1.executeQuery("Delete from Amenities where Resort_id= "+session.getAttribute("ID")) ; 
        Statement statement2 = connection.createStatement() ;
                ResultSet rs2 = 
   statement.executeQuery("Delete from Room_type where Resort_id= "+session.getAttribute("ID")) ; 
              Statement statement3 = connection.createStatement() ;
                ResultSet rs3 = 
   statement.executeQuery("Delete from Resort_Rating where Resort_id= "+session.getAttribute("ID")) ;
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Resort has been deleted from Resort,RoomType AND Amenities table
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="Resort.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

