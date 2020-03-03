
<%@ page import ="java.sql.*" %>
<%
   
    String ffemail      = request.getParameter("email");
    String fdate   = request.getParameter("date");
    String ftime       = request.getParameter("time");
    String femail  = (String)session.getAttribute( "theEmail" );
    if(femail.equals("null"))  {out.println("Session timed out");}
   
 	try{   

	String connectionURL = "jdbc:mysql://localhost:3306/codehouse"; 
// Load JBBC driver "com.mysql.jdbc.Driver" 

	Class.forName("com.mysql.jdbc.Driver").newInstance(); 

	Connection con = DriverManager.getConnection(connectionURL, "heena", "ruchika");
      
       
        Statement st = con.createStatement();
    
if(femail.equals(ffemail))
{
 
 ResultSet s= st.executeQuery("select * from appointment where date='" + fdate + "' and time='" + ftime + "' ");
    if (!s.next())
    {
            int i = st.executeUpdate("insert into appointment( email,date,time) values ('" + ffemail + "','" + fdate + "','" + ftime + "')");

	    if (i > 0)
	        {

                    %> 
                    <script type="text/javascript">
                    alert( 'Appointment Booked !! \n\n You will soon get a confirmation mail !!');
                    window.location.href = "main.jsp";
                   </script>
                   <%

    		} 
     	    else 
               {
                   response.sendRedirect("help.jsp");
   
       		}

    }
    else 
    {   

       %> 

<script type="text/javascript">
            alert( '[ Date and Time : already scheduled]..\n Please Schedule Another ');
           window.location.href = "help.jsp";
         </script>

       <%
     }

}
else
{
 %> 
       <script type="text/javascript">
        alert("Username (Email) specified is not valid");
        window.location.href = "help.jsp";
        </script>    
           <%
}



con.close();

}catch(Exception e){ System.out.println(e);}
%>




