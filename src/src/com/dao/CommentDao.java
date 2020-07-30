package src.com.dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;

import src.com.bean.CommentBean;
import src.com.bean.Comment_;
import src.com.bean.Userinfo;
import src.com.demo.MongoDBUtil;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

public class CommentDao {
	
	//该方法将指定视频对应的评论信息存放在list集合中并返回该集合
	public List<CommentBean> CommentDao(String videoid){
		
		//创建comment_list集合
		List<Comment_> comment_list = new ArrayList<Comment_>();
		//创建list集合
		List<CommentBean> list = new ArrayList<CommentBean>();
		//获取数据库连接对象
		MongoDBUtil mongoDBUtil = new MongoDBUtil();
		//创建comment_对象
		Comment_ comment_ = new Comment_();
		//获取集合
		MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("comment");
		//制定查询过滤器
		Bson filter = Filters.eq("videoid", videoid);
		//查找集合中的所有文档
		FindIterable<Document> findIterable = collection.find(filter);
		//查找结果赋值给cursor
		MongoCursor<Document> cursor = findIterable.iterator();
		//新建Gson对象
		Gson gson = new Gson();
		while(cursor.hasNext()){
			//将集合元素转换成document对象
	    	Document document = cursor.next();
	    	//将document对象转化为Json格式并解析为videosBean对象
	    	comment_=gson.fromJson(document.toJson(), Comment_.class);
	    	comment_list.add(comment_);
		}
		for(Comment_ comment_list1 :comment_list) {
			//创建commentBean对象
			CommentBean commentBean = new CommentBean();
			Userinfo userinfo = new Userinfo();
			String useraccount = comment_list1.getUseraccount();
			//获取集合
			MongoCollection<Document>collection1=mongoDBUtil.getConnection("GKD").getCollection("userinfo");
			//制定查询过滤器
			Bson filter1 = Filters.eq("useraccount", useraccount);
			//查找集合中的所有文档
			FindIterable<Document> findIterable1 = collection1.find(filter1);//查找结果赋值给cursor
			MongoCursor<Document> cursor1 = findIterable1.iterator();
			//新建Gson对象
			Gson gson1 = new Gson();
			while(cursor1.hasNext()){
				//将集合元素转换成document对象
		    	Document document = cursor1.next();
		    	//将document对象转化为Json格式并解析为videosBean对象
		    	userinfo=gson1.fromJson(document.toJson(), Userinfo.class);
			}
	    	commentBean.setVideoid(comment_list1.getVideoid());
	    	commentBean.setUseraccount(comment_list1.getUseraccount());
	    	commentBean.setContent(comment_list1.getContent());
	    	commentBean.setCreatetime(comment_list1.getCreatetime());
			commentBean.setUsername(userinfo.getUsername());
			commentBean.setImagepath(userinfo.getImagepath());
			list.add(commentBean);
		}
		return list;
	} 
}
