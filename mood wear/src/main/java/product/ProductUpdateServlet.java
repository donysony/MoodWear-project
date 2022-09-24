package product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/product_write/productUpdate")
public class ProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		ProductDAO bMgr = new ProductDAO();
		Product bean = (Product)session.getAttribute("bean");
		String nowPage = request.getParameter("nowPage");
		
		Product upBean = new Product();
		upBean.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		upBean.setProduct_name(request.getParameter("product_name"));
		upBean.setProduct_brand(request.getParameter("product_brand"));
		upBean.setProduct_price(request.getParameter("product_price"));
		upBean.setProduct_volume(Integer.parseInt(request.getParameter("product_volume")));
		upBean.setProduct_img(request.getParameter("product_img"));
		upBean.setProduct_info(request.getParameter("product_info"));
		upBean.setProduct_tag1(request.getParameter("product_tag1"));
		upBean.setProduct_tag2(request.getParameter("product_tag2"));
		upBean.setProduct_tag3(request.getParameter("product_tag3"));
		upBean.setProduct_tagImg1(request.getParameter("product_tagImg1"));
		upBean.setProduct_tagImg2(request.getParameter("product_tagImg2"));

	
	}

}
