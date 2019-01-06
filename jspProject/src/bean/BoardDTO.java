package bean;

public class BoardDTO {
	private String id;
	private String adno;
	private String title;
	private String content;
	private String pw;
	private String timestamp;
	
	String getId() {
		return id;
	}
	void setId(String id) {
		this.id = id;
	}
	String getAdno() {
		return adno;
	}
	void setAdno(String adno) {
		this.adno = adno;
	}
	String getTitle() {
		return title;
	}
	void setTitle(String title) {
		this.title = title;
	}
	String getContent() {
		return content;
	}
	void setContent(String content) {
		this.content = content;
	}
	String getPw() {
		return pw;
	}
	void setPw(String pw) {
		this.pw = pw;
	}
	String getTimestamp() {
		return timestamp;
	}
	void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
}
