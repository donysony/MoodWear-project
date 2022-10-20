package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/moodwear";
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
	
	
	//주소 번호 부여 메소드
	public int getNext() {
		//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구함
		String SQL ="select address_num from address order by address_num desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; //첫번째 게시물인 경우
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB오류
	}	
	
	
	
	//배송지 등록하기
	public boolean insertAddress(Address address, String member_id, String phone) {
		String sql = "insert into address values(?,?,?,?,?,?,?,?)";
		boolean flag = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, address.getAddress_name());
			pstmt.setString(3, address.getAddress_reciever());
			pstmt.setString(4, address.getAddress1());
			pstmt.setString(5, address.getAddress2());
			pstmt.setInt(6, address.getAddress_zipcode());
			pstmt.setString(7, member_id);
			pstmt.setString(8, phone);

			if(pstmt.executeUpdate() == 1) {
				flag = true;
				
			}
			
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
		}return flag;
		}
	
	//배송지 가져오기 list
	public ArrayList<Address> getMyAddress(String member_id) {
		String sql = "select address_name, address_reciever, address1, address2, address_phone, address_num from address where address_member_id=? order by address_num";
		ArrayList<Address> list = new ArrayList<Address>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
				while(rs.next()) {
				Address address = new Address();
				address.setAddress_name(rs.getString(1));
				address.setAddress_reciever(rs.getString("address_reciever"));
				address.setAddress1(rs.getString("address1"));
				address.setAddress2(rs.getString("address2"));
				address.setAddress_phone(rs.getString("address_phone"));
				address.setAddress_num(rs.getInt("address_num"));
				list.add(address);
				}
			
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
		}return list;
		
	}
	//배송지 가져오기 address_num과 member_id가 일치하는 항목만
	public Address getAddress(String member_id, int address_num) {
		String sql = "select * from address where address_member_id=? and address_num=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setInt(2, address_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {			
				Address address = new Address();
				address.setAddress_num(rs.getInt("address_num"));
				address.setAddress_name(rs.getString("address_name"));
				address.setAddress_reciever(rs.getString("address_reciever"));
				address.setAddress1(rs.getString("address1"));
				address.setAddress2(rs.getString("address2"));
				address.setAddress_zipcode(rs.getInt("address_zipcode"));
				address.setAddress_member_id(rs.getString("address_member_id"));
				address.setAddress_phone(rs.getString("address_phone"));
				return address;
			}
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
		}
		return null;
	}
	
	
	
	//배송지 수정
	public boolean updateAddress(Address address, String member_id, String phone) {
		String sql = "update address set address_name=?, address_reciever=?, address1=?, address2=?, address_zipcode=?, address_phone=? where address_member_id=? and address_num=?";
		boolean flag = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, address.getAddress_name());
			pstmt.setString(2, address.getAddress_reciever());
			pstmt.setString(3, address.getAddress1());
			pstmt.setString(4, address.getAddress2());
			pstmt.setInt(5, address.getAddress_zipcode());
			pstmt.setString(6, phone);
			pstmt.setString(7, member_id);
			pstmt.setInt(8, address.getAddress_num());
			
			if(pstmt.executeUpdate() == 1) {
				flag = true;
			}
			
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
		}return flag;
	}
	
	//선택주소록 삭제
	public int pickDelete(String[] address_num) {
		String sql = "delete from address where address_num =?";
		int result=0;
		try {
			PreparedStatement pstmt;
			for(int i=0; i<address_num.length; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(address_num[i]));
				result += pstmt.executeUpdate();
			}
			return result; //처리된 행의 개수를 반환
		}catch(Exception e){
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
			
		}
		return -1; // DB오류
	}

	//아이디와 상품번호를 가지고 장바구니에 넣음 -> 장바구니 번호 부여
	public boolean getCart(String member_id, int product_num, int cart_quantity) {
		String sql = "insert into cart values(null,?,?,?)";
		boolean result = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_quantity);
			pstmt.setString(2, member_id);
			pstmt.setInt(3, product_num);
			if(pstmt.executeUpdate() == 1) {
				result = true;
			}
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
		}
		return result;
	}
	
	
	//로그인한 회원의 아이디로 장바구니 가져오기
	public ArrayList<Cart> getCartList(String member_id) {
		String sql = "select * from cart where member_id=? order by cart_num ";
		ArrayList<Cart> list = new ArrayList<Cart>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Cart cart = new Cart();
				cart.setCart_num(rs.getInt(1));
				cart.setCart_quantity(rs.getInt(2));
				cart.setMember_id(rs.getString(3));
				cart.setProduct_num(rs.getInt(4));
				list.add(cart);
			}
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
		}
		return list;
	}
	
	//로그인한 회원의 장바구니 번호로 장바구니 리스트 가져오기
	public ArrayList<Cart> getOrderList(String member_id, int cart_num) {
		String sql = "select * from cart where member_id=? and cart_num=? order by cart_num ";
		ArrayList<Cart> list = new ArrayList<Cart>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setInt(2, cart_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Cart cart = new Cart();
				cart.setCart_num(rs.getInt(1));
				cart.setCart_quantity(rs.getInt(2));
				cart.setMember_id(rs.getString(3));
				cart.setProduct_num(rs.getInt(4));
				list.add(cart);
			}
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
		}
		return list;
	}
	
	
	
	
	
	
	//회원 탈퇴
	public boolean memberWithdrawal(String member_id) {
		String sql = "delete from member where member_id=?";
		boolean result = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			if(pstmt.executeUpdate()==1) {
				result = true;
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
		}
		return result;
				
	}

}
