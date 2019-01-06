package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdvDAO {
	DBConnectionMgr pool;
	Connection con;
	
	public AdvDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//whn
	public void insertAdv(AdvDTO dto) throws Exception{
		con = pool.getConnection();
		
		//3. SQL문 객체화
		String sql = "INSERT INTO ADV VALUES(NULL,?,?,?,?,?);";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getSid());
		ps.setString(2, dto.getTitle());
		ps.setString(3, dto.getprice());
		ps.setString(4, dto.getContent());
		ps.setString(5, dto.getImg());
		
		//4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("sql문 요청 완료");
		pool.freeConnection(con, ps);
	}
}
