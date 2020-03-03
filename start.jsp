
<%@ page import ="java.sql.*" import="java.io.*,java.util.Locale"  %>
<%
  
    String femail  = (String)session.getAttribute( "theEmail" );
    if(femail.equals("null"))  {out.println("Session timed out");}
   
 	try{   

	String connectionURL = "jdbc:mysql://localhost:3306/codehouse"; 
// Load JBBC driver "com.mysql.jdbc.Driver" 

	Class.forName("com.mysql.jdbc.Driver").newInstance(); 

	Connection con = DriverManager.getConnection(connectionURL, "heena", "ruchika");
      
       
        Statement st = con.createStatement();
  ResultSet rs= st.executeQuery("select * from appointment where email='" + femail + "' ");

if(rs.next())
{

     
 

 ResultSet s= st.executeQuery("select time from appointment where email='" + femail + "' and date= curdate(); " );
    if (s.next())
    {           
            %> 
                    <script type="text/javascript">
                     <% String ftime=s.getString("time");%>
                     var s="<%=ftime%>";

                    alert( 'Hi ,your appointment is scheduled for today at :' +s +'\n\n Please be online on the scheduled time !!');
                    
                    var r=confirm("Do you have an appointment right now??");
if (r==true)
{
    window.location.href="http://www.google.com/+/learnmore/hangouts";
}
else
{
    window.location.href="main.jsp";
}



                 //   window.location.href="http://www.google.com/+/learnmore/hangouts";
                   </script>
                   <%     	    
 }
   else 
  {   
      %> 
        <script type="text/javascript">
        alert( 'Sorry..you donot have an appointment today!!\n To know your booked appointments check out the confirmation mails!!');
          window.location.href = "main.jsp";
        </script>

      <%
    }

}
else
{
 %> 
       <script type="text/javascript">
        alert("You have not scheduled an appointment!...\n\nIn case of a query ,Please schedule an appointment");
        window.location.href = "main.jsp";
        </script>    
 <%
}



con.close();

}catch(Exception e){ System.out.println(e);}
%>




