package src.com.dao;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ChangeSizeDao {
	
	public  boolean changeSize(int newWidth, int newHeight, String path) {
        BufferedInputStream in = null;
        try {
            in = new BufferedInputStream(new FileInputStream(path));

            //字节流转图片对象
            Image bi = ImageIO.read(in);
            //构建图片流
            BufferedImage tag = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);
            //绘制改变尺寸后的图
            tag.getGraphics().drawImage(bi, 0, 0, newWidth, newHeight, null);
            //输出流
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(path));
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
            encoder.encode(tag);
            ImageIO.write(tag, "png", out);
            in.close();
            out.close();
            return true;
        } catch (IOException e) {
            return false;
        }
    }
}
