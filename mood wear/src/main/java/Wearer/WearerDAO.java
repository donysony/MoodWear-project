package Wearer;
 
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

 
public class WearerDAO {
    //
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    private static WearerDAO instance = null;
    private static final String SAVEFOLDER = "C:/Users/user/git/MoodWear-project/mood wear/src/main/webapp/fileupload";
	private static final String ENCTYPE = "UTF-8";
	private static final int MAXSIZE = 5*1024*1024;
    
    public WearerDAO(){
    	  try { 
    		   String dbURL = "jdbc:mysql://localhost:3306/moodwear?serverTimezone=UTC";
    		   String dbID = "root";
    		   String dbPassword = "MY!jazz92";
    		   Class.forName("com.mysql.cj.jdbc.Driver");
    		   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

    		  } catch (Exception e) {
    		   e.printStackTrace(); 
    		  }
    	  
    	  
    }
    public static WearerDAO getInstance() {
        if (instance == null) {
            synchronized (WearerDAO.class) {
                if (instance == null) {
                    instance = new WearerDAO();
                }
            }
        }
        return instance;
    }

    
    // 상품등록
public int product_write(HttpServletRequest req) {
    String SQL = "INSERT INTO wearer VALUES (?, ?, ?, ?)";
    MultipartRequest multi = null;
	String wearer_img = null;
	
    try { 
    	File file = new File(SAVEFOLDER);
		if(!file.exists()) {
			file.mkdirs();
		}	
		multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE,ENCTYPE,
						new DefaultFileRenamePolicy());
		if(multi.getFilesystemName("wearer_img") != null) {
			wearer_img = multi.getFilesystemName("wearer_img");
		}
        pstmt = conn.prepareStatement(SQL);
        pstmt.setString(1, multi.getParameter("wearer_Btitle"));
        pstmt.setString(2, multi.getParameter("wearer_Stitle"));
        pstmt.setString(3, multi.getParameter("wearer_content"));
		pstmt.setString(4, wearer_img);
		
        return pstmt.executeUpdate();
    } catch(Exception e) {
        e.printStackTrace();
    }
    return -1; // 데이터베이스 오류
}



// 웨어러 추천 전체리스트 보여주기
/*
 * public Wearer getWearer(String btitle){ Statement stmt = null; ResultSet rs =
 * null;
 * 
 * Wearer bean = new Wearer();
 * 
 * try {
 * 
 * stmt = conn.createStatement(); rs =
 * stmt.executeQuery("select * from wearer where wearer_Btitle=?");
 * 
 * if(rs.next()) { 
 * bean.setWearer_Btitle(rs.getString("Wearer_Btitle"));
 * bean.setWearer_Stitle(rs.getString("Wearer_Stitle"));
 * bean.setWearer_content(rs.getString("Wearer_content"));
 * bean.setWearer_img(rs.getString("Wearer_img"));
 * 
 * } } catch(Exception e) { System.out.println("Exception :"+ e); }
 * 
 * return bean;
 * 
 * } 
 */




	public Wearer getShow(String Btitle) {
		String sql ="select * from wearer where wearer_Btitle=?";
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,Btitle);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			Wearer bean = new Wearer();
			 bean.setWearer_Btitle(rs.getString("Wearer_Btitle"));
			 bean.setWearer_Stitle(rs.getString("Wearer_Stitle"));
			 bean.setWearer_content(rs.getString("Wearer_content"));
			 bean.setWearer_img(rs.getString("Wearer_img"));
			return bean;
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}

/*
 * // 전체 상품 중 하나만 가져오기(웨어러추천 활용) public Product get_Product(int product_num){
 * //Statement stmt = null; ResultSet rs = null; PreparedStatement pstmt;
 * //Product get_Product = new Product(); String sql="select * from wearer"; try
 * { // stmt = conn.createStatement(); pstmt = conn.prepareStatement(sql);
 * pstmt.setInt(1, ); rs = pstmt.executeQuery();
 * 
 * if(rs.next()) { Wearer upBean = new Wearer();
 * upBean.setProduct_num(rs.getInt("product_num"));
 * upBean.setProduct_name(rs.getString("product_name"));
 * upBean.setProduct_brand(rs.getString("product_brand"));
 * upBean.setProduct_price(rs.getString("product_price")); return upBean;
 * 
 * } } catch(Exception e) { e.printStackTrace();
 * //System.out.println("Exception :"+e) } return null; } }
 */