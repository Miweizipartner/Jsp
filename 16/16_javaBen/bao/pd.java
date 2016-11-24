package bao;

import java.util.ArrayList;
import java.util.HashMap;

public class pd {
	private ArrayList<String> zt;
	private HashMap<String,ArrayList<String>> tm;
	
	public pd(){
		zt = new ArrayList<String>();
		tm = new HashMap<String,ArrayList<String>>();
		
		String sz[] = {"没有接到电话","下楼晚了几秒","突然不说话"};
		int a = (int) (Math.random()*30);
		String qk = "没有接到电话";
		zt.add(qk);
		
		String xx1 = "aaaa";
		String xx2 = "bbbb";
		String xx3 = "cccc";
		String xx4 = "dddd";
		
		
		ArrayList<String> temp = new ArrayList<String>(); 
		
		temp.add(xx1);
		temp.add(xx2);
		temp.add(xx3);
		temp.add(xx4);
		
		tm.put(qk, temp);
		
	}

	public ArrayList<String> getZt() {
		return zt;
	}

	public void setZt(ArrayList<String> zt) {
		this.zt = zt;
	}

	public HashMap<String, ArrayList<String>> getTm() {
		return tm;
	}

	public void setTm(HashMap<String, ArrayList<String>> tm) {
		this.tm = tm;
	}

}
