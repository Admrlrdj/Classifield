package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginCtr", urlPatterns = {"/LoginCtr"})
public class LoginCtr extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver"); // Corrected driver class name

            // Connect to your specific database, replace "yourdatabase" with your actual database name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsorship", "root", "");

            String sql = "select * from user where username=? and password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            String unameDB = "";
            String passDB = "";

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                unameDB = rs.getString("username");
                passDB = rs.getString("password");

                System.out.println(unameDB);
                System.out.println(passDB);
            }

            if (username.equals(unameDB) && password.equals(passDB)) {
                System.out.println("IF");

                // Forward to the index.jsp page
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else {
                // Add code here for handling invalid login credentials
                out.println("Invalid login credentials");
            }

        } catch (ClassNotFoundException | SQLException e) {
        }
    }
}
