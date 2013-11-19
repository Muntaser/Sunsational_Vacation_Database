<%-- 
    Document   : main
    Created on : Apr 27, 2013, 8:43:02 PM
    Author     : mkhan12
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>


<script src="facefiles/jquery-1.2.2.pack.js" type="text/javascript"></script>
<link href="facefiles/facebox.css" media="screen" rel="stylesheet" type="text/css" />

<link href="css/css1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery/jquery-1.7.1.min.js"></script>
</head>
<script type="text/javascript">
function hideall(){
$("#a11").hide();
$("#a12").hide();
$("#a14").hide();
$("#a15").hide();
$("#a21").hide();
$("#a23").hide();
$("#a24").hide();
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
$("#q21").click(function(){
hideall();
$("#a21").toggle('slow');
}
);
$("#q23").click(function(){
hideall();
$("#a23").toggle('slow');
}
);




$("#q21").click(function(){
$("#ResortRating").toggle('slow');
}




);
});
</script>
<body>
<table width="895" height="550" border="1">
  <tr>
    <td width="855" align="left"><div align="center">Client Information</div></td>
  </tr>
  <tr>
    <td height="536"><table width="890" height="320" border="1">
      <tr>
        <td width="403">Booking and Resort Information</td>
        
      </tr>
      <tr>
        <td ><p id="q11"><a href="JavaScript:void()"> Find booking information</a></p>
          
            <p id="q22"><a href="Query7.jsp?act=a22"> Find resorts which have all amenities</a></p>
          <p id="q23"><a href="JavaScript:void()">Most popular resorts in various countries</a></p>
          <p id="q24"><a href="JavaScript:void()">List number of resorts by country</a></p>
          <p id="q25"><a href="query1.php?act=a25"> Find the Country which has highest average Sun Rate</a></p></td>
      </tr>
    </table>
       
      <div id="a21">
        <p><strong>Resort Sun Rating</strong></p>
        <form id="form2" name="form1" method="post" action="Query5.jsp">
            <label> Resort Name
            <input type="text"  name="v8" id="value" />
            </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>      
      <div id="a24">
        <p><strong>Number of Resort by city</strong></p>
         <form id="form3" name="form1" method="post" action="Query8.jsp">
            <label>City
            <input type="text"  name="v9" id="value" />
           </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>      
      
        <div id="a25">
            <p><strong>Number of Resort by country</strong></p>
         <form id="form3" name="form1" method="post" action="Query8b.jsp">
            <label>Country
            <input type="text"  name="v20" id="value" />
           </label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>
           <div id="a12">
        <p><strong>Resort Room type price</strong></p>
         <form id="form4" name="form1" method="post" action="query..?act=a12">
            <label></label>&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>   
      
       <div id="a14">
        <p><strong>Find amenities by string</strong></p>
         <form id="form5" name="form1" method="post" action="Query10.jsp">
            <label>Amenity name
            <input type="text"  name="v10" id="value" />
</label>
&nbsp;&nbsp;
                    <label>
                    <input type="submit" name="button" id="button" value="Search" />
            </label>
        </form>
      </div>   
      
         <div id="a23">
        <p><strong>Most popular resorts:</strong></p>
         <form id="form6" name="form1" method="post" action="query...jsp?act=a23">
          
&nbsp;&nbsp;
   <label></label>
                    <p>
                      <label>
                      <input type="radio" name="radio" id="radio" value="radio1" />
                      One Sun Rating</label>
                      <label>
                      <input type="radio" name="radio" id="radio" value="radio2" />
                      Two Sun Rating</label>
                      <label>
                      <input type="radio" name="radio" id="radio" value="radio3" />
                      Three Sun Rating</label>
                      <label>
                      <input type="radio" name="radio" id="radio" value="radio4" />
                      All</label>
                      &nbsp;&nbsp;
                      <input type="submit" name="button2" id="button2" value="Search" />
           </p>
         </form>
      </div>   
      
      <p>&nbsp;</p>    </td>
  </tr>
</table>
</body>
    
     <form id="form6" name="form1" method="post" action="WelcomePage1.jsp">
      <label>
                    <input type="submit" name="button" id="button" value="Back" />
            
            </label><br />
<A HREF="logout.jsp">Logout</A>
        </form>
</html>

        </form>
</html>
