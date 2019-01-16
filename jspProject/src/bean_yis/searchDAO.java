package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class searchDAO {
	DBConnectionMgr pool;
	Connection con;
	
	public searchDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//yis
	public searchDTO select(String search) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		searchDTO dto = new searchDTO();
		
		con = pool.getConnection();
		
		String sql = "select * from search where search=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, search);
		rs = ps.executeQuery();
		
		while (rs.next()) {
			if(search.equals(rs.getString("search"))) {
				dto.setSearch(rs.getString("search"));
				dto.setCount(rs.getInt("count"));
			} else {
				dto.setSearch(null);
			}
		}
		
		pool.freeConnection(con, ps, rs);
		
		return dto;
	}// end select()
	
	//yis
	public void insert(searchDTO dto) throws Exception {
		PreparedStatement ps = null;
		
		con = pool.getConnection();
		
		String sql = "insert into search values (?, ?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, dto.getSearch());
		ps.setInt(2, dto.getCount());
		ps.executeUpdate();
		
		System.out.println("sql문 실행 완료");
		
		pool.freeConnection(con, ps);
	}// end insert
	
	//yis
	public void update(searchDTO dto) throws Exception {
		PreparedStatement ps = null;
		
		con = pool.getConnection();
		
		String sql = "update search set count = ? where search = ?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, dto.getCount());
		ps.setString(2, dto.getSearch());
		ps.executeUpdate();
		
		System.out.println("sql문 실행 완료");
		
		pool.freeConnection(con, ps);
	}// end update
	
	//yis
	public ArrayList<searchDTO> searchInc(String search) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		searchDTO dto = null;
		
		con = pool.getConnection();
		
		String sql = "select * from search where search like '%" + search + "%'";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		ArrayList<searchDTO> list = new ArrayList<>();
		
		while (rs.next()) {
			dto = new searchDTO();
			
			dto.setSearch(rs.getString("search"));
			dto.setCount(rs.getInt("count"));
			
			list.add(dto);
		}
		
		pool.freeConnection(con, ps, rs);
		
		return list;
	}// end searchInc
}
