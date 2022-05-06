package tw.ting.utils;

public class Ting15 {
	private int x,y;
	public Ting15(String x,String y) {
		try {
			this.x =Integer.parseInt(x);
			this.y =Integer.parseInt(y);
			
		} catch (Exception e) {
			// TODO: handle exception
		}

	}
	public double operator(String op) {
		double r=0;
		switch(op) {
		case "1":r=x+y;break;
		case "2":r=x-y;break;
		case "3":r=x*y;break;
		case "4":r=x*1.0/y;break;
		
		}
		
		return r;
	}
	
}
