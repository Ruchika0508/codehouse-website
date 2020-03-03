

<!DOCTYPE>
<html>
<head>


<script type="text/javascript">

window.history.forward();
 function noBack() { window.history.forward(); }


  function AlertIt()
  {
     window.location="start.jsp";
  }
</script>

<style>
	
  body
 {
   background-image:url("images/images.jpg");
   background-repeat:no-repeat;
   background-size:100% 100%;
 }

 ul
 { 
  float:left;
  margin:0;
  padding:0;
 }

 .head
 { 
  border:2px solid white  ;
  background-image:url("images/img1.jpg");
  background-position:left;
  background-repeat:no-repeat;
  background-size:100% 100%;
  padding:5px;
  height:75px;
 }

 #prog
 {
  float:left;
  width:5.6em;
  color:white;
  text-decoration:none;
  background-color:MediumSeaGreen ;
  padding:0.2em 0.6em;
  border-right:1px solid white;
  line-height:1.6em;
 }

 li {display:inline;}

 #hangout
 {
  text-align:top ; 
  float:right;
  font: bold italic 20px Georgia,serif;  
 }

 #hangout:hover {background-color:yellow;}
 #prog:hover {  background-color:hotpink;}
</style>



<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<%
   if(null == session.getAttribute("theEmail"))   { %>
        <script type="text/javascript">
                    alert('Session Timed Out \n Please login to continue!!');
                     window.location.href = "front.jsp";
                   </script>
<%
    		} 
     	    else 
               {
%>
  <div class="head">
       <img src="images/jj.jpg" />
       <div id="hangout">
       <a href="#" OnClick="return AlertIt();"  >Start Appointment ??</a></div>
       <h3 style="color:gold" align="left">Hello: <%= session.getAttribute( "theEmail" ) %></h3>
       </div>


     <ul id="menu">
     <li><a  href="answers/c.jsp" target="iframe_a" id="prog">C++</a></li>
     <li><a href="answers/lisp.jsp" target="iframe_a" id="prog" >LISP</a></li>
     <li><a href="answers/java.jsp" target="iframe_a" id="prog">JAVA</a></li>
     <li><a href="answers/unix.jsp" target="iframe_a" id="prog">UNIX</a></li>
     <li><a href="answers/prolog.jsp" target="iframe_a" id="prog">PROLOG</a></li>
     <li><a href="answers/js.jsp" target="iframe_a" id="prog">JAVASCRIPT</a></li>
     <li><a href="links.jsp" id="prog" target="_blank" >LIBRARIES</a></li>
     <li><a href="help.jsp " id="prog"  >HELP</a></li>
     <li><a href="logout.jsp" id="prog">LOGOUT</a></li>
     </ul>

   <iframe name="iframe_a" width="100%" height="100%"></iframe>
</div>
<%
}
%>
</body>

</html>