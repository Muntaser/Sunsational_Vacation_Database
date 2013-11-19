<%-- 
    Document   : AgentTye
    Created on : Apr 25, 2013, 4:17:09 AM
    Author     : mkhan12
--%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>

<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        String startDate = request.getParameter( "v6" );
        //request.getRequestURI()
String endDate = request.getParameter( "v7" );
java.util.Date parsedUtilDate = sdf.parse(startDate);  
java.util.Date parsedUtilDate1 = sdf.parse(endDate);
java.sql.Date startDate1= new java.sql.Date(parsedUtilDate.getTime()); 
java.sql.Date endDate1= new java.sql.Date(parsedUtilDate1.getTime());
   session.setAttribute( "start", startDate1 );
   session.setAttribute( "end", endDate1 );
   %>
<html>
    <HEAD>
        <TITLE>Query 14b</TITLE>
    </HEAD>

    <BODY>
        <H1>Client who has spent the most money in
a given period</H1>

        <% 
            try{
                Class.forName("oracle.jdbc.OracleDriver") ;
            
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl", "mkhan12", "sourov345");
            
           
            
                Statement statement = connection.createStatement() ;
                ResultSet resultset = 
                    statement.executeQuery("SELECT c.clientID FROM Booking b, Client c, Resort r,Room_type rt,Amenities a WHERE b.clientID=c.clientID AND r. Resort_id=rt.Resort_id AND a.Resort_id=r.Resort_id AND to_char(Date_Booking,'yyyy-mm-dd')>='"+session.getAttribute("start")+"'"+" AND to_char(Date_Booking,'yyyy-mm-dd')<='"+session.getAttribute("end")+"'"+" GROUP BY c.clientID HAVING SUM(rt.price+a.Amenityprice) >= ALL ( Select sum(rt2.price+a2.Amenityprice) FROM Booking b2, Client c2, Resort r2, Room_type rt2,Amenities a2 WHERE b2.clientID=c2.clientID and r2. Resort_id=rt2.Resort_id and a2.Resort_id=r2.Resort_id and to_char(Date_Booking,'yyyy-mm-dd')>='"+session.getAttribute("start")+"'"+" and to_char(Date_Booking,'yyyy-mm-dd')<='"+session.getAttribute("end")+"'"+" GROUP BY c2.clientID)");
                
        %>

      <TABLE BORDER="1">
            <TR>
                <TH><%= resultset.getMetaData().getColumnName(1)%></TH>
               
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
              
              
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
