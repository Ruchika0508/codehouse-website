<!DOCTYPE HTML>

<html>

<head>
<script language="javascript" type="text/javascript">

function checkform(pform1){
      var str=pform1.password.value;
      var email = pform1.email.value;
      var phone = pform1.phone.value;
      var cleanstr = phone.replace(/[\(\)\.\-\ ]/g, '');
      var err={}; 
      var validemail =/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

      //name field is not empty
      if(pform1.name.value=="")
      {
        err.message="Name field empty"; 
 
      }
 
     //check required fields
     if ((str.length < 4)||(str.length>10))
     {
       err.message="Password length : \nminimum 4 and maximum 10 characters !!"; 
  
      }

     //validate email
     if(!(validemail.test(email)))
     {
       err.message="Please provide a valid email"; 

     }

     //course not selected
    var yourSelect = document.getElementById('course');
    if((yourSelect.options[yourSelect.selectedIndex].value)==0)  //if option is 0 then error
    {
      err.message="Please select the Course Field";
    
    }

     //check phone number
    if ((isNaN(parseInt(cleanstr))) || ((phone.length<8)) || ((phone.length>10)) )
    {
      err.message="Please enter a valid phone number(Landline or Mobile)"; 

    }

    if(err.message) 
        { 
           alert(err.message);
           return false;
        } 
 return true;
}
</script>



<style>

   body
  {
    background-color:#FFE4E1;
  }


  .head
  { 
   text-align:center;
   color:Navy ;
   font: bold 30px Algerian ; 
   border:4px solid black ;
   background-image:url("images/jj.jpg");
   background-position:left;
   background-repeat:no-repeat;
   padding:15px;                         
   background-color:LightSteelBlue ; 	
  }

  .inst
  {
   color:MidnightBlue  ;
   background-color:WhiteSmoke ; 	
   font-style:italic;
  }

 p1
  {
   font:italic 20px arial;
   color:Red   ;
  }

  label
  {
    font:bold 20px arial;
  }

  legend
  {
  color:Navy;
  font:BOLD 20px arial;
 
  }

  fieldset
  {
    color:DimGray ;
    border: 15px solid Gainsboro ;
   background-image:url("images/i.jpg");
    background-repeat:no-repeat;
    background-size:100% 100%;
  }
  </style>
</head>


<body>
   <div class="head">Create An Account</div>
   <br>  
   
   <div class="inst">
   <p1>Instructions</p1>
   <h3>1.The fields with * mark are mandatory.<br>
       2.Quote your e-mail id and  password for further accessing the CODE-HOUSE.<br>
       3.Please enter your valid email ID as your user name e.g. yourname@domainname.com.<br><br> 
       Note:Email ID should be valid as we would be sending information related to your activities on this email ID.</h3>
   </div>


  <form action="register2.jsp" method="POST" onsubmit="return checkform(this);" >
  <fieldset>

  <table>
  <tbody>
  <legend>LOGIN DETAILS</legend>
   <tr>
    <td><label >*Name:</label></td>
    <td><input name="name"  type="text" /></td>
    </tr>

  <tr>
    <td><label >*Email:</label></td>
    <td><input name="email" id="email" type="text" />
    </td>
  </tr>

  <tr>
    <td><label >*Password:</label></td>
    <td><input name="password"  type="password"  /></td>
    <td style="color:darkgreen"><b>(Min. 4 AND Max. 10 Characters)</b></td>
  </tr>

  <tr>
    <td><label>Gender:</label></td>
    <td><select name="sex">
        <option value="none">Select Sex:</option>
        <option value="Female">Female</option>
        <option value="Male">Male</option>
        </select>
    </td>
  </tr>

  <tr>
    <td><label >*Course:</label></td>
    <td><select name="course" id="course">
        <option value="0">currently pursuing</option>
        <option value ="B.Sc.(Hons)Computer Science"> B.Sc.(Hons)Computer Science</option>
        <option value="M.Sc Computer science">M.Sc Computer science</option>
        <option value="M.Sc Computer science">MCA</option>
        <option value="12th standard">12th standard</option>
        <option value="12th standard">B.E/Btech</option>
        <option value="12th standard">Other</option>
        </select>
     </td>
  </tr>

  <tr>
    <td><label>*Phone:</label></td>
    <td><input type="text" name="phone"/></td>
 </tr>
</tbody>
</table>
</fieldset>

<br><input type="submit" value="Sign Up"/>
<input type = "reset"  value = "Reset"/>
</form>
</body>
</html>