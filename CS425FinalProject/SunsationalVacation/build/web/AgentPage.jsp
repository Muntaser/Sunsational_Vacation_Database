<%-- 
    Document   : management
    Created on : Apr 27, 2013, 8:44:52 PM
    Author     : mkhan12
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/css1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
function hideall(){
$("#a11").hide();
$("#a12").hide();
$("#a14").hide();
$("#a15").hide();
$("#a21").hide();
$("#a22").hide();
$("#a23").hide();
$("#a24").hide();
$("#a25").hide();
}

$(document).ready(function(){
hideall();

$("#q11").click(function(){
hideall();
$("#a11").toggle('slow');
}
);

$("#q12").click(function(){
hideall();
$("#a12").toggle('slow');
}
);

$("#q23").click(function(){
hideall();
$("#a23").toggle('slow');
}
);

$("#q22").click(function(){
hideall();
$("#a22").toggle('slow');
}
);


$("#q14").click(function(){
hideall();
$("#a14").toggle('slow');
}
);

$("#q15").click(function(){
hideall();
$("#a15").toggle('slow');
}
);

$("#q24").click(function(){hideall();
$("#a24").toggle('slow');
}
);

$("#q25").click(function(){
hideall();
$("#a25").toggle('slow');
}
);




$("#q21").click(function(){
$("#ResortRating").toggle('slow');
}




);
});
</script>
</head>

<body>
<h2 align="center"> Agent Manager</h2>
<div align="center"></div>

<div id="maindiv">
<table width="1012" height="387" border="1">
  <tr class="center"><td width="1002" height="73">
<table width="1003" height="281" border="1">
  
    

  <tr>
    <td width="499" height="272">&nbsp;
        <div >
            <strong>Start here from Tables to insert or update or remove predefined list: </strong> 
        </div>
        
        <form 
          <label>Table Lookup:
         <A HREF="Agent.jsp"> <li>Agent Table</A> 
         <A HREF="Client.jsp"> <li>Client Table</A>
         <A HREF="Resort.jsp"> <li>Resort Table</A>
         <A HREF="Rating.jsp"> <li>Rating Table</A>
         <A HREF="Amenity.jsp"> <li>Amenity Table</A>
         <A HREF="Booking.jsp"> <li>Booking Table</A>
         <A HREF="Room.jsp"> <li>Room Table</A>
        
        </form>
       
    <%--     <p  id ="q06"><a href="JavaScript:void()">Total revenue from Bookings</a></p> --%>
        
 <td width="487"><p align="center" id="q13"><a href="Query13.jsp"> Agent who booked the most trip</a> </p>
        
        
        <p align="center" id="q11"><a href="Query11.jsp"> Users who stayed all inclusive last 3 months</a></p> 
       
       <p align="center" id="q15"><a href="Query15.jsp">List of agents and number of clients who booked with them</a></p>
  </tr>
  <tr> </tr>
</table>
 <div id="a11">
        <p><strong>Total Hotel Revenue for an Agent</strong></p>
        
        <label></label>
          <form id="form1" name="form1" method="post" action="Query6a.jsp">
            <label>Agent Name
            <input type="text"  name="v21" id="value" />
</label>
&nbsp;&nbsp;
<label>
<input type="submit" name="button2" id="button2" value="Search" />
</label>

<label></label>
          </form>
        </div>      
       
       <form 
          <label>Total Hotel Revenue across all agents:
         <A HREF="Query6b.jsp"> Total Hotel Revenue across all agents</A> 
         
        </form>
    
     <div id="a32">
        <p><strong>Total Hotel Revenue for a city</strong></p>
        
        <label></label>
          <form id="form1" name="form1" method="post" action="Query6c.jsp">
            <label>City
            <input type="text"  name="v22" id="value" />
</label>
&nbsp;&nbsp;
<label>
<input type="submit" name="button2" id="button2" value="Search" />
</label>
  
          </form>
        </div>
    
     <div id="a33">
        <p><strong>Total Hotel Revenue for a country</strong></p>
        
        <label></label>
          <form id="form1" name="form1" method="post" action="Query6d.jsp">
            <label>Country
            <input type="text"  name="v23" id="value" />
</label>
&nbsp;&nbsp;
<label>
<input type="submit" name="button2" id="button2" value="Search" />
</label>
  
          </form>
        </div> 
      
           <div id="a12">
        <p><strong>Find Trips booked by a specific client</strong></p>
         <form id="form4" name="form1" method="post" action="Query4.jsp">
            <label>Client Name
            <input type="text"  name="v2" id="value2" />
           </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
                    
<p>
              <label></label>
            </p>
         </form>
      </div>   
      
     
      </div>   
      <div id="a15">
        <p><strong>Average number of days booked per trip</strong></p>
         <form id="form6" name="form1" method="post" action="Query12.jsp">
            <label>Client name
            <input type="text"  name="v3" id="value2" />
           </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>   
      
      
      <div id="a22">
        <p><strong> Client who booked the most trips in a given period</strong></p>
         <form id="form6" name="form1" method="post" action="Query14a.jsp">
            <label>From: 
            <input type="text"  name="v4" id="value" />
           </label>
            <label>To: 
            <input type="text"  name="v5" id="value1" />
           </label>
&nbsp;&nbsp;
                    <laabel>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>
      
         <div id="a23">
        <p><strong> Client who spent the most in a given  period</strong></p>
         <form id="form6" name="form1" method="post" action="Query14b.jsp">
            <label>From:
            <input type="text"  name="v6" id="value3" />
            </label>
            <label>To: 
            <input type="text"  name="v7" id="value1" />
           </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>
    
     <div id="a33">
        <p><strong>List all resorts which a client has vacationed at and the number of days of their trip</strong></p>
        
        <label></label>
          <form id="form1" name="form1" method="post" action="Query9.jsp">
            <label>Client Name
            <input type="text"  name="v24" id="value" />
</label>
&nbsp;&nbsp;
<label>
<input type="submit" name="button2" id="button2" value="Search" />
</label>

<label></label>
          </form>
        </div> 
           </td>
  </tr>
</table>
</div>

</body>
     <form id="form6" name="form1" method="post" action="WelcomePage1.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>

