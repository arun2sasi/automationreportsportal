/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.automationportal.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author shanmar
 */
public class Database {
    
    
    
    
    void InsertData(String sQuery) throws ClassNotFoundException, SQLException{
        
        // Class.forName("com.mysql.jdbc.Driver");
     Class.forName("org.sqlite.JDBC");
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
    Connection con = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\shanmar\\Documents\\NetBeansProjects\\AutomationPortal\\AutomationReports.db");
   
    Statement st = con.createStatement();
    //ResultSet rs;
   // int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
       
  
   // String sql = "INSERT INTO members (first_name,last_name,email,uname,pass,regdate) values ( '"+fname+"', '"+lname+"', '"+email+"', '"+user+"','"+pwd+"',date() );"; 
   //  int i= st.executeUpdate(sql);
    
    }
    
    
    
    public static void main(String args[]) throws ClassNotFoundException, SQLException{
           // Class.forName("com.mysql.jdbc.Driver");
     Class.forName("org.sqlite.JDBC");
   // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root", "dbpass");
    Connection con = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\shanmar\\Documents\\NetBeansProjects\\AutomationPortal\\AutomationReports.db");
   
    Statement st = con.createStatement();
    
    
    
    ResultSet rs;
  // int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
     rs = st.executeQuery("select * from members where uname='arun2sasi' and pass='Test123'");
  
     
     
     
    }
    
    
    
}
