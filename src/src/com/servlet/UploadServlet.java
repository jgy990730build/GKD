package src.com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import src.com.dao.ChangeSizeDao;
import src.com.dao.InsertVideosDao;
import src.com.demo.MyProgressListener;


/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	//全局变量
	private String vtitle,vimg,vpath,vtype,vdesc;
	private String vid;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
	     //取出监听器MyProgress在session中保存的进度信息
        String progress=(String) request.getSession().getAttribute("progress");
        //响应
        response.getWriter().print(progress);
        //清除session中保存的数据
//        req.getSession().removeAttribute("progress");
		
		
		
		//获取用户账号
        String str1= (String) session.getAttribute("useraccount");
//        String str1="1740128208";
		//上传时间
		Calendar cal=Calendar.getInstance();
		int y=cal.get(Calendar.YEAR);      
		int m=cal.get(Calendar.MONTH);      
		int d=cal.get(Calendar.DATE);      
		int h=cal.get(Calendar.HOUR_OF_DAY);      
		int mi=cal.get(Calendar.MINUTE);      
		int s=cal.get(Calendar.SECOND);
		
		
		//上传
		try {
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if(isMultipart) {//判断前台的form是否有Multipart属性
//			FileItemFactory factory = new DiskFileItemFactory();
			//用于缓存
			DiskFileItemFactory factory = new DiskFileItemFactory();
			
			
			ServletFileUpload upload = new ServletFileUpload(factory);
			//通过parseRequest解析form中的所有字段，并保存到items集合中(即前台传递的值)
			
			//进度条
			upload.setProgressListener(new MyProgressListener(request));
			
			
			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> iterator = items.iterator();
			while(iterator.hasNext()) {
				FileItem item = iterator.next();
				String itemName = item.getFieldName();
//				int sno = -1;
//				String sname = null ;
				if(item.isFormField()) {
				if(itemName.equals("name")) {//根据name属性判断取得的值
					vtitle = item.getString("utf-8"); 
//					System.out.println(vtitle);
				}else if(itemName.equals("Message")){
					vdesc = item.getString("utf-8"); 
//					System.out.println(vdesc);
				}else if(itemName.equals("vtype")){
					vtype = item.getString("utf-8");
				}else {
					System.out.println("其他字段");
				}
			}else if(itemName.equals("spicture")){//spicture上传封面
				//文件上传
				//文件名 getFeildName是获取 获取普通表单字段的Name值
				String fileName=item.getName();//限制文件格式
				String ext = fileName.substring(fileName.indexOf(".")+1);
				if(!(ext.equals("jpg")||ext.equals("png")||ext.equals("gif")) ) {
					System.out.println("上传文件格式有误！格式只能是jpg,png,gif");
					out.print("<script> alert(\"上传文件格式有误！格式只能是jpg,png,gif!\"); </script>");
					response.sendRedirect(request.getHeader("Referer"));
					return ;//终止
				}
				//获取文件内容
				//定义文件：上传的位置
				//获取服务器路径D:\\eclipse\\project\\JavaWebUpload\\WebContent\\upload
//				String path = request.getSession().getServletContext().getRealPath("upload");
				
				String fileName1="img"+str1+y+m+d+h+mi+s+"."+ext;
//				System.out.println(fileName1);
				//发给全局变量
				vimg = fileName1;
				
				String path = "D:\\upload\\img";
				
				File file = new File(path,fileName1);
				
				//设置上传文件时 用到的临时文件的大小DiskFileItemFactory
//				factory.setSizeThreshold(10240);
//				factory.setRepository(new File("d:\\uploadtemp"));//设置临时文件目录
				
				
				//控制上传单个文件大小20kb
//				upload.setSizeMax(20480);//单位是字节
				
				item.write(file);//上传
				ChangeSizeDao changeSizeDao = new ChangeSizeDao();
				changeSizeDao.changeSize(250, 300, path+"\\"+fileName1);
				System.out.println(fileName+"上传成功!");
//				return ;
			}else {//上传视频
				//保存的文件名字
				
//				System.out.println(fileName2);
			
				
				String fileName=item.getName();
				
				//限制文件格式
				String ext = fileName.substring(fileName.indexOf(".")+1);
				if(!(ext.equals("mp4")||ext.equals("avi")||ext.equals("flv")) ) {
					System.out.println("上传文件格式有误！格式只能是mp4,avi,flv");
					out.print("<script> alert(\"上传文件格式有误！格式只能是mp4,avi,flv!\"); </script>");
					response.sendRedirect(request.getHeader("Referer"));
					return ;//终止
				}
				
				String fileName2="video"+str1+y+m+d+h+mi+s+"."+ext;
				vpath = fileName2;
				
				String path = "D:\\upload\\video";
				File file = new File(path,fileName2);
				item.write(file);//上传
				System.out.println(fileName+"上传成功!");
				
				
				String videoid =str1+y+m+d+h+mi+s;
				
				vid = videoid;
			}
				
			}
			//插入数据库
			InsertVideosDao input=new InsertVideosDao();
			input.InsertVideos(vid,str1,vtitle,vdesc,vpath,vimg,vtype);
			//跳转到成功页面
			response.sendRedirect("./uploadsuccess.jsp");
			
		}else {
			System.out.println("没有值");
		}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
