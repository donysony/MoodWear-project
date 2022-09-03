package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddressServlet")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		//utf-8로 보내고, 브라우저가 utf-8로 읽을 수 있도록
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");	
		request.setCharacterEncoding("utf-8");
		
		//선택된 주소번호를 받음
		String num = request.getParameter("address_num");
		//,를 기준으로 문자열 잘라 배열생성
		String[] address_num = num.split(",");
		
		
		MemberDAO memberDAO = new MemberDAO();
		//for문으로 배열로 받은 주소번호를 삭제메서드의 인자로 보냄
		int result = memberDAO.pickDelete(address_num);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('선택하신 주소록이 "+result+"개 삭제 되었습니다')");
		script.println("location.href='배송주소록관리.jsp'");
		script.println("</script>");
		
	}

}
