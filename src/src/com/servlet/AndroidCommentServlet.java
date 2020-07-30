package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import src.com.bean.CommentBean;
import src.com.bean.VideosBean;
import src.com.dao.CommentDao;
import src.com.dao.InsertCommentDao;


public class AndroidCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CommentBean CommentBean; 
    VideosBean videosBean;
    public AndroidCommentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

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
					if (!content.equals(null)) {
						InsertCommentDao insertCommentDao = new InsertCommentDao();
						insertCommentDao.InsertCollectionDao(videoid, useraccount, content);
					}
					CommentDao commentDao = new CommentDao();
					List<CommentBean> list = commentDao.CommentDao(videosBean.getVideoid().toString());
					System.out.println(list + "===============================================");
					out.print(list);
					out.flush();
					out.close();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
			}

}
