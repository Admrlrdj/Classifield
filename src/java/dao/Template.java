/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
/**
 *
 * @author HP
 */

import connection.Koneksi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Barang;

public class BarangDao {
    private final Connection conDB;
    private PreparedStatement ps;
    private ResultSet rs;

    public BarangDao(){
        conDB = Koneksi.getKoneksi();
    }
    

    public ArrayList <Barang> getAllBarang(){
        
        ArrayList<Barang> listBarang = new ArrayList<>();
        try {
            String sqlAllBarang = "SELECT * FROM Barang ORDER BY kodejurusan";
            ps = conDB.prepareStatement(sqlAllBarang);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                Barang k = new Barang();
                k.setKodejurusan(rs.getString("kodejurusan"));
                k.setNamabarang(rs.getString("namabarang"));
                k.setHargabarang(rs.getString("hargabarang"));
                k.setStock(rs.getString("stock"));
                
                listBarang.add(k);
            }
        }
        
        catch (SQLException e) {
            System.out.println("method arraylist error" + e.getMessage());
        }
        
        return listBarang;
    }
    
    public void simpanData(Barang k, String page){
        String sqlSimpan = null;
        if(page.equals("edit")){
            sqlSimpan = "UPDATE barang SET hargabarang = ?, stock = ? WHERE namabarang = ? AND kodejurusan = ?;";
        }
        else if(page.equals("tambah")){
            sqlSimpan = "INSERT INTO barang (hargabarang, stock, namabarang, kodejurusan, gambar) VALUES (?,?,?,?)";
        }
        try{
            ps = conDB.prepareStatement(sqlSimpan);
            ps.setString(1, k.getHargabarang());
            ps.setString(2, k.getStock());
            ps.setString(3, k.getNamabarang());
            ps.setString(4, k.getKodejurusan());
            
            ps.executeUpdate();
            
        }catch(SQLException e){
            System.out.println("Simpan Data Error" + e.getMessage());
        }
    }
    
    public void hapusData(Barang k){
        String sqlHapus = "DELETE FROM barang WHERE kodejurusan=? AND namabarang=? ";
        
        try {
            ps = conDB.prepareStatement(sqlHapus);
            ps.setString(1,  k.getKodejurusan());
            ps.setString(2, k.getNamabarang());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Method hapus data error" + e.getMessage());
        }
    }
    
    public  Barang getRecordByNamabarang(String namabarang){
        Barang k = new Barang();
        String sqlSearch = " SELECT * FROM barang WHERE namabarang=?";
        
        try {
            ps = conDB.prepareStatement(sqlSearch);
            ps.setString(1, namabarang);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                k.setKodejurusan(rs.getString("kodejurusan"));
                k.setNamabarang(rs.getString("namabarang"));
                k.setHargabarang(rs.getString("hargabarang"));
                k.setStock(rs.getString("stock"));
            }
        } catch (Exception e) {
            System.out.println("getRecord by nama barang ada kesalahan " + e.getMessage());
        }
        
        return k;
    }
    
    public static void main(String[] args) {
        BarangDao kdao = new BarangDao();
        System.out.println(kdao.getAllBarang());
        

    }
}