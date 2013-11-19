<%-- 
    Document   : Query 9
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
   String clientName = request.getParameter( "v24" );
   session.setAttribute( "client", clientName );
%>

<html>
    <HEAD>
        <TITLE>List all resorts which a client has vacationed at and the number of days of their trip </TITLE>
    </HEAD>

    <BODY>
        <H1>List all resorts which a client has vacationed at and the number of days of their trip
        </H1>
  

        <% 
   try{
            Class.forName("oracle.jdbc.OracleDriver") ;
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");

                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT R.resort_name, D.firstnm, D.lastnm, D.days FROM resort R inner join (SELECT B.resort_id, (B.dept_date - B.arrival_date) days, C.firstnm, C.lastnm FROM booking B inner join (select clientid, firstnm, lastnm from client where concat(concat(firstnm,' '),lastnm)='"+session.getAttribute("client")+"'"+")"+"C on C.clientid = B.clientid) D on D.resort_id = R.resort_id") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                <TH>Resort Name</TH>
               <TH>Client First Name></TH>
               <TH>Client Last Name</TH>
               <TH>Number of Days</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></td>
                <TD> <%= resultset.getString(3) %></td>
                <TD> <%= resultset.getString(4) %></td>
              
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
     <form id="form6" name="form1" method="post" action="AgentPage.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>

