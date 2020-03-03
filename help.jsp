<!DOCTYPE>
<html>
<head>

<script language="javascript" type="text/javascript">


 window.history.forward();
 function noBack() { window.history.forward(); }



  function checkform(pform1)
  {
     var date   = pform1.date.value;
     var time = pform1.time.value;
     var email = pform1.email.value;
     var err={}; 
     if((pform1.date.value=="")||(pform1.time.value=="")||(pform1.email.value==""))
     {
      err.message="Please Fill in all details for appointment"; 
     }
     if(err.message) 
        { 
                alert(err.message);
        }

   }
</script>




<style>
  body
  {
    background-color:Moccasin ;
  }


  #boxed
  {
    border: 4px solid MediumBlue  ;
    background-image:url("images/20.jpg");
    background-size:100% 100%;
    background-repeat:no-repeat;
  }

  h1
  {
   color:Khaki ;
   font: bold 35px Algerian;
   text-align:center;
  }



 #head
 {
  text-indent:100px;
 }

#appoint
{
  background-image:url("images/23.jpg");
  background-position:right;
  background-repeat:no-repeat;
  background-color:PaleVioletRed  ; 	
  text-indent:40px;  
}

h2
{
 color:#F0E68C;
 font: bold 25px book antiqua;
}

#element1 {float:right;margin-right:10px;} 
#element2 {float:left;}
</style> 
</head>

<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<%
   if(null == session.getAttribute("theEmail"))  { %>
        <script type="text/javascript">
                    alert('Session Timed Out \n Please login to continue!!');
                     window.location.href = "front.jsp";
                   </script>
<%
    		} 
     	    else 
               {
%>



<div id="element1"> 
  Hello, <%= session.getAttribute( "theEmail" ) %>
</div>


<div id="element2"> 
 <form action="main.jsp">
    <input type="submit" value="My Home">
 </form>
</div>

 <form action="logout.jsp">
    <input type="submit" value="Logout">
 </form>



<div id="boxed">

  <h1>We are here to help you !!</h1>
  <form>
  <div id="head">
     <table>
     <tbody>
       <tr>
       <td valign="top"><h2>Enter Your Text::</h2></td>
       <td><textarea name="mytextbox" type="text" cols="50" rows="5" placeholder="We'll respond to your query on the E-mail id provided by you.."></textarea>
       </td>
       </tr>

       <tr>
       <td colspan="2" style="text-align:right"><input  type="submit" value="Send"/></td>
       </tr>
    </tbody>
    </table>
  </div>
  </form>

  <form action="appoint.jsp" method="POST" onsubmit="return checkform(this);"  >
  <div id="appoint">
     <table>
     <tbody>
     <tr>
     <td><h2><font color =DarkMagenta >Query Still Unresolved ??....Schedule An Appointment With A Tutor</font></h2></td>
     </tr>

     <tr>
     <td>Date:<input type="date"name="date"/>  <b> [Please choose a valid Date that has not passed!!]</b></td>
     </tr>

    <tr>
    <td>Time<input type="time" name="time"/></td>
    </tr>

    <tr>
    <td>Please confirm your Login Username (Email):<input name="email" type="text" /></td>
    </tr>
   </tbody>
   </table>
 <br></br>
 <br>

 <b>NOTE</b> : <br>
 1. Appointment must be requested at least 2 days(s) in advance.<br>
 2. Once you get a confirmation mail for your appointment , you must be logged in at the specified date and time to start the video call.<br>
 3. If the date chosen is not valid (before the current date) then you won't receive a confirmation from us !!

 <br>
 <input type="submit" value="Submit" >
 </div>
 </form>

</div>
<%
}
%>
</body>
</html>