<%-- 
    Document   : Client
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<html>
    <HEAD>
        <TITLE>Amenity table </TITLE>
    </HEAD>

    <BODY>
        <H1>Welcome to Resort Amenity Database </H1>

        <% 
        try{
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT Amenities.Resort_id,Resort_name,Amenity_description from Amenities,Resort where Resort.Resort_id=Amenities.Resort_id ") ; 
        %>

       <TABLE BORDER="1">
           <TR>
               <TH>Resort ID</TH>
                <TH>Resort Name</TH>
                <TH>Amenity</TH>
               
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
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
        <div id="a15">
        
         <form id="form6" name="form1" method="post" action="SaveNewAmenity.jsp">
                    <label>
                    <input type="submit" name="button" id="button" value="Insert Amenity" />
            </label>
              </form>
      </div>  
       <div id="a15">
        
         <form id="form6" name="form1" method="post" action="DeleteAmenity.jsp">
                    <label>Delete the row with specific Resort ID and Amenity description:
          <label> Enter Resort ID
              <input type="text"  name="v0" id="value2" />
              <label> Enter Amenity name
              <input type="text"  name="v1" id="value2" />
          
           </label>
             &nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Delete" />
            </label>
              </form>
      </div>
    </BODY>
     <form id="form6" name="form1" method="post" action="AgentPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>

