<%-- 
    Document   : registration
    Created on : 11 Mar, 2015, 11:13:02 AM
    Author     : shanmar
--%>

<%@ page import="com.automationportal.db.Database" import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");   
    String pwd = request.getParameter("pass");
    String prjname = request.getParameter("prjname");
    String prjdesc = request.getParameter("prjdesc");
   
   Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
      Connection con = DriverManager.getConnection(url, username, password);
   
   
    Statement st = con.createStatement();
    //ResultSet rs;
   // int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
   String sql =  "INSERT INTO reports.project (PRJNAME, DESCRIPTION, DATECREATED) VALUES ( '"+prjname+"', '"+prjdesc+"', '"+user+"',CURDATE() );";

   // String sql = "INSERT INTO users (firstname,lastname,email,uname,pwd,datecreated) values ( '"+fname+"', '"+lname+"', '"+email+"', '"+user+"','"+pwd+"',date() );"; 
     int i= st.executeUpdate(sql);
  
     con = null;
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>