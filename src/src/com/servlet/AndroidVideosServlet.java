package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.dao.VideosDao;
import src.com.demo.MongoDBUtil;


public class AndroidVideosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AndroidVideosServlet() {}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String vid=request.getParameter("vid");
		VideosDao videosDao = new VideosDao();
		List<VideosBean> vBean=videosDao.SeachDao(vid);
		Gson gson=new Gson();
		 String jString=gson.toJson(vBean);
		 out.print(jString);   //一般返回json数据，这里从简
         out.flush();
         out.close();
	}

}

