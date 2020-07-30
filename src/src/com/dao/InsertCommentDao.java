package src.com.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.bson.Document;

import com.mongodb.client.MongoCollection;

import src.com.demo.MongoDBUtil;

public class InsertCommentDao {
	public boolean InsertCollectionDao(String videoid,String useraccount,String content) {
		boolean b = true;
		//获取当前时间
		 Date date = new Date();
		 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		 String createtime = dateFormat.format(date);
		try {
			//获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("comment");
			 Document document = new Document("videoid",videoid)
	                 .append("useraccount", useraccount)
	                 .append("content", content)
	                 .append("createtime", createtime);
			 collection.insertOne(document);
			 }catch(Exception e) {
				 b = false;
			 }
		return b;
	}
}
