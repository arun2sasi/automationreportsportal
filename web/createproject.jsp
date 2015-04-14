<%-- 
    Document   : createproject
    Created on : Mar 15, 2015, 5:19:40 AM
    Author     : sasi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New Project</title>
    </head>
    <body>
        <h1>Welcome <%=session.getAttribute("userid")%></h1><a href='logout.jsp'>Logout</a>
        
        <form action="newproject.jsp" method="POST">
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Project Name</td>
                        <td><input type="text" name="prjname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><textarea name="prjdesc" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Create" name="submit" /></td>
                    </tr>
                </tbody>
            </table>

            
        </form>
        
        
        
    </body>
</html>
