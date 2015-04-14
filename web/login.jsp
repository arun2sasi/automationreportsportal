<%-- 
    Document   : login
    Created on : 11 Mar, 2015, 11:13:45 AM
    Author     : shanmar
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");   
    String pwd = request.getParameter("pass");
    
     //session.setAttribute( "userid",userid);
     // session.setAttribute( "pass",pwd);
     
      Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
      Connection con = DriverManager.getConnection(url, username, password);
   
   
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from  reports.users where UNAME='" + userid + "' and PWD='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        session.setAttribute( "pass",pwd);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>