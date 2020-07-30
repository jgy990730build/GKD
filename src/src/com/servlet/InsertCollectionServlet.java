package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.dao.CollectionReadyDao;
import src.com.dao.InsertCollectionDao;

/**
 * Servlet implementation class InsertCollectionServlet
 */
public class InsertCollectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCollectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String useraccount = session.getAttribute("useraccount").toString();
		String videoid = request.getParameter("videoid");
		CollectionReadyDao collectionReadyDao = new CollectionReadyDao();
		boolean b = false;
		b = collectionReadyDao.CollectionReadyDao(useraccount,videoid);
		if(b) {
			InsertCollectionDao insertCollectionDao = new InsertCollectionDao();
			try {
				insertCollectionDao.InsertCollectionDao(videoid, useraccount);
				out.print(1);
			}catch (Exception e) {
				// TODO: handle exception
				out.print(0);
			}
		}else {
			out.print(0);
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
