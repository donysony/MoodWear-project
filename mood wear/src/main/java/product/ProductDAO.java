package product;
 
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import product.Product;
import product.ProductDAO;   
 
 
public class ProductDAO {
    //
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    private static ProductDAO instance = null;
    private static final String SAVEFOLDER = "C:\\Users\\user\\git\\MoodWear-project\\mood wear\\src\\main\\webapp\\fileupload";
	private static final String ENCTYPE = "UTF-8";
	private static final int MAXSIZE = 5*1024*1024;
    
    public ProductDAO(){
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
    public static ProductDAO getInstance() {
        if (instance == null) {
            synchronized (ProductDAO.class) {
                if (instance == null) {
                    instance = new ProductDAO();
                }
            }
        }
        return instance;
    }
 // 시퀀스 추가
	public int product_write(HttpServletRequest req) {
    String SQL = "INSERT INTO product VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    MultipartRequest multi = null;
	String product_img = null;
	String product_tagImg1 = null;
	String product_tagImg2 = null;
	
    try { 
    	File file = new File(SAVEFOLDER);
		if(!file.exists()) {
			file.mkdirs();
		}	
		multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE,ENCTYPE,
				new DefaultFileRenamePolicy());
		if(multi.getFilesystemName("product_img") != null) {
			product_img = multi.getFilesystemName("product_img");
		}
		if(multi.getFilesystemName("product_tagImg1") != null) {
			product_tagImg1 = multi.getFilesystemName("product_tagImg1");
		}
		if(multi.getFilesystemName("product_tagImg2") != null) {
			product_tagImg2 = multi.getFilesystemName("product_tagImg2");
		}
        pstmt = conn.prepareStatement(SQL);
        pstmt.setString(1, multi.getParameter("product_num"));
        pstmt.setString(2, multi.getParameter("product_name"));
        pstmt.setString(3, multi.getParameter("product_brand"));
        pstmt.setString(4, multi.getParameter("product_price"));
        pstmt.setString(5, multi.getParameter("product_volume"));
		pstmt.setString(6, product_img);
        pstmt.setString(7, multi.getParameter("product_info"));
        pstmt.setString(8, multi.getParameter("product_tag1"));
        pstmt.setString(9, multi.getParameter("product_tag2"));
        pstmt.setString(10, multi.getParameter("product_tag3"));
		pstmt.setString(11, product_tagImg1);
		pstmt.setString(12, product_tagImg2);
        return pstmt.executeUpdate();
    } catch(Exception e) {
        e.printStackTrace();
    }
    return -1; // 데이터베이스 오류
}

public int product_write2(String product_name) {
	  String SQL = "SELECT product_name FROM product";
	  try {
	   pstmt = conn.prepareStatement(SQL);
	   pstmt.setString(1, product_name);
	   rs = pstmt.executeQuery();
	   if(rs.next()) {
	    if(rs.getString(1).equals(product_name))
	     return 0;  // 이미 존재하는 상품입니다
	    else
	     return 1;  // 비밀번호 불일치
	   }
	   
	  } catch(Exception e) {
	   e.printStackTrace();
	  }
	  return -2; // 데이터 베이스 오류

	 }
}
