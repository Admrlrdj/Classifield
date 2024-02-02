package controller;

import com.google.gson.Gson;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

@WebServlet(name = "UserCtr", urlPatterns = {"/UserCtr"})
public class UserCtr extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //respon berupa data json
        response.setContentType("application/json");
        //mengambil nilai parameter page
        String page = request.getParameter("page");
        //menampilkan data
        PrintWriter out = response.getWriter();
        //membuat objek jurusan dao
        UserDao Userdao = new UserDao();
        Gson gson = new Gson();

        if (page == null) {
            List<User> listUser = Userdao.getAllUsers();
            String jsonUser = gson.toJson(listUser);
            out.println(jsonUser);
        } else if (page.equals("tambah")) {
            // Get parameters from the request
            int idUser = Integer.parseInt(request.getParameter("id_user"));
            String namaInstansi = request.getParameter("nama_instansi");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String noTlp = request.getParameter("no_tlp");
            int role = Integer.parseInt(request.getParameter("role"));
            int loggedIn = Integer.parseInt(request.getParameter("logged_in"));

            // Create a new User object
            User newUser = new User();
            newUser.setId(idUser);
            newUser.setNamaInstansi(namaInstansi);
            newUser.setEmail(email);
            newUser.setUsername(username);
            newUser.setPassword(password);
            newUser.setNoTlp(noTlp);
            newUser.setRole(role);
            newUser.setLoggedIn(loggedIn);

            // Save the user data
            Userdao.simpanData(newUser, page);

            // Send a response message
            String responseMessage = "Data Berhasil Disimpan, OK";
            response.setContentType("text/plain");
            response.getWriter().write(responseMessage);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle GET requests
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST requests
        processRequest(request, response);
    }
}
