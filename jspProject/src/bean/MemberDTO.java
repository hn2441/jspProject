package bean;

public class MemberDTO {
	private String mid;
	private String pw;
	private String tel;
	private String nic;
	private String categorize;
	
	String getMid() {
		return mid;
	}
	void setMid(String mid) {
		this.mid = mid;
	}
	
	String getPw() {
		return pw;
	}
	void setPw(String pw) {
		this.pw = pw;
	}
	
	String getTel() {
		return tel;
	}
	void setTel(String tel) {
		this.tel = tel;
	}
	
	String getNic() {
		return nic;
	}
	void setNic(String nic) {
		this.nic = nic;
	}
	
	String getCategorize() {
		return categorize;
	}
	void setCategorize(String categorize) {
		this.categorize = categorize;
	}
	
	
	
}
