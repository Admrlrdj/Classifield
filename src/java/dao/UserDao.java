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
import model.User;

public class UserDao {

    private final Connection conDB;
    private PreparedStatement ps;
    private ResultSet rs;

    public UserDao() {
        conDB = Koneksi.getKoneksi();
    }

    public ArrayList<User> getAllUsers() {

        ArrayList<User> listUser = new ArrayList<>();
        try {
            String sqlAllUser = "SELECT * FROM user";
            ps = conDB.prepareStatement(sqlAllUser);
            rs = ps.executeQuery();

            while (rs.next()) {
                User k = new User();
                k.setId(rs.getInt("id_user"));
                k.setNamaInstansi(rs.getString("nama_instansi"));
                k.setEmail(rs.getString("email"));
                k.setUsername(rs.getString("username"));
                k.setPassword(rs.getString("password"));
                k.setNoTlp(rs.getString("no_tlp"));
                k.setRole(rs.getInt("role"));

                listUser.add(k);
            }
        } catch (SQLException e) {
            System.out.println("method arraylist error" + e.getMessage());
        }

        return listUser;
    }

    public void simpanData(User k, String page) {
        String sqlSimpan = null;
        if (page.equals("tambah")) {
            sqlSimpan = "INSERT INTO user (nama_instansi, email, username, password, no_tlp, role, logged_in) VALUES (?,?,?,?,?,2,0)";
        }
        try {
            ps = conDB.prepareStatement(sqlSimpan);
            ps.setString(1, k.getNamaInstansi());
            ps.setString(2, k.getEmail());
            ps.setString(3, k.getUsername());
            ps.setString(4, k.getPassword());
            ps.setString(5, k.getNoTlp());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Simpan Data Error" + e.getMessage());
        }
    }

    public static void main(String[] args) {
        UserDao udao = new UserDao();
        System.out.println(udao.getAllUsers());

    }
}
