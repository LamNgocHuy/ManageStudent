/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import Model.Student;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author macbookpro
 */
public class DBConnection {
    public static Connection ConnectDB () throws ClassNotFoundException, SQLException
    {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/DemoStudent?characterEncoding=utf8";
            Connection conn = DriverManager.getConnection(url, "root", "123456");
            return conn; 
    }
    
    public static ResultSet ExcuteQuery (String sql ) throws ClassNotFoundException, SQLException
    {
         
          Class.forName("com.mysql.jdbc.Driver");
          String url = "jdbc:mysql://localhost:3306/DemoStudent?characterEncoding=utf8";
          Connection conn = DriverManager.getConnection(url, "root", "123456");
          Statement stmt = conn.createStatement();
          ResultSet rs = (ResultSet) stmt.executeQuery(sql);
          return rs;
    
    }
    
    public static User getUserByID (String id) throws ClassNotFoundException, SQLException
    {
         Class.forName("com.mysql.jdbc.Driver");
          String url = "jdbc:mysql://localhost:3306/DemoStudent?characterEncoding=utf8";
          Connection conn = DriverManager.getConnection(url, "root", "123456");
          PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("SELECT * FROM User WHERE id = ?");
          stmt.setString(1, id);
          
          ResultSet rs = (ResultSet) stmt.executeQuery();
          
          User u = new User();
          while(rs.next())
          {
              u.setId(id);
              u.setName(rs.getString("name"));
              u.setEmail(rs.getString("email"));
              u.setPassword(rs.getString("password"));
          }
          return u;
    }
    
//    public static int UpdateUser (User) throws ClassNotFoundException, SQLException
//    {
//         Class.forName("com.mysql.jdbc.Driver");
//          String url = "jdbc:mysql://localhost:3306/DemoStudent?characterEncoding=utf8";
//          Connection conn = DriverManager.getConnection(url, "root", "123456");
//          PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("SELECT * FROM User WHERE id = ?");
//          stmt.setString(1, id);
//          
//          ResultSet rs = (ResultSet) stmt.executeQuery();
//          
//          User u = new User();
//          while(rs.next())
//          {
//              u.setId(id);
//              u.setName(rs.getString("name"));
//              u.setEmail(rs.getString("email"));
//              u.setPassword(rs.getString("password"));
//          }
//          return u;
//        
//    
//    }
}
