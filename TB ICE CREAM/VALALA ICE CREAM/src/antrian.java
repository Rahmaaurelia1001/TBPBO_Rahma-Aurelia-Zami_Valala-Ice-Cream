import java.util.LinkedList;
import java.util.Queue;
import java.sql.*;

public class antrian {

    static String urll = "jdbc:mysql://localhost:3306/valala";

    // colection Framework
    static Queue<String> antrian = new LinkedList<>();
    static Integer nomorAntrian = 1;

    // untuk melihat antrian yang sedang berjalan

    public void tampilkanAntrian() throws SQLException {

        String sql = "SELECT * FROM antrian";

        Connection conn = DriverManager.getConnection(urll, "root", "");
        Statement statement = conn.createStatement();
        ResultSet result = statement.executeQuery(sql);

        System.out.println("Antrian yang sedang berjalan: ");
        antrian.clear();

        while (result.next()) {
            antrian.add("antrian " + result.getString("id"));
        }

        System.out.println(antrian);

    }

    // menghapus antrian yang sudah selesai
    public void hapusAntrianTerbaru() throws SQLException {
        String sql = "DELETE FROM antrian LIMIT 1";

        Connection conn = DriverManager.getConnection(urll, "root", "");
        Statement statement = conn.createStatement();
        statement.execute(sql);
        
        System.out.println("Antrian paling depan berhasil diselesaikan!");
        antrian.remove();

        tampilkanAntrian();

        // System.out.println("Antrian yang sedang berjalan: " + antrian);
        // antrian.remove();
    }

    // menghapus seluruh antrian jika ada kesalahan program
    public void hapusSeluruhAntrian() throws SQLException {
        String sql = "DELETE FROM antrian";

        Connection conn = DriverManager.getConnection(urll, "root", "");
        Statement statement = conn.createStatement();
        statement.execute(sql);
        antrian.clear();

        tampilkanAntrian();
    }

}
