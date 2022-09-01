package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
 
public class UserDAO {
    
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    
    public UserDAO(){ 
    	  try { 
    		   String dbURL = "jdbc:mysql://localhost:3306/moodwear?serverTimezone=UTC";
    		   String dbID = "root";
    		   String dbPassword = "1234";
    		   Class.forName("com.mysql.cj.jdbc.Driver");
    		   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

    		  } catch (Exception e) {
    		   e.printStackTrace();
    		  }
    		 }
    
    public int join(User user) {
        String SQL = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, '1', 2000)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getMember_id());
            pstmt.setString(2, user.getMember_pw());
            pstmt.setString(3, user.getMember_name());
            pstmt.setString(4, user.getMember_email());
            pstmt.setString(5, user.getMember_birth());
            pstmt.setString(6, user.getMember_phone());
            return pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }
 
}
