package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
	// 데이터베이스 접근 객체(디비에서 데이터를 불러오거나 넣을때)

 private Connection conn; // 디비에 접근하게 해주는 객체
 private PreparedStatement pstmt; // sql구문을 실행해주는 객체(sql 호출)
 private ResultSet rs; // 정보를 담을 수 있는 객체

 public AdminDAO() {
  try { 
		String dbURL = "jdbc:mysql://localhost:3306/moodwear";
		String dbID = "root";
		String dbPassword="moodwear2022";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL,dbID,dbPassword);

  } catch (Exception e) {
   e.printStackTrace();
  }
 }

 public int login(String admin_id, String admin_pw) {
  String SQL = "SELECT admin_pw FROM admin WHERE admin_id = ?";
  try {
   pstmt = conn.prepareStatement(SQL);
   pstmt.setString(1, admin_id);
   rs = pstmt.executeQuery();
   if(rs.next()) {
    if(rs.getString(1).equals(admin_pw))
     return 1;  // 로그인 성공
    else
     return 0;  // 비밀번호 불일치
   }
   return -1;  // 아이디가 없음
   
  } catch(Exception e) {
   e.printStackTrace();
  }
  return -2; // 데이터 베이스 오류

 }
}