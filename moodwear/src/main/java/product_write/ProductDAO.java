package product_write;
 
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import product_write.Product;
 
 
public class ProductDAO {
    //
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    private static ProductDAO instance = null;
    private static final String SAVEFOLDER = "C:/Users/지윤/git/repository/moodwear/src/main/webapp/fileupload";
	private static final String ENCTYPE = "UTF-8";
	private static final int MAXSIZE = 5*1024*1024;
    
    public ProductDAO(){
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


/*
 * public Product getProduct() { PreparedStatement pstmt = null; ResultSet rs =
 * null; String sql = null; Product bean = new Product(); try { sql =
 * "select * from product"; rs = pstmt.executeQuery(); if(rs.next()) {
 * bean.setProduct_num(rs.getInt("product_num"));
 * bean.setProduct_name(rs.getString("product_name"));
 * bean.setProduct_brand(rs.getString("product_brand"));
 * bean.setProduct_price(rs.getString("product_price"));
 * bean.setProduct_volume(rs.getInt("product_volume"));
 * bean.setProduct_img(rs.getString("product_img"));
 * bean.setProduct_info(rs.getString("product_info"));
 * bean.setProduct_tag1(rs.getString("product_tag1"));
 * bean.setProduct_tag2(rs.getString("product_tag2"));
 * bean.setProduct_tag3(rs.getString("product_tag3"));
 * bean.setProduct_tagImg1(rs.getString("product_tagImg1"));
 * bean.setProduct_tagImg2(rs.getString("product_tagImg2")); } } catch(Exception
 * e) { e.printStackTrace(); } return bean; }
 */

/*
public Vector<Product> getProductList() {
	// 메소드이름 본인 마음대로
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			Vector<Product> vlist = new Vector<Product>();
			try {
				sql = "select * from product";
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Product bean = new Product();
					bean.setProduct_num(rs.getInt("product_num"));
					bean.setProduct_name(rs.getString("product_name"));
					bean.setProduct_brand(rs.getString("product_brand"));
					bean.setProduct_price(rs.getString("product_price"));
					bean.setProduct_volume(rs.getInt("product_volume"));
					bean.setProduct_img(rs.getString("product_img"));
					bean.setProduct_info(rs.getString("product_info"));
					bean.setProduct_tag1(rs.getString("product_tag1"));
					bean.setProduct_tag2(rs.getString("product_tag2"));
					bean.setProduct_tag3(rs.getString("product_tag3"));
					bean.setProduct_tagImg1(rs.getString("product_tagImg1"));
					bean.setProduct_tagImg2(rs.getString("product_tagImg2"));
				
					vlist.add(bean);
				}		
			} catch(Exception e) {
				e.printStackTrace();

			}
			return vlist;
}
 */

public ArrayList<Product> getProductList(){
	Statement stmt = null;
	ResultSet rs = null;
	
	ArrayList<Product> vlist = new ArrayList<Product>();
	try {
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from product");
		while(rs.next()) {
			Product bean = new Product();
			bean.setProduct_num(rs.getInt("product_num"));
			bean.setProduct_name(rs.getString("product_name"));
			bean.setProduct_brand(rs.getString("product_brand"));
			bean.setProduct_price(rs.getString("product_price"));
			bean.setProduct_volume(rs.getInt("product_volume"));
			bean.setProduct_img(rs.getString("product_img"));
			bean.setProduct_info(rs.getString("product_info"));
			bean.setProduct_tag1(rs.getString("product_tag1"));
			bean.setProduct_tag2(rs.getString("product_tag2"));
			bean.setProduct_tag3(rs.getString("product_tag3"));
			bean.setProduct_tagImg1(rs.getString("product_tagImg1"));
			bean.setProduct_tagImg2(rs.getString("product_tagImg2"));
			vlist.add(bean);
		}
	} catch(Exception e) {
		System.out.println("Exception :"+e);
	} finally {
		if(rs != null)
			try{rs.close();} catch(SQLException e){}
		if(stmt != null)
			try{stmt.close();} catch(SQLException e){}
		if(conn != null)
			try{conn.close();} catch(SQLException e){}
	
		}
	return vlist;
	
	}
	
	}
