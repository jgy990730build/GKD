package src.com.dao;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class InsertCollectionDao {
	public boolean InsertCollectionDao(String videoid,String useraccount) {
		boolean b = true;
		try {
			VideosDao videosDao = new VideosDao();
			VideosBean videosBean = videosDao.Onevideo(videoid);
			int score = videosBean.getScore();
			String uploadtime = videosBean.getUploadtime();
			int click_count = videosBean.getClick_count();
			int collection_count = videosBean.getCollection_count();
			
			ScoreDao scoreDao = new ScoreDao();
			
			int score1 = scoreDao.ScoreDao(uploadtime, click_count, collection_count+1, score);
			
			 UpdateScoreDao updateScoreDao = new UpdateScoreDao();
			 updateScoreDao.UpdateScoreDao(videoid, score1,collection_count+1,click_count);
			 
			//获取数据库连接对象
			 MongoDBUtil mongoDBUtil = new MongoDBUtil();
			 //获取集合
			 MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("collection");
			 Document document = new Document("videoid",videoid)
	                 .append("useraccount", useraccount);
			 collection.insertOne(document);
			 }catch(Exception e) {
				 b = false;
			 }
		return b;
	}
}
