package bean;

import java.sql.Timestamp;

public class ServiceDTO {
	private int boardID;
	private String title;
	private String email;
	private String pw;
	private Timestamp tm;
	private String content;
	
	public int getBoardID() {
		return boardID;
	}
	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Timestamp getTm() {
		return tm;
	}
	public void setTm(Timestamp tm) {
		this.tm = tm;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
	
	
	

	
	
	

			
}
