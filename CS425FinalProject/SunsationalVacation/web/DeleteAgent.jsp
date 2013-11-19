<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String agentID = request.getParameter( "v0" );
   int aID=Integer.parseInt(agentID);
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
                    statement.executeQuery("Delete from Agent where agentID= "+session.getAttribute("ID")) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Agent has been deleted
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="Agent.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>

