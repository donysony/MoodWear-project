package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/MemberWithdrawal")
public class MemberWithdrawal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charsset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		
		
		//원시 boolean을 String.valueOf(boolean)을 사용해 문자열로 변환
		PrintWriter script = response.getWriter();
		MemberDAO memberDAO = new MemberDAO();
		boolean result = memberDAO.memberWithdrawal(member_id);
        	if(result == true) {
        		script.println("<script>");
        		script.println("alert('확인되었습니다')");
        		script.println("location.href='회원탈퇴완료.jsp'");
        		script.println("</script>");
        		
        	}else {
        		script.println("<script>");
        		script.println("alert('DB에 오류 발생')");
        		script.println("history.back()");
        		script.println("</script>");
        }
	}

}
