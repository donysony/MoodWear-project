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
	
	
	//회원 아이디 찾기
	public String getMemberId(String name, String phone) {
		String sql = "select member_id from member where member_name =? and member_phone=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";
				
	}
	
	//회원 비밀번호 찾기
	public String getMemberPw(String member_id, String phone) {
		String sql = "select member_pw from member where member_id =? and member_phone=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,member_id);
			pstmt.setString(2,phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";
		
	}
	
	
	//로그인된 아이디로 회원정보 가져오기 메소드
	public Member getMember(String userID){
		String sql ="select * from member where member_id=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Member member = new Member();
				member.setMember_id(rs.getString(1));
				member.setMember_pw(rs.getString(2));
				member.setMember_name(rs.getString(3));
				member.setMember_email(rs.getString(4));
				member.setMember_birth(rs.getString(5));
				member.setMember_phone(rs.getString(6));
				String str = rs.getString(7);
				char withdrawal= str.charAt(0);
				member.setMember_withdrawal(withdrawal);
				member.setMember_reverse(rs.getInt(8));
				return member;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null)
					conn.close();
				if(rs != null)
					rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
				
			}return null;
	}
	//회원 정보 수정하기
	public int getMemberUpdate(String userID, String pw, String email, String phone) {
		String sql = "update member set member_pw=?, member_email=?, member_phone=? where member_id=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, email);
			pstmt.setString(3, phone);
			pstmt.setString(4, userID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {
					conn.close();
				}if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}return -1;
	}
	

}
