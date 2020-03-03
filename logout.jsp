<%

session.setAttribute("theEmail", null);
session.invalidate();

response.sendRedirect("front.jsp");

%>