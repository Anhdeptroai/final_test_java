/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author vietl
 */
public class chitietphieumuon_DTO {
    private int maphieumuon;
    private int masach;
    private int soluong;
    public chitietphieumuon_DTO()
    {
    }
    public chitietphieumuon_DTO(int maphieumuon,int masach,int soluong)
    {
        this.maphieumuon=maphieumuon;
        this.soluong=soluong;
        this.masach=masach;
    }
    public void setMaphieumuon(int maphieumuon)
    {
        this.maphieumuon=maphieumuon;
    }
    public int getMaphieumuon()
    {
        return maphieumuon;
    }
    public void setSoluong(int soluong)
    {
        this.soluong=soluong;
    }
    public int getSoluong()
    {
        return soluong;
    }
    public void setMasach(int masach)
    {
        this.masach=masach;
    }
    public int getMasach()
    {
        return masach;
    }
}
