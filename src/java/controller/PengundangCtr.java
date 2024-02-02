import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PengundangCtr", urlPatterns = {"/PengundangCtr"})
public class PengundangCtr extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Mendapatkan data dari form
        String field1 = request.getParameter("field1");
        String field2 = request.getParameter("field2");
        // ... tambahkan parameter untuk setiap field pada form

        try {
            // Koneksi ke database (harap sesuaikan dengan database yang digunakan)
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nama_database", "username", "password");

            // Query SQL untuk menyimpan data
            String query = "INSERT INTO nama_tabel (field1, field2) VALUES (?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, field1);
            preparedStatement.setString(2, field2);
            // ... setiap field pada query

            // Eksekusi query
            preparedStatement.executeUpdate();

            // Tutup koneksi
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect ke halaman list data setelah berhasil menambahkan
        response.sendRedirect("ListFormDataServlet");
    }
}
