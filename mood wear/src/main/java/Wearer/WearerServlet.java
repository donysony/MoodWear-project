package Wearer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WearerServlet")
public class WearerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");

		
		WearerDAO pDAO = new WearerDAO(); 
		pDAO.product_write(request);
		 
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('저장되었습니다')");
		script.println("</script>");
		
		response.sendRedirect("Wearer.jsp");
	}
}
