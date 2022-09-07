package Wearer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/WearerServlet")
public class WearerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MultipartRequest multi = new MultipartRequest(request, "C:/Users/user/git/MoodWear-project/mood wear/src/main/webapp/fileupload/", 1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println(multi.getParameter("wearer_Btitle"));
		System.out.println(request.getParameter("wearer_Btitle"));
		
		String mt = multi.getParameter("wearer_Btitle");
		
		WearerDAO pDAO = new WearerDAO();
		pDAO.product_write(request);
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('저장되었습니다')");
		script.println("location.href='Wearer.jsp?wearer_Btitle="+mt+"'");
		script.println("</script>");
	}

}
