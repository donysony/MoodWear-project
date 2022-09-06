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
		
		//js에서 넘어온 결과값을 받음 넘어올때 타입은 String형이기 때문에 boolean형으로 변환
		boolean result_yn = Boolean.parseBoolean(request.getParameter("result"));
		String member_id = request.getParameter("member_id");
		System.out.println(result_yn);
		System.out.println(member_id);
		
		
		//원시 boolean을 String.valueOf(boolean)을 사용해 문자열로 변환
		PrintWriter script = response.getWriter();
		MemberDAO memberDAO = new MemberDAO();
		boolean result = memberDAO.memberWithdrawal(member_id);
        if(result_yn == true){
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
        }else{
        	script.println("<script>");
        	script.println("alert('취소되었습니다')");
            script.println("history.back()");
            script.println("</script>");
        }
	}

}
