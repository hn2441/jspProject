package bean;

public class searchDTO {
	private String search;
	private int count;
	
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Override
	public String toString() {
		return "searchDTO [search=" + search + ", count=" + count + "]";
	}
}
