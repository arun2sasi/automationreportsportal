/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shanmar
 */
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.*;

public class CreateTable
{
    
    
    
    

 
 
  public static void main( String args[] ) throws SQLException{
       
          
    CheckDBConnection();
      
  }
  
  
 
  
  
  
  
  
  
  public static void CheckDBConnection() throws SQLException
  {
      
      
      
                try {
    System.out.println("Loading driver...");
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver loaded!");
} catch (ClassNotFoundException e) {
    throw new RuntimeException("Cannot find the driver in the classpath!", e);
}
          

          
          String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
Connection connection = null;
try {
    System.out.println("Connecting database...");
    connection = DriverManager.getConnection(url, username, password);
    System.out.println("Database connected!");
} catch (SQLException e) {
    throw new RuntimeException("Cannot connect the database!", e);
} finally {
    //System.out.println("Closing the connection.");
    //if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
}
   


Statement stmt = connection.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM users");
System.out.println("Executing");
ResultSetMetaData meta = rs.getMetaData();
int colCount = meta.getColumnCount();
while (rs.next())
{
    for (int col=1; col <= colCount; col++) 
    {
      //  int value = (int)rs.getObject(col);
        
            System.out.println(rs.getObject(col));
        
    }
}
    




rs.close();
stmt.close();
connection.close();


  }
  
  
    
  
  public User find(String uname, String pwd) throws SQLException {
    User user = null;
    
    
    
          String url = "jdbc:mysql://localhost:3306/reports";
String username = "java";
String password = "Tiger";
Connection connection = null;

    System.out.println("Connecting database...");
    connection = DriverManager.getConnection(url, uname, pwd);
    
    
    

    try (
        
            
        PreparedStatement statement = connection.prepareStatement("SELECT id, username, email FROM user WHERE username=? AND password=md5(?)");
    ) {
        statement.setString(1, uname);
        statement.setString(2, pwd);

        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getLong("id"));
                user.setUsername(resultSet.getString("username"));
                user.setEmail(resultSet.getString("email"));
            }
        }
    }       

    return user;

  
}


}




class User

{
    
  
    void setId(long aLong) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setUsername(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setEmail(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}