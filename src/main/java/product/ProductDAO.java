package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public ProductDAO() {
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
	
	//상품번호에 해당하는 상품을 가져와 보여주기
		public Product getProductList(int product_num) {
			String sql ="select * from product where product_num=?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, product_num);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product();
					product.setProduct_num(rs.getInt(1));
					product.setProduct_name(rs.getString(2));
					product.setProduct_brand(rs.getString(3));
					product.setProduct_price(rs.getString(4));
					product.setProduct_volume(rs.getInt(5));
					product.setProduct_img(rs.getString(6));
					product.setProduct_info(rs.getString(7));
					product.setProduct_tag1(rs.getString(8));
					product.setProduct_tag2(rs.getString(9));
					product.setProduct_tag3(rs.getString(10));
					product.setProduct_tagImg1(rs.getString(11));
					product.setProduct_tagImg2(rs.getString(12));
					return product;
				}
			}catch(Exception e) {
				e.printStackTrace();
			
			}return null;
		}
	
}
