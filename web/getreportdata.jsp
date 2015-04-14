<%-- 
    Document   : getreportdata
    Created on : 11 Mar, 2015, 5:54:59 PM
    Author     : shanmar
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Automation Portal</title>
    </head>
    <body>
       
          <select name="project">
        <%
    String userid = "Vonage";//(String)session.getAttribute("userid");
    String pwd = (String)session.getAttribute("pass");
   
   
      Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
      Connection con = DriverManager.getConnection(url, username, password);
   
   
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs = st.executeQuery("select * from reports.project  where PRJNAME='" + userid + "'");
   
    
    ResultSetMetaData meta = rs.getMetaData();
int colCount = meta.getColumnCount();
while (rs.next())
{
    for (int col=1; col <= colCount; col++) 
    {
      //  int value = (int)rs.getObject(col);
        
            %>
          
                <option><%= rs.getObject(col) %></option>
               
            
            
            <%
        
    }
}
    
    
    
%>
        
    </select>    
        
    </body>
</html>
