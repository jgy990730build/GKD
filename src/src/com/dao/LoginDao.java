package src.com.dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import src.com.bean.CollectionBean;
import src.com.bean.Collection_;
import src.com.bean.User;
import src.com.bean.Userinfo;
import src.com.demo.MongoDBUtil;

public class LoginDao {
	public User LoginDao(String useraccount) {
		User user = new User();
		//��ȡ���ݿ����Ӷ���
		MongoDBUtil mongoDBUtil = new MongoDBUtil();
		//��ȡ����
		MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("user");
		//�ƶ���ѯ������
		Bson filter = Filters.eq("account", useraccount);
		//���Ҽ����е������ĵ�
		FindIterable<Document> findIterable = collection.find(filter);
		//���ҽ����ֵ��cursor
		MongoCursor<Document> cursor = findIterable.iterator();
		//�½�Gson����
		Gson gson = new Gson();
		while(cursor.hasNext()) {
	    	Document document = cursor.next();
	    	//��document����ת��ΪJson��ʽ������ΪvideosBean����
	    	user=gson.fromJson(document.toJson(), User.class);
		}
		return user;
	}
}
