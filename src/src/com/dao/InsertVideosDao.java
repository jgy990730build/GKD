package src.com.dao;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

/*
 * videoid	视频索引
useraccount	作者账号
name	视频名
desc	视频简介
type	视频分类
path	视频路径
cover	视频封面
uploadtime	上传时间
Click_count	点击量
Collection_count	收藏量 
 * 
 */

public class InsertVideosDao {
	public boolean InsertVideos(String videoid,String useraccount,String name,String desc,String path,String cover,String type) {
		boolean b = true;
		try {
		//获取数据库连接对象
		 MongoDBUtil mongoDBUtil = new MongoDBUtil();
		 //创建视频对象
//		 VideosBean videosBean = new VideosBean();
		 //获取集合
		 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		 //获取当前时间
		 Date date = new Date();
		 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		 String uploadtime = dateFormat.format(date);
		 //设置点击量和收藏量为默认值0
		 int count = 0;
		 String[] label = new String[10];
		 Document document = new Document("videoid",videoid)
                 .append("useraccount", useraccount)
                 .append("name", name)
                 .append("desc", desc)
                 .append("type", type)
                 .append("path", path)
                 .append("cover", cover)
                 .append("uploadtime", uploadtime)
                 .append("Click_count", count)
                 .append("Collection_count", count)
                 .append("score", 60)
                 .append("label", Arrays.asList(label));
		 collection.insertOne(document);
		 }catch(Exception e) {
			 b = false;
		 }
		return b;
	}
	
	public boolean InsertVideoBYAndroid(String videoid,String useraccount,String name,String desc,String type) {
		boolean b = true;
		try {
		//获取数据库连接对象
		 MongoDBUtil mongoDBUtil = new MongoDBUtil();
		 //创建视频对象
//		 VideosBean videosBean = new VideosBean();
		 //获取集合
		 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		 //获取当前时间
		 Date date = new Date();
		 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		 String uploadtime = dateFormat.format(date);
		 //设置点击量和收藏量为默认值0
		 int count = 0;
		 String[] label = new String[10];
		 String undetermined = "path";
		 Document document = new Document("videoid",videoid)
                 .append("useraccount", useraccount)
                 .append("name", name)
                 .append("desc", desc)
                 .append("type", type)
                 .append("path", undetermined)
                 .append("cover", undetermined)
                 .append("uploadtime", uploadtime)
                 .append("Click_count", count)
                 .append("Collection_count", count)
                 .append("label", Arrays.asList(label));
		 collection.insertOne(document);
		 }catch(Exception e) {
			 b = false;
		 }
		return b;
	}
	
	public boolean InsertVideoBYAndroid_2(String videoid,String path,String cover) {
		boolean b = true;
		try {
		//获取数据库连接对象
		 MongoDBUtil mongoDBUtil = new MongoDBUtil();
		 //创建视频对象
//		 VideosBean videosBean = new VideosBean();
		 //获取集合
		 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		 //获取当前时间
		 Date date = new Date();
		 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		 String uploadtime = dateFormat.format(date);
		 //修改过滤器          session.getAttribute("account").toString()
		 Bson filter = Filters.eq("videoid",videoid);
		 //指定修改的更新文档
		Document document = new Document("$set", new Document("videoid", videoid).append("path", path)
					.append("cover", cover));
			//修改多个文档
		    collection.updateMany(filter, document);
		
		 }catch(Exception e) {
			 b = false;
		 }
		return b;
	}
}
