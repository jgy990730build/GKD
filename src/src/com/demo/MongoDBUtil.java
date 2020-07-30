package src.com.demo;


import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
public class MongoDBUtil {
MongoDatabase mongoDatabase=null;
public MongoDatabase getConnection(String DBname) {
	@SuppressWarnings("resource")
	MongoClient mongoClient=new MongoClient("localhost",27017);
	mongoDatabase=mongoClient.getDatabase(DBname);
	System.out.println("数据库连接成功！");
	return mongoDatabase;
	
}
public void display(String DBName,String CollectionName) {
	mongoDatabase=this.getConnection(DBName);
	MongoCollection<Document>cllection=mongoDatabase.getCollection(CollectionName);
	System.out.println("集合选择成功！");
	FindIterable<Document>findIterable=cllection.find();
	MongoCursor<Document>mongoCursor=findIterable.iterator();
	while(mongoCursor.hasNext()) {
		System.out.println(mongoCursor.next());
	}
}

}
