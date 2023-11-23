/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class JDBC {   
    public static Connection openConnection() {
        Connection con = null;
        try {            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String dbUrl = "jdbc:sqlserver://localhost:1433;DatabaseName=quanlithuvien;trustServerCertificate=true";
            String username = "admin"; 
            String password= "12";
            con = DriverManager.getConnection(dbUrl, username, password);
            //return true;
        } catch (Exception ex) {
            System.out.println(ex);
            JOptionPane.showMessageDialog(null, "Không thể kết nối đến cơ sở dữ liệu!","Lỗi", JOptionPane.ERROR_MESSAGE);
            //return false; 
        }
        return con;
    }
    
    public void closeConnection(Connection con) throws IOException {
        try {
            if (con!=null)
                con.close();
        } catch (SQLException ex) {
            System.out.println(ex); 
        }
    }
    
    public static void main(String[] args) {
        if(openConnection()!= null)
            System.out.println("sucessfull");
        
    }
                     
}
