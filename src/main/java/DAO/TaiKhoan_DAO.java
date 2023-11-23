/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Connection.JDBC;
import DTO.TaiKhoan_DTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TaiKhoan_DAO {        
    public TaiKhoan_DTO veryfyTaikhoan(String usernamee) throws SQLException {
        TaiKhoan_DTO user = null;
        try {
            Connection con = JDBC.openConnection();
            String query = "SELECT * FROM taikhoan WHERE username = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, usernamee);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String taikhoan = rs.getString("username");
                String matkhau = rs.getString("passworduser");
                user = new TaiKhoan_DTO(taikhoan,matkhau);
            }
            //JDBC.openConnection();
        } catch (SQLException e) {
            throw e;
        }
        return user;
    }
}
