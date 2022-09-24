package Intro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.oreilly.servlet.MultipartRequest;


public class IntroDAO {

	    private Connection conn = null;      // DB에 접근하는 객체
	    private PreparedStatement pstmt;    
	    private ResultSet rs;                // DB data를 담을 수 있는 객체
	    private static IntroDAO instance = null;
	    private static final String SAVEFOLDER = "C:/Users/user/git/MoodWear-project/mood wear/src/main/webapp/fileupload";
		private static final String ENCTYPE = "UTF-8";
		private static final int MAXSIZE = 5*1024*1024;
	    
	    public IntroDAO(){
	    	
	    	try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/moodwear?serverTimezone=UTC", "root", "1234");
				
	    		  } catch (Exception e) {
	    		   e.printStackTrace(); 
	    		  }
	    	  
	    	  
	    }
	    public static IntroDAO getInstance() {
	        if (instance == null) {
	            synchronized (IntroDAO.class) {
	                if (instance == null) {
	                    instance = new IntroDAO();
	                }
	            }
	        }
	        return instance;
	    }

	    
	    // 내용 등록
	public int content_write(MultipartRequest multi) {
	    String SQL = "INSERT INTO intro VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String intro_bigimg = null;
		String intro_smallimg = null;
		String intro_oneimg = null;
		String intro_twoimg = null;
		String intro_threeimg = null;
		String intro_fourimg = null;
		int result = -1;
		
	    try { 
			if(multi.getFilesystemName("intro_bigimg") != null) {
				intro_bigimg = multi.getFilesystemName("intro_bigimg");				
			}
			
			if(multi.getFilesystemName("intro_smallimg") != null) {
				intro_smallimg = multi.getFilesystemName("intro_smallimg");
			}
			
			if(multi.getFilesystemName("intro_oneimg") != null) {
				intro_oneimg = multi.getFilesystemName("intro_oneimg");
			}
			
			if(multi.getFilesystemName("intro_twoimg") != null) {
				intro_twoimg = multi.getFilesystemName("intro_twoimg");
			}
			
			if(multi.getFilesystemName("intro_threeimg") != null) {
				intro_threeimg = multi.getFilesystemName("intro_threeimg");
			}
			
			if(multi.getFilesystemName("intro_fourimg") != null) {
				intro_fourimg = multi.getFilesystemName("intro_fourimg");
			}
			
	        pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, intro_bigimg);
	        pstmt.setString(2, multi.getParameter("intro_introTitle"));
	        pstmt.setString(3, multi.getParameter("intro_introContent"));
	        pstmt.setString(4, intro_smallimg);
	        pstmt.setString(5, intro_oneimg);
	        pstmt.setString(6, multi.getParameter("intro_oneTitle"));
	        pstmt.setString(7, multi.getParameter("intro_oneContent"));
	        pstmt.setString(8, intro_twoimg);
	        pstmt.setString(9, multi.getParameter("intro_twoTitle"));
	        pstmt.setString(10, multi.getParameter("intro_twoContent"));
	        pstmt.setString(11, intro_threeimg);
	        pstmt.setString(12, multi.getParameter("intro_threeTitle"));
	        pstmt.setString(13, multi.getParameter("intro_threeContent"));
	        pstmt.setString(14, intro_fourimg);
	        pstmt.setString(15, multi.getParameter("intro_fourTitle"));
	        pstmt.setString(16, multi.getParameter("intro_fourContent"));
			
			
	        result = pstmt.executeUpdate();
	        
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return result; // 데이터베이스 오류
	}



		public Intro getShow() {
			String sql ="select * from intro";
			Intro bean = new Intro();
			try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				 bean.setIntro_bigimg(rs.getString("Intro_bigimg"));
				 bean.setIntro_introTitle(rs.getString("Intro_introTitle"));
				 bean.setIntro_introContent(rs.getString("Intro_introContent"));
				 bean.setIntro_smallimg(rs.getString("Intro_smallimg"));
				 bean.setIntro_oneimg(rs.getString("Intro_oneimg"));
				 bean.setIntro_oneTitle(rs.getString("Intro_oneTitle"));
				 bean.setIntro_oneContent(rs.getString("Intro_oneContent"));
				 bean.setIntro_twoimg(rs.getString("Intro_twoimg"));
				 bean.setIntro_twoTitle(rs.getString("Intro_twoTitle"));
				 bean.setIntro_twoContent(rs.getString("Intro_twoContent"));		
				 bean.setIntro_threeimg(rs.getString("Intro_threeimg"));
				 bean.setIntro_threeTitle(rs.getString("Intro_threeTitle"));
				 bean.setIntro_threeContent(rs.getString("Intro_threeContent"));
				 bean.setIntro_fourimg(rs.getString("Intro_fourimg"));
				 bean.setIntro_fourTitle(rs.getString("Intro_fourTitle"));
				 bean.setIntro_fourContent(rs.getString("Intro_fourContent"));
				 
			}
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			return bean;
		}
	}