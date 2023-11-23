/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author vietl
 */
import java.time.LocalDate;
public class phieuxuat_DTO {
    private int maphieumuon;
    private LocalDate ngaymuon;
    private LocalDate ngaytra;
    private int mathe;
    private int manhanvien;
    
    public phieuxuat_DTO()
    {
    }
    public phieuxuat_DTO(int maphieumuon,LocalDate ngaymuon,LocalDate ngaytra,int mathe,int manhanvien)
    {
        this.maphieumuon=maphieumuon;
        this.ngaymuon=ngaymuon;
        this.ngaytra=ngaytra;
        this.mathe=mathe;
        this.manhanvien=manhanvien;
    }    
    public void setMaphieumuon(int maphieumuon)
    {
        this.maphieumuon=maphieumuon;
    }
    public int getMaphieumuon()
    {
        return this.maphieumuon;
    }   
    public void setNgaymuon(LocalDate ngaymuon)
    {
        this.ngaymuon=ngaymuon;
    }
    public LocalDate getNgaymuon()
    {
        return this.ngaymuon;
    }
    public void setNgaytra(LocalDate ngaytra)
    {
        this.ngaytra=ngaytra;
    }
    public LocalDate getNgaytra()
    {
        return this.ngaytra;
    }
    public void setMathe(int mathe)
    {
        this.mathe=mathe;
    }
    public int getMathe()
    {
        return this.mathe;
    }
    public void setManhanvien(int manhanvien)
    {
        this.manhanvien=manhanvien;
    }
    public int getManhanvien()
    {
        return this.manhanvien;
    }
    
    
}
