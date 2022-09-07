package product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/product/productWriteServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
		ProductDAO pDAO = new ProductDAO();
		pDAO.product_write(request);
		// response.sendRedirect("product_modify.jsp");
	      MultipartRequest multi = new MultipartRequest(request, "C:/Users/지윤/git/repository/moodwear/src/main/webapp/fileupload", 1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	      response.setCharacterEncoding("utf-8");
	      
	      response.setContentType("text/html; charset=utf-8");
	      System.out.println(multi.getParameter("product_name"));
	      System.out.println(request.getParameter("product_brand"));
	      
	      String mt = multi.getParameter("product_name");
	      
			pDAO.product_modify(request);
	      
	      PrintWriter script = response.getWriter();
	      script.println("<script>");
	      script.println("alert('저장되었습니다')");
	      script.println("</script>");
	   }

	


/*		int product_num = 0;
		pDAO.product_modify(request);
		System.out.println(request.getParameter("product_brand"));*/


		}

	
	


