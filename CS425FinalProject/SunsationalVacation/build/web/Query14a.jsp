<%-- 
    Document   : Query 14a
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        String startDate = request.getParameter( "v4" );
       String endDate = request.getParameter( "v5" );
java.util.Date parsedUtilDate = sdf.parse(startDate);  
java.util.Date parsedUtilDate1 = sdf.parse(endDate);
java.sql.Date startDate1= new java.sql.Date(parsedUtilDate.getTime()); 
java.sql.Date endDate1= new java.sql.Date(parsedUtilDate1.getTime());
   session.setAttribute( "start", startDate1 );
   session.setAttribute( "end", endDate1 );
   %>
<html>
    <HEAD>
        <TITLE>Query 14a</TITLE>
    </HEAD>

    <BODY>
        <H1>Find which clients have booked the largest number of trips in a given period</H1>

        <% 
           try{
               Class.forName("oracle.jdbc.OracleDriver") ;
           
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");
            
           
            
                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("select c.clientID,c.firstnm,c.lastnm,b.Date_Booking from Client c join Booking b on b.clientID=c.clientID where to_char(Date_Booking,'yyyy-mm-dd') >='"+session.getAttribute("start")+"'"+"and to_char(Date_Booking,'yyyy-mm-dd')<='"+session.getAttribute("end")+"'"+" and  c.clientID in (select b.clientID  from Booking b  group by b.clientID HAVING COUNT(distinct b.Date_Booking) >= ALL ( Select COUNT(distinct b2.Date_Booking) FROM Booking b2 GROUP BY b2.clientID))") ; 
        %>

       <TABLE BORDER="1">
            <TR>
                
                <TH>Client ID</TH>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Booking Date</TH>
             
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
               
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
