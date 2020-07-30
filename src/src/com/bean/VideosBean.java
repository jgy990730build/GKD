package src.com.bean;

import java.util.jar.Attributes.Name;

public class VideosBean {
	 private int id;				//id
	 private String videoid;			//视频id
	 private String useraccount;		//作者账号
	 private String name;			//视频名
	 private String desc;			//视频简介
	 private String path;			//视频路径
	 private String cover;			//视频封面路径
	 private String uploadtime;		//上传时间
	 private int click_count;		//点击量
	 private int collection_count;	//收藏量
	 private int score;				//评分
	 public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	private String type;			//类型
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVideoid() {
		return videoid;
	}
	public void setVideoid(String videoid) {
		this.videoid = videoid;
	}
	public String getUseraccount() {
		return useraccount;
	}
	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getUploadtime() {
		return uploadtime;
	}
	public void setUploadtime(String uploadtime) {
		this.uploadtime = uploadtime;
	}
	public int getClick_count() {
		return click_count;
	}
	public void setClick_count(int click_count) {
		this.click_count = click_count;
	}
	public int getCollection_count() {
		return collection_count;
	}
	public void setCollection_count(int collection_count) {
		this.collection_count = collection_count;
	}
}
