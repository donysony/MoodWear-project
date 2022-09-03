package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class BoardDAO {
//데이터베이스 접근 객체

		private Connection conn;
		private ResultSet rs;
		
		public BoardDAO() {
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
		
		//작성일자 메소드
		public String getDate() {
			String SQL ="select now()";
			try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return ""; //DB오류
		}
		
		//게시글 번호 부여 메소드
		public int getNext() {
			//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구함
			String SQL ="select board_num from board order by board_num desc";
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
		
		//글쓰기 메소드
		public int write(String bbsTitle, String userID, String bbsContent, String bbsPw) {
			String SQL = "insert into board values(?,?,?,null,?,0,?,1,?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, bbsTitle);
				pstmt.setString(3, bbsContent);
				pstmt.setString(4, getDate());
				pstmt.setString(5, bbsPw);
				pstmt.setString(6, userID);
				return pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //DB오류
		}
		
//		//게시판 목록 가져오기 - 특정페이지에서 10개만큼 게시글을 뽑아 출력 
//		public ArrayList<Board> getlist(int pageNumber){ //board_num<?이 특정숫자보다 작을 때, 삭제가 되지 않아 available가 1인 글만 가져올 수 있도록
//			String SQL = "select * from board where board_num < ? and exists(select board_num from board) order by board_num desc limit 10 ";
//			ArrayList<Board> list = new ArrayList<Board>(); //board클래스에서 나오는 인스턴스들을 보관할 수 있는 리스트 생성
//			try {
//				
//				PreparedStatement pstmt = conn.prepareStatement(SQL);
//				pstmt.setInt(1, getNext() - (pageNumber -1) *10);
//				rs=pstmt.executeQuery();
//				//getNext()는 글 다음으로 작성된 번호의미, 
//				//ex) 게시글이 5개 있을 때 getNext()는 6이고, pageNumber = 1(게시글이 5개밖에 없으므로) 결과: 6
//				//6(board_num<6)보다 작은값을 가져오기 때문에 게시글은 5개만 보여줌
//				while(rs.next()) {
//					Board board = new Board();
//					board.setBoard_num(rs.getInt(1));
//					board.setBoard_title(rs.getString(2));
//					board.setBoard_content(rs.getString(3));
//					board.setBoard_reply(rs.getString(4));
//					board.setBoard_regdate(rs.getString(5));
//					board.setBoard_views(rs.getInt(6)); 
//					board.setBoard_pw(rs.getString(7));
//					String str = rs.getString(8);
//					char reply_yn = str.charAt(0);
//					board.setBoard_reply_yn(reply_yn); //답변여부 메소드 필
//					board.setBoard_member_id(rs.getString(9));
//					list.add(board);
//				}
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
//			return list;
//		}
		
		//검색기능 추가한 리스트 보여주기
		public ArrayList<Board> getlist(int pageNumber, String keyField, String keyWord, String member_id){ 
			ArrayList<Board> list = new ArrayList<Board>(); //board클래스에서 나오는 인스턴스들을 보관할 수 있는 리스트 생성
			PreparedStatement pstmt =null;
			String SQL = null; 
			try {
				if(keyWord.equals("null") || keyWord.equals("")) {
					SQL = "select * from board where board_num < ? and exists(select board_num from board) order by board_num desc limit 10 ";
					pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber -1) *10);
				}else {
					if(keyField.equals("제목")) {
						SQL = "select * from board where board_title like ? and exists(select board_num from board) order by board_num desc limit 10" ;
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
					}else if(keyField.equals("작성자")) {
						SQL = "select distinct * from board where board_member_id in (select member_id from member where member_name like ?	) order by board_num desc limit 10";
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
					}else {
						SQL = "select distinct * from board where board_title like ? or board_member_id in (select member_id from member where member_name like ?) order by board_num desc limit 10";
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
						pstmt.setString(2, '%'+keyWord+'%');
						
					}
					
				}
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Board board = new Board();
					board.setBoard_num(rs.getInt(1));
					board.setBoard_title(rs.getString(2));
					board.setBoard_content(rs.getString(3));
					board.setBoard_reply(rs.getString(4));
					board.setBoard_regdate(rs.getString(5));
					board.setBoard_views(rs.getInt(6)); 
					board.setBoard_pw(rs.getString(7));
					String str = rs.getString(8);
					char reply_yn = str.charAt(0);
					board.setBoard_reply_yn(reply_yn); //답변여부 메소드 필
					board.setBoard_member_id(rs.getString(9));
					list.add(board);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		
		//게시물의 총 개수 
		public int getTotalCount(String keyField, String keyWord) {
			String SQL = null; 
			PreparedStatement pstmt =null;
			int totalCount =0;
			try {
				if(keyWord.equals("null") || keyWord.equals("")) {
					SQL = "select count(board_num) from board";
					pstmt = conn.prepareStatement(SQL);
					rs = pstmt.executeQuery();
				}else{
					if(keyField.equals("제목")) {
						SQL = "select  count(board_num) from board where board_title like ? and exists(select board_num from board) order by board_num desc limit 10" ;
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
						rs = pstmt.executeQuery();
					}else if(keyField.equals("작성자")) {
						SQL = "select distinct count(board_num) from board where board_member_id in (select member_id from member where member_name like ?	) order by board_num desc limit 10";
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
						rs = pstmt.executeQuery();
					}else {
						SQL = "select distinct count(board_num) from board where board_title like ? or board_member_id in (select member_id from member where member_name like ?) order by board_num desc limit 10";
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, '%'+keyWord+'%');
						pstmt.setString(2, '%'+keyWord+'%');
						rs = pstmt.executeQuery();
					}
					
				}
					if(rs.next()) {
					totalCount = rs.getInt(1);
					return totalCount;
					}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
		
		//하나의 게시글의 요소들을 보여주는 메소드
		//매개변수로 넘어온 'board_num'에 데이터가 존재한다면 그 데이터에 맞는 Board인스턴스 생성, 
		//해당 내용들을 모두 불러와 정보들 리턴
		public Board getBoard(int board_num) {
			String SQL = "select * from board where board_num =?";
			try {
			PreparedStatement pstmt =conn.prepareStatement(SQL);
			pstmt.setInt(1, board_num);
			rs = pstmt.executeQuery();
				if(rs.next()) {
					Board board = new Board();
					board.setBoard_num(rs.getInt(1));
					board.setBoard_title(rs.getString(2));
					board.setBoard_content(rs.getString(3));
					board.setBoard_reply(rs.getString(4));
					board.setBoard_regdate(rs.getString(5));
					board.setBoard_views(rs.getInt(6)); 
					board.setBoard_pw(rs.getString(7));
					String str = rs.getString(8);
					char reply_yn = str.charAt(0);
					board.setBoard_reply_yn(reply_yn);
					board.setBoard_member_id(rs.getString(9));
					return board;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		//조회수 증가
		public void upCount(int num) {
			String SQL = "update board set board_views = board_views+1 where board_num = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1,num);
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		//게시글 수정 메소드
		public int update(int board_num, String board_title, String board_content, String board_pw) {
			String SQL = "update board set board_title=?, board_content=?, board_pw=?where board_num=?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, board_title);
				pstmt.setString(2, board_content);
				pstmt.setString(3, board_pw);
				pstmt.setInt(4, board_num);
				return pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;//DB오류
		}
		
		//게시글 삭제
		public int delete(int board_num) {
			String SQL = "delete from board where board_num =?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, board_num);
				return pstmt.executeUpdate();				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;//DB오류
		}
		
		//게시글 번호에 해당하는 비밀번호 가져오기
		public String getPw(int board_num) {
			String pw ="";
			String SQL ="select board_pw from board where board_num =?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, board_num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					pw=rs.getString(1);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return pw;
		}
		
		//다음 게시글 가져오기 - 사용안함
		public Board getBoardNext(int board_num){
			String SQL = "select * from board where board_num > ? order by board_num limit 1";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, board_num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Board board = new Board();
					board.setBoard_num(rs.getInt(1));
					board.setBoard_title(rs.getString(2));
					board.setBoard_content(rs.getString(3));
					board.setBoard_reply(rs.getString(4));
					board.setBoard_regdate(rs.getString(5));
					board.setBoard_views(rs.getInt(6)); 
					board.setBoard_pw(rs.getString(7));
					String str = rs.getString(8);
					char reply_yn = str.charAt(0);
					board.setBoard_reply_yn(reply_yn);
					board.setBoard_member_id(rs.getString(9));
					return board;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return null;
			
		}
		//이전 게시글 가져오기 - 사용안함
		public Board getBoardPrev(int board_num){
			String SQL = "select * from board where board_num < ? order by board_num desc limit 1";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, board_num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Board board = new Board();
					board.setBoard_num(rs.getInt(1));
					board.setBoard_title(rs.getString(2));
					board.setBoard_content(rs.getString(3));
					board.setBoard_reply(rs.getString(4));
					board.setBoard_regdate(rs.getString(5));
					board.setBoard_views(rs.getInt(6)); 
					board.setBoard_pw(rs.getString(7));
					String str = rs.getString(8);
					char reply_yn = str.charAt(0);
					board.setBoard_reply_yn(reply_yn);
					board.setBoard_member_id(rs.getString(9));
					return board;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return null;
			
		}
		
		//로그인된 아이디로 문의글 불러오기
		public ArrayList<Board> getMyInquiry(String member_id, int pageNumber){
			ArrayList<Board> list = new ArrayList<Board>(); //board클래스에서 나오는 인스턴스들을 보관할 수 있는 리스트 생성
			PreparedStatement pstmt =null;
			String SQL = null; 
			try {
				SQL = "select b.* from board b join member m on m.member_id=? and b.board_num < ? order by b.board_num desc limit 5 ";
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1,member_id);
					pstmt.setInt(2, getNextInquiry(member_id) - (pageNumber -1) *5);
					rs=pstmt.executeQuery();
				while(rs.next()) {
					Board board = new Board();
					board.setBoard_num(rs.getInt(1));
					board.setBoard_title(rs.getString(2));
					board.setBoard_content(rs.getString(3));
					board.setBoard_reply(rs.getString(4));
					board.setBoard_regdate(rs.getString(5));
					board.setBoard_views(rs.getInt(6)); 
					board.setBoard_pw(rs.getString(7));
					String str = rs.getString(8);
					char reply_yn = str.charAt(0);
					board.setBoard_reply_yn(reply_yn); 
					board.setBoard_member_id(rs.getString(9));
					list.add(board);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		//게시글 번호 
		public int getNextInquiry(String member_id) {
			//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구함
			String SQL ="select board_num from board where board_member_id =? order by board_num desc";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, member_id);
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
		
		
		//로그인된 아이디의 총 문의글 개수
		public int getMyInquiryTotalCount(String member_id) {
			String SQL = null; 
			PreparedStatement pstmt =null;
			int totalCount =0;
			try {
					SQL = "select count(board_num) from board where board_member_id=?";
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, member_id);
					rs = pstmt.executeQuery();
					
				if(rs.next()) {
					totalCount = rs.getInt(1);
					return totalCount;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
		
		
		
}
