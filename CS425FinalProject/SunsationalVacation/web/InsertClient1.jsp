<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");
    
   String clientID = request.getParameter( "v1" );
   int aID=Integer.parseInt(clientID);
   session.setAttribute( "ID", aID );
   
   String phone = request.getParameter( "v2" );
   session.setAttribute( "phone", phone );
   
   String email = request.getParameter( "v3" );
   session.setAttribute( "email", email );
   
   String firstName = request.getParameter( "v4" );
   session.setAttribute( "fname", firstName );
   
   String lastName = request.getParameter( "v5" );
   session.setAttribute( "lname", lastName );
   
   String date = request.getParameter( "v6" );
  java.util.Date parsedUtilDate = df.parse(date);  
  java.sql.Date d= new java.sql.Date(parsedUtilDate.getTime()); 
    session.setAttribute( "date", d );
   
   String zipcode = request.getParameter( "v7" );
   int zip=Integer.parseInt(zipcode);
   session.setAttribute( "zip", zip );
   String gender = request.getParameter( "v8" );
 
   session.setAttribute( "gender", gender );
%>

<html>
    <HEAD>
        <TITLE> Insert Client </TITLE>
    </HEAD>

    <BODY>
        <H1>Insert Client </H1>
 
        <% 
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet rs = 
                    statement.executeQuery("Insert Into Client values ("+session.getAttribute("ID")
                        +","+session.getAttribute("phone")
                        +","+session.getAttribute("email")
                        +","+session.getAttribute("fname")
                        +","+session.getAttribute("lname")
                        +","+session.getAttribute("date")
                        +","+session.getAttribute("zip")
                        +","+session.getAttribute("gender")
                               
                                
                        ) ; 
         
 
        %>
     
        

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
  <H1> The Client has been added
        </H1>
  
    </BODY>
     <form id="form6" name="form1" method="post" action="SaveNewClient.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>
