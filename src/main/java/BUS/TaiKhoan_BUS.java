/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BUS;

import DAO.TaiKhoan_DAO;
import DTO.TaiKhoan_DTO;
import java.io.IOException;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class TaiKhoan_BUS {
    TaiKhoan_DAO tkDAO = new TaiKhoan_DAO();
    TaiKhoan_DTO tkDTO ;
    public boolean checktaikhoan(String usernamee)throws IOException, SQLException{        
        if (tkDAO.veryfyTaikhoan(usernamee) == null)
                return true;
        return false;
    } 
    public TaiKhoan_DTO showtaikhoan(String usernamee) throws SQLException{
        return tkDAO.veryfyTaikhoan(usernamee);
    }
}
