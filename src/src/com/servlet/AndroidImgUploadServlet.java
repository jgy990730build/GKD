package src.com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;

import src.com.dao.ChangeSizeDao;
import src.com.dao.InsertVideosDao;

/**
 * Servlet implementation class AndroidImgUploadServlet
 */
public class AndroidImgUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidImgUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String imgEncodedStr = request.getParameter("image");
		String fileName = request.getParameter("filename");
		String vid = request.getParameter("vid");
		
		if(imgEncodedStr != null){
	        convertStringtoImage(imgEncodedStr, fileName);
	        //读视频的路径
	        File video = new File("D:\\upload\\video\\videoname.txt"); // 要读取以上路径的input。txt文件  
            InputStreamReader reader = new InputStreamReader(  
                    new FileInputStream(video)); // 建立一个输入流对象reader  
            BufferedReader br = new BufferedReader(reader); // 建立一个对象，它把文件内容转成计算机能读懂的语言  
            String videoname = "";  
            videoname = br.readLine(); 
            //读图片的路径
            String imgname = fileName + ".jpg";
            InsertVideosDao insertVideosDao = new InsertVideosDao();
            Boolean aBoolean = insertVideosDao.InsertVideoBYAndroid_2(vid, videoname, imgname);

            if(aBoolean) {
            	System.out.print("Image upload complete, Please check your directory");
            }else {
    	        System.out.println("have somgthing woring");
            }
	    } else{
	        System.out.print("Image is empty");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static void convertStringtoImage(String encodedImageStr, String fileName) {

        try {
            // Base64解码图片
            byte[] imageByteArray = Base64.decodeBase64(encodedImageStr);

            //输出文件
            FileOutputStream imageOutFile = new FileOutputStream("D:/upload/img/" + fileName+".jpg");
            imageOutFile.write(imageByteArray);
            
            imageOutFile.close();
            ChangeSizeDao changeSizeDao = new  ChangeSizeDao();
            changeSizeDao.changeSize(250, 300, "D:/upload/img/" + fileName+".jpg");
            System.out.println("Image Successfully Stored");
        } catch (FileNotFoundException fnfe) {
            System.out.println("Image Path not found" + fnfe);
        } catch (IOException ioe) {
            System.out.println("Exception while converting the Image " + ioe);
        }
    }
}
