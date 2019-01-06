package bean;

public class ReviewDTO {
//	private int no;
	private String mid;
	private String sid;
	private String adno;
	private String content;
	private int starsc;
//	private String date;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	
	public String getAdno() {
		return adno;
	}
	public void setAdno(String adno) {
		this.adno = adno;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getStarsc() {
		return starsc;
	}
	public void setStarsc(int starsc) {
		this.starsc = starsc;
	}
	
	
	
}
