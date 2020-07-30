package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.sun.xml.internal.ws.util.StringUtils;

import src.com.bean.User;
import src.com.bean.UserService;
import src.com.bean.UserServiceImpl;
import src.com.dao.LoginDao;
import sun.security.util.Length;

/**
 * Servlet implementation class UserServlet
 */
public class LoginServlet extends HttpServlet {
	 UserService userService = new UserServiceImpl();
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        //获得参数
        String Account = request.getParameter("useraccount");
        String Password = request.getParameter("password");
        //根据k值跳转
        LoginDao loginDao =new LoginDao();
        User user = loginDao.LoginDao(Account);
        if(user!=null) {
        	if(Password.equals(user.getPassword())) {
            	HttpSession session = request.getSession();
            	session.setAttribute("useraccount", Account);
            	out.print(1);
        	}else {
        		out.print(0);
        		out.close();
        	}
        }else {
    		out.print(0);
    		out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }


}
