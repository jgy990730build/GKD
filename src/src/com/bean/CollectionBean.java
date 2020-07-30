package src.com.bean;

public class CollectionBean {
	private int id;					//视频收藏id
	private String useraccount;		//用户账号
	private String videoid;			//视频id
	private String name;			//视频名称
	private String uploadtime;		//上传时间
	private String cover;			//视频封面路径
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUseraccount() {
		return useraccount;
	}
	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}
	public String getVideoid() {
		return videoid;
	}
	public void setVideoid(String videoid) {
		this.videoid = videoid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUploadtime() {
		return uploadtime;
	}
	public void setUploadtime(String uploadtime) {
		this.uploadtime = uploadtime;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
}
