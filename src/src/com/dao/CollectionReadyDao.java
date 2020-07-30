package src.com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.swing.text.StyledEditorKit.BoldAction;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import src.com.bean.CollectionBean;
import src.com.bean.Collection_;
import src.com.demo.MongoDBUtil;

public class CollectionReadyDao {
	public boolean CollectionReadyDao(String useraccount, String videoid) {
		boolean b=true;
		//����list����
		List<CollectionBean> list = new ArrayList<CollectionBean>();
		//��ȡ���ݿ����Ӷ���
		MongoDBUtil mongoDBUtil = new MongoDBUtil();
		//����comment����
		Collection_ collection_ = new Collection_();
		//��ȡ����
		MongoCollection<Document>collection=mongoDBUtil.getConnection("GKD").getCollection("collection");
		//�ƶ���ѯ������
		Bson filter = Filters.and(Filters.eq("useraccount", useraccount),Filters.eq("videoid",videoid));
		//���Ҽ����е������ĵ�
		FindIterable<Document> findIterable = collection.find(filter);
		//���ҽ����ֵ��cursor
		MongoCursor<Document> cursor = findIterable.iterator();
		//�½�Gson����
		Gson gson = new Gson();
		if(cursor.hasNext()) {
			b=false;
		}
		return b;
	}
}
