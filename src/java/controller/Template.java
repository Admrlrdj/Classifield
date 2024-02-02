/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import dao.BarangDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Barang;


/**
 *
 * @author HP 
 */
@WebServlet(name = "BarangCtr", urlPatterns = {"/BarangCtr"})
public class BarangCtr extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //respon berupa data json
        response.setContentType("application/json");
        //mengambil nilai parameter page
        String page = request.getParameter("page");
        //menampilkan data
        PrintWriter out = response.getWriter();
        //membuat objek jurusan dao
        BarangDao Bardao = new BarangDao();
        Gson gson = new Gson();
        
        if(page==null){
            List<Barang> listBarang = Bardao.getAllBarang();
            
            
            String jsonBarang = gson.toJson(listBarang);
            out.println(jsonBarang);       
        }
        else if (page.equals("tambah")) {
            String namabarang = request.getParameter("namabarang");
            //String nama = request.getParameter("nama");
            
            if(Bardao.getRecordByNamabarang(namabarang).getNamabarang()!= null) {
                response.setContentType("text/html; charset=UTF-8");
                out.println("Nama Barang: " +namabarang +" - " +Bardao.getRecordByNamabarang(namabarang).getNamabarang()+" sudah terpakai, OK");
            }
            else{
                Barang k = new Barang();
                k.setKodejurusan(request.getParameter("kodejurusan"));
                k.setNamabarang(request.getParameter("namabarang"));
                k.setHargabarang(request.getParameter("hargabrang"));
                k.setStock(request.getParameter("stock"));
                Bardao.simpanData(k, page);
                
                response.setContentType("text/html;charset=UTF-8");
                out.println("Data Berhasil Disimpan, OK");
            }
            
        } else if ("hapus".equals(page)) {
            Barang k = new Barang();
            k.setKodejurusan(request.getParameter("kodejurusan"));
            k.setNamabarang(request.getParameter("namabarang"));    
            Bardao.hapusData(k);
            response.setContentType("text/html;charset=UTF-8");
            out.print("Data berhasil dihapus");
        }
        else if ("tampil".equals(page)){
            String jSonBarang = gson.toJson(Bardao.getRecordByNamabarang(request.getParameter("namabarang")));
            response.setContentType("application/json");
            out.print(jSonBarang);
        }
        else if ("edit".equals(page)){
            Barang k = new Barang();
            k.setKodejurusan(request.getParameter("kodejurusan"));
            k.setNamabarang(request.getParameter("namabarang"));
            k.setHargabarang(request.getParameter("hargabrang"));
            k.setStock(request.getParameter("stock"));
                
            Bardao.simpanData(k, page);
            response.setContentType("text/html;charset=UTF-8");
            out.print("data berhasil disimpan");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


nih contoh controllrer gw