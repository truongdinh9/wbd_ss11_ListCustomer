package cus;

import java.util.Date;

public class Customer {
    private String Hoten;
    private String Ngaysinh;
    private  String Diachi;
    private String Anh;

    public Customer(String hoten, String ngaysinh, String diachi,String anh) {
        Hoten = hoten;
        Ngaysinh = ngaysinh;
        Anh = anh;
        Diachi=diachi;
    }

    public String getDiachi() {
        return Diachi;
    }

    public void setDiachi(String diachi) {
        Diachi = diachi;
    }

    public String getHoten() {
        return Hoten;
    }

    public void setHoten(String hoten) {
        Hoten = hoten;
    }

    public String getNgaysinh() {
        return Ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        Ngaysinh = ngaysinh;
    }

    public String getAnh() {
        return Anh;
    }

    public void setAnh(String anh) {
        Anh = anh;
    }

//    public static void main(String[] args) {
//        Object[] arr=new cus.Customer[10];
//        arr[0]=new cus.Customer("a","b","c","d");
//    }
}
