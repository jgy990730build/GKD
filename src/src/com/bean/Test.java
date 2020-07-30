package src.com.bean;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import java.awt.Image;

public class Test {

    public static void main(String[] args) {
    	String string = "456123";
    	int i = Integer.parseInt(string);
    	System.out.println(i);
    }
}
