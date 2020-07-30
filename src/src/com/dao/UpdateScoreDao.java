package src.com.dao;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class UpdateScoreDao {
	public void UpdateScoreDao(String videoid,int score1,int collection_count,int click_count) {


		  //获取数据库连接对象
		   MongoDBUtil mongoDBUtil = new MongoDBUtil();
		   //创建视频对象
		//   VideosBean videosBean = new VideosBean();
		   //获取集合
		   MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		   //修改过滤器          session.getAttribute("account").toString()
		   Bson filter = Filters.eq("videoid",videoid);
		   //指定修改的更新文档
		  Document document = new Document("$set", new Document("videoid", videoid).append("score", score1).append("collection_count", collection_count).append("click_count", click_count));
		   //修改多个文档
		      collection.updateMany(filter, document);
	}
}
