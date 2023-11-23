/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author acer
 */
public class TaiKhoan_DTO {
    private String username;
    private String password;
    
    public TaiKhoan_DTO(String username, String password){
        this.username = username;
        this.password = password;
    }
    
    public void setTaikhoan(String username){
        this.username = username;
    }
    public String getTaikhoan(){
        return username;
    }
    
    public void setMatkhau(String password){
        this.password = password;
    }
    public String getMatkhau(){
        return password;
    }
}
