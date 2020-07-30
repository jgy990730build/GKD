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

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import src.com.demo.MongoDBUtil;
import src.com.bean.User;
import src.com.bean.Userinfo;

/**
 * Servlet implementation class userIndexServlet
 */
public class userIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userIndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		//获取表单中的值
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
		String imagepath = request.getParameter("imagepath");
		String birth = request.getParameter("birth");
		String sign = request.getParameter("Message");
		HttpSession session = request.getSession();
		//获取数据库连接对象
		MongoDBUtil util=new MongoDBUtil();
		//获取集合
		MongoCollection<Document> collection = util.getConnection("GKD").getCollection("userinfo");
	    String useraccount = session.getAttribute("useraccount").toString();
		Bson filter = Filters.eq("useraccount",useraccount);
	    //指定修改的更新文档
		Document document = new Document("$set", new Document("username", username).append("email", email)
				.append("phone", phone).append("sex", sex).append("imagepath", imagepath).append("birthdate", birth)
				.append("mood", sign));
		//修改多个文档
	    collection.updateMany(filter, document);
	    session.setAttribute("success", "1");
   	 	request.getRequestDispatcher("contact.jsp").forward(request, response);
	    
	}

}
