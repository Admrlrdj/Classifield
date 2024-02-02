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

    public static void main(String[] args) {
        UserDao udao = new UserDao();
        System.out.println(udao.getAllUsers());

    }
}
