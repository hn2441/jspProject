package bean_whn;

public class ReviewDTO {
	private int no;
	private String mid;
	private String sid;
	private int adno;
	private String content;
	private int starsc;
	private String date;
	
	
	int getNo() {
		return no;
	}
	void setNo(int no) {
		this.no = no;
	}
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
	
	int getAdno() {
		return adno;
	}
	void setAdno(int adno) {
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
	String getDate() {
		return date;
	}
	void setDate(String date) {
		this.date = date;
	}
	
	
	
}
