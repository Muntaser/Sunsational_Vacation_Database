<%-- 
    Document   : InsertAmenity
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
    
    
   String resortID = request.getParameter( "v1" );
   int aID=Integer.parseInt(resortID);
   session.setAttribute( "ID", aID );
   
   String resortname = request.getParameter( "v2" );
   session.setAttribute( "resortname", resortname );
   
   String amenity = request.getParameter( "v3" );
   session.setAttribute( "amneity", amenity );
   
   
%>

<html>
    <HEAD>
        <TITLE> Insert Agent </TITLE>
    </HEAD>

    <BODY>
        <H1>Insert Agent </H1>
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Insert Into Amenity values ("+session.getAttribute("ID")
                        +","+session.getAttribute("resortname")
                        +","+session.getAttribute("amenity")
                      +")"
                               
                                
                        ) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Amenity has been added
        </H1>



            
        
            
          

    </BODY>
     <form id="form6" name="form1" method="post" action="SaveNewAmenity.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>
