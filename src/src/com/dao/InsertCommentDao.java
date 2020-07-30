package src.com.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.bson.Document;

import com.mongodb.client.MongoCollection;

import src.com.demo.MongoDBUtil;

public class InsertCommentDao {
	public boolean InsertCollectionDao(String videoid,String useraccount,String content) {
		boolean b = true;
		//��ȡ��ǰʱ��
		 Date date = new Date();
		 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		 String createtime = dateFormat.format(date);
		try {
			//��ȡ���ݿ����Ӷ���
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //��ȡ����
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
