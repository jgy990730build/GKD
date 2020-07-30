package src.com.dao;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import sun.text.resources.cldr.sr.FormatData_sr_Latn;

public class ScoreDao {
	public int ScoreDao(String uploadtime,int click_count,int collection_count,int score){
		double score1=0;
		int clcount = click_count;
		int colcount = collection_count;
		int day=0 ;
		try {
			 Date date = new Date();
			 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
			 Date date2 =dateFormat.parse(uploadtime);
			long time =date.getTime()-date2.getTime();
			day = (int)time/(1000*60*60*24);
		} catch (Exception e) {
			// TODO: handle exception
		} 
		if (day<7 && clcount<=500) {
			score1 = (((double)colcount/clcount)*40)+60;
		}else if (day>7 && clcount<=1000) {
			score1 = (((double)colcount/clcount)*40)+60;
		}else if(day>7 && clcount>1000){
			score1 = (((double)colcount/clcount)*40)+60;
		}else if (day<7 && clcount>500) {
			score1 = (((double)colcount/clcount)*40)+60;
		}
		System.out.println((int)score1);
		
		return (int)score1;
	}
}
