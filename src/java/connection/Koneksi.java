/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.SQLException;

public class Koneksi {

    static  Connection conDB;
   
    public static Connection getKoneksi(){
        if(conDB==null){
            MysqlDataSource data = new MysqlDataSource();
            data.setDatabaseName("sponsorship");
            data.setUser("root");
            data.setPassword("");
            
            try{
                conDB = (Connection) data.getConnection();
                System.out.println("Koneksi Berhasil");                
            }
            catch(SQLException e){
                System.out.println("KOneksi Gagal");
            }
        }
        return conDB;
    }
    
    public static void main(String[] args) {
        getKoneksi();
    }   
}