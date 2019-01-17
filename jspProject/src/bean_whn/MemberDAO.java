package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	
	DBConnectionMgr pool;
	Connection con;
	
	public MemberDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
		
	//whn : 판매글 페이지 네임카드에 닉네임 / 이메일 출력
	public MemberDTO selectNameCard(String sid) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM MEMBER WHERE ID=?;";
			ps = con.prepareStatement(sql);
			ps.setString(1, sid);
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new MemberDTO();
				
				dto.setId(rs.getString(1));
				dto.setPw(rs.getString(2));
				dto.setTel(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setCategory(rs.getBoolean(5));
				dto.setSalt(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		
		return dto;
	}//end selectAllAdv()
	
	
}
