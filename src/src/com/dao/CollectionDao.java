package src.com.dao;

import java.util.ArrayList;
import java.util.Collection;
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
import src.com.bean.CommentBean;
import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class CollectionDao {
	//该方法将用户收藏的视频信息存入list集合并返回该集合
	public List<CollectionBean> CollectionDao(String useraccount){
				//创建list集合
				List<CollectionBean> list = new ArrayList<CollectionBean>();
				//获取数据库连接对象
				MongoDBUtil mongoDBUtil = new MongoDBUtil();
				//创建comment对象
				Collection_ collection_ = new Collection_();
				//获取集合
				MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("collection");
				//制定查询过滤器
				Bson filter = Filters.eq("useraccount", useraccount);
				//查找集合中的所有文档
				FindIterable<Document> findIterable = collection.find(filter);
				//查找结果赋值给cursor
				MongoCursor<Document> cursor = findIterable.iterator();
				//新建Gson对象
				Gson gson = new Gson();
				while(cursor.hasNext()){
					//创建commentBean对象
					CollectionBean collectionBean = new CollectionBean();
					//将集合元素转换成document对象
			    	Document document = cursor.next();
			    	//将document对象转化为Json格式并解析为videosBean对象
			    	collection_=gson.fromJson(document.toJson(), Collection_.class);
			    	collectionBean.setVideoid(collection_.getVideoid());
			    	collectionBean.setUseraccount(collection_.getUseraccount());

			    	VideosBean videosBean = new VideosBean();
			    	String videoid = collection_.getVideoid();
					//获取集合
					MongoCollection<Document>collection1=mongoDBUtil.getConnection("GKD").getCollection("videos");
					//制定查询过滤器
					Bson filter1 = Filters.eq("videoid", videoid);
					//查找集合中的所有文档
					FindIterable<Document> findIterable1 = collection1.find(filter1);
					//查找结果赋值给cursor
					MongoCursor<Document> cursor1 = findIterable1.iterator();
					//新建Gson对象
					Gson gson1 = new Gson();
					while(cursor1.hasNext()){
						//将集合元素转换成document对象
				    	Document document1 = cursor1.next();
				    	//将document对象转化为Json格式并解析为videosBean对象
				    	videosBean=gson1.fromJson(document1.toJson(), VideosBean.class);
					}
					collectionBean.setName(videosBean.getName());
					collectionBean.setCover(videosBean.getCover());
					collectionBean.setUploadtime(videosBean.getUploadtime());
					
					
			    	list.add(collectionBean);
				}
				return list;
	}
}
