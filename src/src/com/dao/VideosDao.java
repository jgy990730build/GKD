package src.com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class VideosDao {
	
	 //该方法将所有视频存放在list集合中并返回该集合 
	 public List<VideosBean> VideosBean(){
		 //创建视频集合
		 List<VideosBean> list = new ArrayList<VideosBean>();
		 //获取数据库连接对象
		 MongoDBUtil mongoDBUtil = new MongoDBUtil();
		 //创建视频对象
		 VideosBean videosBean = new VideosBean();
		 //获取集合
		 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		 //查找集合中的所有文档
		 FindIterable<Document> findIterable = collection.find();
		 //查找结果赋值给cursor
		 MongoCursor<Document> cursor = findIterable.iterator();
		 //新建Gson对象
		 Gson gson = new Gson();
		 //定义计数器i
		 int i = 0;
		 //循环向list集合插入VideosBean对象
		 while(cursor.hasNext()){
			//将集合元素转换成document对象
	    	Document document = cursor.next();
	    	//将document对象转化为Json格式并解析为videosBean对象
	    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);
	    	//将videosBean对象添加到集合中
	    	list.add(videosBean);
	    	if(i==7) {
	    		break;
	    	}
	    	i++;
		 }
		 return list;
	 }
	//该方法将所有视频存放在list集合中并返回该集合 
		 public List<VideosBean> videosBean(){
			 //创建视频集合
			 List<VideosBean> list = new ArrayList<VideosBean>();
			 //获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //创建视频对象
			 VideosBean videosBean = new VideosBean();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
			 //查找集合中的所有文档
			 FindIterable<Document> findIterable = collection.find();
			 //查找结果赋值给cursor
			 MongoCursor<Document> cursor = findIterable.iterator();
			 //新建Gson对象
			 Gson gson = new Gson();
			 //定义计数器i
			 //循环向list集合插入VideosBean对象
			 while(cursor.hasNext()){
				//将集合元素转换成document对象
		    	Document document = cursor.next();
		    	//将document对象转化为Json格式并解析为videosBean对象
		    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);
		    	//将videosBean对象添加到集合中
		    	list.add(videosBean);
			 }
			 return list;
		 }
	 //该方法将对应该种类的视频存放在list集合中并返回该集合 
	 public List<VideosBean> VideosBean(String type){
		 //创建视频集合
		 List<VideosBean> list = new ArrayList<VideosBean>();
		 //获取数据库连接对象
		 MongoDBUtil mongoDBUtil = new MongoDBUtil();
		 //创建视频对象
		 VideosBean videosBean = new VideosBean();
		 //获取集合
		 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		 //制定查询过滤器
		 Bson filter = Filters.eq("type", type);
		 //查找集合中的所有文档
		 FindIterable<Document> findIterable = collection.find(filter);
		 //查找结果赋值给cursor
		 MongoCursor<Document> cursor = findIterable.iterator();
		 //新建Gson对象
		 Gson gson = new Gson();
		 //循环向list集合插入VideosBean对象
		 while(cursor.hasNext()){
			//将集合元素转换成document对象
	    	Document document = cursor.next();
	    	//将document对象转化为Json格式并解析为videosBean对象
	    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);
	    	//将videosBean对象添加到集合中
	    	list.add(videosBean);
	    	
		 }
		 return list;
	 }
	 
	//该方法将对应用户上传的视频存放在list集合中并返回该集合 
		 public List<VideosBean> videosBean(String useraccount){
			 //创建视频集合
			 List<VideosBean> list = new ArrayList<VideosBean>();
			 //获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //创建视频对象
			 VideosBean videosBean = new VideosBean();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
			 //制定查询过滤器
			 Bson filter = Filters.eq("useraccount", useraccount);
			 //查找集合中的所有文档
			 FindIterable<Document> findIterable = collection.find(filter);
			 //查找结果赋值给cursor
			 MongoCursor<Document> cursor = findIterable.iterator();
			 //新建Gson对象
			 Gson gson = new Gson();
			 //循环向list集合插入VideosBean对象
			 while(cursor.hasNext()){
				//将集合元素转换成document对象
		    	Document document = cursor.next();
		    	//将document对象转化为Json格式并解析为videosBean对象
		    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);
		    	//将videosBean对象添加到集合中
		    	list.add(videosBean);
		    	
			 }
			 return list;
		 }
		 
		//该方法将对应用户点开的视频找到视频对象
		 public VideosBean Onevideo(String videoid){
			 //获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //创建视频对象
			 VideosBean videosBean = new VideosBean();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
			 //制定查询过滤器
			 Bson filter = Filters.eq("videoid", videoid);
			 //查找集合中的所有文档
			 FindIterable<Document> findIterable = collection.find(filter);
			 //查找结果赋值给cursor
			 MongoCursor<Document> cursor = findIterable.iterator();
			 //新建Gson对象
			 Gson gson = new Gson();
			 //循环向list集合插入VideosBean对象
			 while(cursor.hasNext()){
				//将集合元素转换成document对象
		    	Document document = cursor.next();
		    	//将document对象转化为Json格式并解析为videosBean对象
		    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);		    	
			 }
			 return videosBean;
		 }
		 //该方法将对应用户点开的视频找到视频对象
		   public VideosBean OnevideobyName(String name){
		    //获取数据库连接对象
		    MongoDBUtil mongoDBUtil = new MongoDBUtil();
		    //创建视频对象
		    VideosBean videosBean = new VideosBean();
		    //获取集合
		    MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		    //制定查询过滤器
		    Bson filter = Filters.eq("name", name);
		    //查找集合中的所有文档
		    FindIterable<Document> findIterable = collection.find(filter);
		    //查找结果赋值给cursor
		    MongoCursor<Document> cursor = findIterable.iterator();
		    //新建Gson对象
		    Gson gson = new Gson();
		    //循环向list集合插入VideosBean对象
		    while(cursor.hasNext()){
		    //将集合元素转换成document对象
		       Document document = cursor.next();
		       //将document对象转化为Json格式并解析为videosBean对象
		       videosBean=gson.fromJson(document.toJson(), VideosBean.class);       
		    }
		    return videosBean;
		   }
		 
		 //该方法将对应该种类的视频存放在list集合中并返回该集合 
		 public List<VideosBean> SeachDao(String seach){
			 //创建视频集合
			 List<VideosBean> list = new ArrayList<VideosBean>();
			 //获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //创建视频对象
			 VideosBean videosBean = new VideosBean();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
			 //制定查询过滤器
			 Pattern pattern = Pattern.compile("^.*"+seach+".*$",Pattern.CASE_INSENSITIVE);
			 BasicDBObject query = new BasicDBObject();
			 query.put("name", pattern);
			 //查找集合中的所有文档
			 FindIterable<Document> findIterable = collection.find(query);
			 //查找结果赋值给cursor
			 MongoCursor<Document> cursor = findIterable.iterator();
			 //新建Gson对象
			 Gson gson = new Gson();
			 //循环向list集合插入VideosBean对象
			 while(cursor.hasNext()){
				//将集合元素转换成document对象
		    	Document document = cursor.next();
		    	//将document对象转化为Json格式并解析为videosBean对象
		    	videosBean=gson.fromJson(document.toJson(), VideosBean.class);
		    	//将videosBean对象添加到集合中
		    	list.add(videosBean);
		    	
			 }
			 return list;
		 }
}
