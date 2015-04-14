<%-- 
    Document   : logout
    Created on : 11 Mar, 2015, 11:14:47 AM
    Author     : shanmar
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>