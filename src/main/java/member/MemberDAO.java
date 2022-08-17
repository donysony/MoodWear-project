package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/shop_db";
			String dbID = "root";
			String dbPassword="moodwear2022";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//아이디 비밀번호 체크메소드
	public int login(String member_id, String member_pw) {
		String sql = "select member_pw from member where member_id = ?";
		try {
			PreparedStatement  pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(member_pw)){
					return 1; //로그인 성공 
				}else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try { //DB연결 닫아주기
				if(conn != null)
					conn.close();
				if(rs != null)
					rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -2; //DB오류
	}
	
	//게시판에 작성한 작성자 아이디와 회원아이디이용해 회원 이름 가져오기
	public String getMemberName(String board_member_id) {
		String sql = "select member_name from member where member_id =?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board_member_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}

}
