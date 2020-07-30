package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import src.com.demo.MongoDBUtil;
import src.com.bean.User;

public class RegisterServlet extends HttpServlet {
	
	public RegisterServlet(){
		super();
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        int i =0;
		String name = request.getParameter("useraccount");
		String password = request.getParameter("password");
		//获取数据库连接对象
		MongoDBUtil util=new MongoDBUtil();
		//获取集合
		MongoCollection<Document> collection = util.getConnection("GKD").getCollection("user");
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  String time = sdf.format(new Date());
		  Bson filter = Filters.eq("account",name);
	 	   FindIterable<Document> findIterable = collection.find(filter);
	 	   MongoCursor<Document> cursor = findIterable.iterator();
			Calendar cal=Calendar.getInstance();
			int y=cal.get(Calendar.YEAR);      
			int m=cal.get(Calendar.MONTH);      
			int d=cal.get(Calendar.DATE);      
			int h=cal.get(Calendar.HOUR_OF_DAY);      
			int mi=cal.get(Calendar.MINUTE);      
			int s=cal.get(Calendar.SECOND);
			String  str_time ="用户"+y+""+m+""+d+""+h+""+mi+""+s;
	 	   if(!cursor.hasNext()) {
	 		  out.print(1);
			  out.close();
	 		  Document document = new Document("account",name).append("password", password).append("regtime", time);
				collection.insertOne(document);
				
				MongoCollection<Document> collection1 = util.getConnection("GKD").getCollection("userinfo");
				  Document document1 = new Document("useraccount",name)
						  							.append("username", str_time)
						  							.append("email", "")
						  							.append("phone", "")
						  							.append("sex", "1")
						  							.append("imagepath", "")
						  							.append("birthdate", "")
						  							.append("mood", "");
					collection1.insertOne(document1);
	 	   }
	 		  out.print(i);
			  out.close();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.getWriter().append("Served at:").append(request.getContextPath());
	}
}
