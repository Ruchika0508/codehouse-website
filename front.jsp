<!DOCTYPE html>
<html>
<head>

<script>
function checkform(pform1)
  {
     var username  = pform1.username.value;
     var password = pform1.password.value;
     var err={ };
      if((pform1.username.value=="")||(pform1.password.value==""))
     {
      err.message="Please Fill in all details for login"; 
     }
     if(err.message) 
        { 
                alert(err.message);
            return  false;
        }
return true;
   }

window.history.forward();
 function noBack() { window.history.forward(); }




</script>


<style> 

body
{
background-image:url("images/12.jpg");
background-repeat:no-repeat;
background-size:100% ;
}

#well
{   text-align:center;
    color:	#0000CD;
     text-shadow: 3px 5px 10px #FF4500;
    font: bold 70px Algerian,serif; 
}


#boxed
{
border: 4px solid green ;
background-image:url("images/back5.gif"); 
background-repeat:no-repeat;
background-size:cover;
margin-left:1cm;
margin-right:1cm;

}




img#img1
{
margin-top:1cm;
float:left;
margin-left:10%;
}


img#img2
{
margin-top:1cm;
float:left;
margin-left:17%;
}

img#img3
{

clear:both;
float:left;
margin-left:8%;
margin-top:0.5cm;
}


img#img4
{
float:left;
margin-left:22%;
margin-top:0.5cm;

}



img#img5
{

clear:both;
float:left;
margin-left:10%;
margin-top:0.5cm;
}

img#img6
{
float:left;
margin-left:17%;
margin-top:0.5cm;
}






#container {
    position: fixed;
    width: 340px;
    height: 280px;
    margin-top:1.5cm;
    margin-left:65%;  
    border: 3px solid ;
    background-image:url("images/yellow.png"); 
    background-repeat:no-repeat;
    background-size:cover;
   

}


label {
    color: #555;
    margin-left: 18px;
    padding-top: 10px;
    font-size: 14px;
}


#new
{
 margin-left: 20px;
    margin-top: 30px;
}


#lower {
    background: #C8C8C8 ;
    width: 100%;
    height: 60px;
    margin-top: 20px;
    
}


input[type=submit] {
    float: right;
    margin-right: 20px;
    width: 80px;
    height: 30px;
    
}




input[type=text],
input[type=password] {
    
    padding-left: 10px;
    margin: 10px;
    margin-top: 12px;
    margin-left: 18px;
    width: 290px;
    height: 25px;
}


#user
{
    font-family: "arial black"; 
    font-size: 25px;
     padding-left:15px;
}


.grow img{
 

  -webkit-animation: myOrbit 8s linear infinite;
  -webkit-transition: all 1s ease;
   
}

.grow2 img{

  -webkit-animation: myOrbit2 8s linear infinite;
-webkit-transition: all 1s ease;


} 

.grow3 img{

  -webkit-animation: myOrbit3 8s linear infinite;

-webkit-transition: all 1s ease;

} 

.grow img:hover {
  width: 120px;
  height:120px;
}

.grow2 img:hover {
  width: 120px;
  height:120px;
}

.grow3 img:hover {
  width: 120px;
  height:120px;
}

@-webkit-keyframes myOrbit {
    from { -webkit-transform: rotate(0deg) translateX(30px) rotate(0deg); }
    to   { -webkit-transform: rotate(360deg) translateX(30px) rotate(-360deg); }
}

@-webkit-keyframes myOrbit2 {
    from { -webkit-transform: rotate(0deg) translateX(-30px) rotate(0deg); }
    to   { -webkit-transform: rotate(360deg) translateX(-30px) rotate(-360deg); }
}

@-webkit-keyframes myOrbit3 {
    from { -webkit-transform: rotate(0deg) translateX(30px) rotate(0deg); }
    to   { -webkit-transform: rotate(360deg) translateX(30px) rotate(-360deg); }
}



#panel
{
border: 2px solid green ;
margin-left:0.1cm;
margin-right:0.1cm;
margin-top:11.76cm;
font:BOLD 15px algerian;
text-align:center;
background-color: #CD5C5C ; 
 background-image:url("images/star3.gif");
  background-position:left;
  
}
</style>
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">

<div id="boxed">
       <div id="well">WELCOME TO CODE-HOUSE</div>

<font color="Green" size="5px"><marquee direction="left"><b>“Programs must be written for people to read, and only incidentally for machines to execute.”</b></marquee></font>


</div>

<div class="grow">

<a href="questions/c.html" target="_blank"><img id="img1" src="images/1.jpg" width="100" height="100"></a>
<a  href="questions/java.html" target="_blank"><img id="img2" src="images/2.jpg" width="100" height="100"></a>


</div>

<div class="grow2">
<a href="questions/lisp.html" target="_blank"><img id="img3" src="images/3.jpg" width="100" height="100"></a>
<a href="questions/prolog.html" target="_blank"><img id="img4" src="images/4.jpg" width="100" height="100"></a>
</div>

<div class="grow3">
<a href="questions/js.html" target="_blank"><img id="img5" src="images/5.jpg" width="100" height="100"></a>
<a href="questions/unix.html" target="_blank"><img id="img6" src="images/6.jpg" width="100" height="100"></a>
</div>




<div id="container">       
<form action="login.jsp" method="POST" onsubmit="return checkform(this);" >
<div id="user">
<label >USERNAME:</label></div>
<input type="text" id="username" name="username">
<div id="user">
<label>PASSWORD:</label></div>
<input type="password" id="password" name="password">
<div id="lower">
<div id="new"><b>New User ? <b><a href="signup.jsp">Sign up</a></div>
<input type="submit" value="Login">
</div><!--/ lower-->
</form>
</div>
<br></br>

<div id="panel">
<a href="contact.html" target="_blank">About Us!!</a>		
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html" target="_blank">Contact Us !!</a>                        
</div>


</body>
</html>
