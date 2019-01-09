package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdvDAO {
	DBConnectionMgr pool;
	Connection con;
	
	public AdvDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//whn
	public void insertAdv(AdvDTO dto){
		PreparedStatement ps = null;
		try {
			con = pool.getConnection();

			//3. SQL문 객체화
			String sql = "INSERT INTO ADV(sid,title,price,cotnet,img) VALUES(?,?,?,?,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getSid());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getPrice());
			ps.setString(4, dto.getContent());
			ps.setString(5, dto.getImg());
			
			//4. SQL문 실행 요청
			ps.executeUpdate();
			System.out.println("insertAdv sql문 요청 완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
		
	}//end insertAdv()
	
	//whn
	public void updateAdv(AdvDTO dto){
		PreparedStatement ps = null;
		try {
			con = pool.getConnection();
			
			//3.sql문 객체화
			String sql = "UPDATE ADV SET TITLE=?, PRICE=?, CONTENT=?, IMG=? WHERE NO=?;";
			ps = con.prepareStatement(sql);
			ps.setInt(5, dto.getNo());
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getPrice());
			ps.setString(3, dto.getContent());
			ps.setString(4, dto.getImg());
			
			//4.sql문 실행요청
			ps.executeUpdate();
			System.out.println("updateAdv sql문 요청 완료");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
	}//end updateAdv
	
	//whn
	public void deleteAdv(int no) {
		PreparedStatement ps =null;
		try {
			con = pool.getConnection();
			
			//3.sql문 객체화
			String sql = "DELETE FROM ADV WHERE NO=?;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, no);
			
			//4.sql문 실행요청
			ps.executeUpdate();
			System.out.println("deleteAdv sql문 요청 완료");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
	}//end deleteAdv()
	
	//whn
	public ArrayList<AdvDTO> selectAllAdv(String input) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<AdvDTO> list = null;
		AdvDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM ADV;";
			ps = con.prepareStatement(sql);
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			list = new ArrayList<>();
			while(rs.next()) {
				dto = new AdvDTO();
				
				dto.setNo(rs.getInt(1));
				dto.setSid(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setPrice(rs.getString(4));
				dto.setContent(rs.getString(5));
				dto.setImg(rs.getString(6));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		
		return list;
	}//end selectAllAdv()
}
