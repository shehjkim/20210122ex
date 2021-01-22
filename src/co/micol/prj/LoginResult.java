package co.micol.prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginResult
 */
@WebServlet("/LoginResult")
public class LoginResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginResult() {
        super();
        // TODO Auto-generated constructor stub
    }

    //로그인했을때 넘어오는 데이터
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id=request.getParameter("id");
		 String pw=request.getParameter("pw");		//login.jsp(홈)에서 넘어온값들 받는것
		 String message = null; 					//성공했는지 여부 비교
	
		 if(id.equals("hong") && pw.equals("1234")) {
			 message = "님 환영합니다.";
		 }else {
			 message ="님 입력된 정보가 잘못되었습니다. ";
		 }												//여기까진 jsp랑 같음
	
		 request.setAttribute("msg", message);			//(사용할변수, 사용할값)--message를 jsp페이지에서 msg로 쓰겠단 뜻
		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/member/loginResult.jsp");
		 																							//dispatcher라는 이름으로 RequestDispatcher을 사용 . =  돌아갈 페이지 "jsp/member/loginResult.jsp", RequestDispatcher랑 forward는 짝
		 dispatcher.forward(request, response);													//해당 페이지도 돌아갈때 내꺼도 가져가라?	 
//		 response.sendRedirect("jsp/member/loginResult.jsp"); 									//loginResult.jsp 만들어주기
		 
	}			//자바로 다 처리하고 나서 보여줄 사이트로 넘겨줌 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response); //post로 했더니 do get으로 가라함 그래서 doget에 입력
	}

}
