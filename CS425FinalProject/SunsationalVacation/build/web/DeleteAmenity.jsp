<%-- 
    Document   : Delete Amenity
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String amenity = request.getParameter( "v1" );
   
   session.setAttribute( "amenity", amenity );
   
   String resortid = request.getParameter( "v0" );
   int rID=Integer.parseInt(resortid);
   
   session.setAttribute( "rID", rID );
%>

<html>
    <HEAD>
        <TITLE> Delete Agent </TITLE>
    </HEAD>

    <BODY>
       
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Delete from Amenity where Amenity_description= '"+session.getAttribute("amenity")+"'"+
                        "and Resort_id=" +session.getAttribute("rID")) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Resort and amenity has been deleted from Amenity table
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="Amenity.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

