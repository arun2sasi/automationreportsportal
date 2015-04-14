<%-- 
    Document   : success
    Created on : 11 Mar, 2015, 11:14:09 AM
    Author     : shanmar
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>

<title>Welcome <%=session.getAttribute("userid")%></title>






<form action="getreportdata.jsp" method="POST">
    <table border="0">
       
                    
                        
                        
                        
                        
   
    
    <table border="0">
        <thead>
            <tr>
                <th>Welcome <%=session.getAttribute("userid")%></th>
                <th></th>
                <th><a href='logout.jsp'>Logout</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Create New Project</td>
                <td></td>
                <td><a href="createproject.jsp">Click Here</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
    </table>

                
                <br>
        <tbody>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
              <select name="project">
        <%
    String userid = (String)session.getAttribute("userid");
  
   
      Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
      Connection con = DriverManager.getConnection(url, username, password);
   
   
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs = st.executeQuery("select * from reports.project ");// where PRJNAME='" + userid + "'");
   
  
    
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
        

    
</form>
<%
    }
%>