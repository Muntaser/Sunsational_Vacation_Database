<%-- 
    Document   : Agent
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>



<html>
    <HEAD>
        <TITLE>Room table </TITLE>
    </HEAD>

    <BODY>
        <H1>Welcome to Resort Room Database </H1>
 
        <% 
           try{
             Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT * from Room ") ; 
         
 
        %>
     
   


       <TABLE BORDER="1">
            <TR>
                   <TH>Room Type ID</TH>
                <TH>Room type name</TH>
                
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td> 
                <TD> <%= resultset.getString(2) %></TD>
               
            </TR>
            
            }
            <%  
            
            
}
      %>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
            
        </TABLE>
            
         <div id="a15">
        
         <form id="form6" name="form1" method="post" action="Query....jsp">
                    <label>
                    <input type="submit" name="button" id="button" value="Insert " />
            </label>
              </form>
      </div>  
       <div id="a15">
        
         <form id="form6" name="form1" method="post" action="DeleteRoomType.jsp">
                    <label>Delete a Room type with specific ID
            <input type="text"  name="v0" id="value2" />
          
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
            </label>
        </form>
</html>

