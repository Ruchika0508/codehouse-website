<%@ page import ="java.sql.*" %>
<%
    String fname       = request.getParameter("name");    
    String femail      = request.getParameter("email");
    String fpassword   = request.getParameter("password");
    String fsex        = request.getParameter("sex");
    String fcourse     = request.getParameter("course");
    String fphone         = request.getParameter("phone");
    session.setAttribute( "theEmail", femail );
    
 	try{   

	String connectionURL = "jdbc:mysql://localhost:3306/codehouse"; 
// Load JBBC driver "com.mysql.jdbc.Driver" 

	Class.forName("com.mysql.jdbc.Driver").newInstance(); 

	Connection con = DriverManager.getConnection(connectionURL, "heena", "ruchika");


        Statement st = con.createStatement();


       ResultSet rs= st.executeQuery("select * from visitors where email='" + femail + "' ");
        if(rs.next())
      {

         %> 
         <script type="text/javascript">
            alert( 'Email already exists..Please enter a valid email ');
           window.location.href = "signup.jsp";
         </script>
           <%

       }
  else
 {

   	int i = st.executeUpdate("insert into visitors(name, email,password,sex,course,phone) values ('" + fname + "','" + femail + "','" + fpassword + "','" + fsex + "','" + fcourse + "','" + fphone + "')");

	 if (i > 0)
        {
       %>      
     <script type="text/javascript">
      alert("Registration successful...Please Login to continue");
      window.location.href = "front.jsp";
      </script>
       <%       
       } 
     else {
        response.sendRedirect("signup.jsp");
       }
}
con.close();

}catch(Exception e){ System.out.println(e);}
%>






