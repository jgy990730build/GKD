package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import src.com.dao.InsertCommentDao;
import src.com.dao.VideosDao;

/**
 * Servlet implementation class InsertCommentServlet
 */
public class InsertCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String useraccount= session.getAttribute("useraccount").toString();
		PrintWriter out = response.getWriter();
		if(useraccount==null) {
			useraccount = request.getParameter("useraccount");
		}
		String content = request.getParameter("content");
		String videoid = request.getParameter("videoid");
		try {
			out.print(1);
			out.close();
			InsertCommentDao insertCommentDao = new InsertCommentDao();
			insertCommentDao.InsertCollectionDao(videoid, useraccount, content);
	        String reqUrl = request.getHeader("Referer");
		} catch (Exception e) {
			// TODO: handle exception
			out.print(0);
			out.close();
		}
		
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


}
