<%-- 
    Document   : SaveNewAmenity
    Created on : May 8, 2013, 10:22:13 AM
    Author     : mkhan12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver") ; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insert an amenity</h1>
    </body>
    <label>Enter ResortID:
            <input type="text"  name="v1" id="value3" /><br>
            <label>Enter Resort name:
            <input type="text"  name="v2" id="value4" /><br>
            <label>Enter amenity:
            <input type="text"  name="v3" id="value5" /><br>
           
            
            
            
            <form id="form1" name="form1" method="post" action="InsertAmenity.jsp">
           
<label>
<input type="submit" name="button2" id="button2" value="Insert Amenity" />
</label>
  
          </form>
            
            <form id="form6" name="form1" method="post" action="Amenity.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>
