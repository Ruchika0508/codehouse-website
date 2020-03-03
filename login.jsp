
<%@ page import ="java.sql.*" %>

<%
    String femail= request.getParameter("username");    
    String fpassword = request.getParameter("password");
     session.setAttribute( "theEmail", femail );
 
try{
 String connectionURL = "jdbc:mysql://localhost:3306/codehouse"; 
// Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

Connection con = DriverManager.getConnection(connectionURL, "heena", "ruchika");
Statement st = con.createStatement();
    ResultSet rs= st.executeQuery("select * from visitors where email='" + femail + "' and password='" + fpassword + "'");
  
    if (rs.next())
       {
        session.setAttribute("femail", femail);
        response.sendRedirect("main.jsp");
       }
    else {   

%> 
<script type="text/javascript">
alert("Invalid Username or password..Try again!!");
window.location.href = "front.jsp";
</script>
<%
       
 }

con.close();

}catch(Exception e){ System.out.println(e);}

%>

