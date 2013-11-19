<%-- 
    Document   : InsertAgent
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
        <h1>Insert an agent</h1>
    </body>
    <label>Enter agentID:
            <input type="text"  name="v1" id="value3" /><br>
            <label>Enter phoneNumber:
            <input type="text"  name="v2" id="value4" /><br>
            <label>Enter email Address:
            <input type="text"  name="v3" id="value5" /><br>
            <label>Enter First name:
            <input type="text"  name="v5" id="value6" /><br>
            <label>Enter Last name:
            <input type="text"  name="v5" id="value7" /><br>
            <label>Enter Date of Birth:
            <input type="text"  name="v6" id="value8" /><br>
            <label>Enter Zip Code:
            <input type="text"  name="v7" id="value9" /><br>
            <label>Enter Gender:
            <input type="text"  name="v8" id="value10" /><br>
            <label>Enter agent type:
            <input type="text"  name="v9" id="value11" /><br>
            
            
            
            <form id="form1" name="form1" method="post" action="InsertAgent.jsp">
           
<label>
<input type="submit" name="button2" id="button2" value="Insert" />
</label>
  
          </form>
            
            <form id="form6" name="form1" method="post" action="Agent.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label>
        </form>
</html>
