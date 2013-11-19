<%-- 
    Document   : DeleteClient
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String clientID = request.getParameter( "v0" );
   int cID=Integer.parseInt(clientID);
   session.setAttribute( "ID", cID );
%>

<html>
    <HEAD>
        <TITLE> Delete Client </TITLE>
    </HEAD>

    <BODY>
        
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Delete from Client where clientID= "+session.getAttribute("ID")) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Client has been deleted
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="Client.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

