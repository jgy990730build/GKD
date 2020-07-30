package src.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import src.com.bean.VideosBean;
import src.com.dao.InsertVideosDao;
import src.com.dao.VideosDao;

/**
 * Servlet implementation class AndroidVideoInfoUploadServlet
 */
public class AndroidVideoInfoUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidVideoInfoUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
		//��ȡ�û��������Ϣ
		String useraccount= (String) request.getParameter("useraccount");
		String title= (String) request.getParameter("title");
		String desc= (String) request.getParameter("desc");
		String vtype= (String) request.getParameter("vtype");
		System.out.println(vtype);
		
		
		//�ϴ�ʱ��
				Calendar cal=Calendar.getInstance();
				int y=cal.get(Calendar.YEAR);      
				int m=cal.get(Calendar.MONTH);      
				int d=cal.get(Calendar.DATE);      
				int h=cal.get(Calendar.HOUR_OF_DAY);      
				int mi=cal.get(Calendar.MINUTE);      
				int s=cal.get(Calendar.SECOND);
		//������Ƶid
		String videoid =useraccount+y+m+d+h+mi+s;
		
		
		//�������ݿ�
		InsertVideosDao input=new InsertVideosDao();
		boolean b = input.InsertVideoBYAndroid(videoid, useraccount, title, desc, vtype);
		if(b) {
			VideosDao videosDao = new VideosDao();
			VideosBean vBean=videosDao.Onevideo(videoid);
			 Gson gson=new Gson();
			 String jString=gson.toJson(vBean);
			 out.print(jString);   //һ�㷵��json���ݣ��鵽����Ƶ����
	         out.flush();
	         out.close();
		}else {
			System.out.println("�ϴ�ʧ�ܣ�");
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
