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
import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class UserDao {
	public Userinfo UserDao(String useraccount) {
		Userinfo userinfo = new Userinfo();
		//创建list集合
		List<CollectionBean> list = new ArrayList<CollectionBean>();
		//获取数据库连接对象
		MongoDBUtil mongoDBUtil = new MongoDBUtil();
		//创建commentBean对象
		CollectionBean collectionBean = new CollectionBean();
		//创建comment对象
		Collection_ collection_ = new Collection_();
		//获取集合
		MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("userinfo");
		//制定查询过滤器
		Bson filter = Filters.eq("useraccount", useraccount);
		//查找集合中的所有文档
		FindIterable<Document> findIterable = collection.find(filter);
		//查找结果赋值给cursor
		MongoCursor<Document> cursor = findIterable.iterator();
		//新建Gson对象
		Gson gson = new Gson();
		while(cursor.hasNext()) {
	    	Document document = cursor.next();
	    	//将document对象转化为Json格式并解析为videosBean对象
	    	userinfo=gson.fromJson(document.toJson(), Userinfo.class);
		}
		return userinfo;
	}
}
