package src.com.dao;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;

import src.com.bean.VideosBean;
import src.com.demo.MongoDBUtil;

public class UpdateScoreDao {
	public void UpdateScoreDao(String videoid,int score1,int collection_count,int click_count) {


		  //��ȡ���ݿ����Ӷ���
		   MongoDBUtil mongoDBUtil = new MongoDBUtil();
		   //������Ƶ����
		//   VideosBean videosBean = new VideosBean();
		   //��ȡ����
		   MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("videos");
		   //�޸Ĺ�����          session.getAttribute("account").toString()
		   Bson filter = Filters.eq("videoid",videoid);
		   //ָ���޸ĵĸ����ĵ�
		  Document document = new Document("$set", new Document("videoid", videoid).append("score", score1).append("collection_count", collection_count).append("click_count", click_count));
		   //�޸Ķ���ĵ�
		      collection.updateMany(filter, document);
	}
}
