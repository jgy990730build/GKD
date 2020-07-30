package src.com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.bson.Document;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;

import src.com.demo.MongoDBUtil;

public class UserDaoImpl implements UserDao {
	ResultSet rs = null;
	@Override
	public boolean find(String Account, String Password) {
		
		return false;
	}
	@Override
	     public User selectByName(String Account) {
	         // TODO Auto-generated method stub
		User user = new User();
	         
	         
	        	 MongoDBUtil util=new MongoDBUtil();
	        	  //获取集合
	     		MongoCollection<Document>collection=util.getConnection("GKD").getCollection("user");
	     	    //查找集合中的所有文档
	     	    FindIterable<Document> findIterable = collection.find();
	     	   MongoCursor<Document> cursor = findIterable.iterator();
	     	   Gson gson=new Gson();
	     	   while (cursor.hasNext()) {
	     		 Document document = cursor.next();
	        	 User u=gson.fromJson(document.toJson(), User.class);//转换格式
	        	 //放数据进入User中
				 user.setAccount(u.getAccount());
	             user.setPassword(u.getPassword());   
	            }
	         return user;
	     }
	
}

