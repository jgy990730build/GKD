package src.com.servlet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AndroidVideoUploadServlet
 */

public class AndroidVideoUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidVideoUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取输入流，是HTTP协议中的实体内容
				
				ServletInputStream sis = request.getInputStream();
				String path = "D:\\upload\\video";
			     File file = new File(path,"video_"+0+".mp4");
			     File writeName = new File(path,"videoname.txt");
			     writeName.createNewFile();
			     BufferedWriter out = new BufferedWriter(new FileWriter(writeName));
			     int imgnum = 0;
			     
			     for (imgnum = 0;file.exists();imgnum++)
			     {
			      file  = new File(path,"video_"+imgnum+".mp4");
			      
			     }
			     out.write("video_"+(imgnum-1)+".mp4");
			          //缓冲区
			          byte buffer[]=new byte[1024];
			          FileOutputStream fos=new FileOutputStream(file);
			          int len=sis.read(buffer, 0, 1024);
			          //把流里的信息循环读入到文件中
			          while( len!=-1 )
			          {
			              fos.write(buffer, 0, len);
			              len=sis.readLine(buffer, 0, 1024);
			          }
			          fos.close();
			          sis.close();
			          out.flush(); // 把缓存区内容压入文件  
		              out.close();
				

	}

}
