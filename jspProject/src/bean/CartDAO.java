package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CartDAO {
	DBConnectionMgr pool;
	Connection con;
	
	public CartDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//whn
	public void insertCart(CartDTO dto){
		PreparedStatement ps = null;
		try {
			con = pool.getConnection();

			//3. SQL문 객체화
			String sql = "INSERT INTO CART(mid,adno) VALUES(?,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getMid());
			ps.setInt(2, dto.getAdno());
			
			//4. SQL문 실행 요청
			ps.executeUpdate();
			System.out.println("insertCart sql문 요청 완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
		
	}//end insertCart()
	
	//whn
	public void deleteCart(CartDTO dto) {
		PreparedStatement ps =null;
		try {
			con = pool.getConnection();
			
			//3.sql문 객체화
			String sql = "DELETE FROM Cart WHERE MID=? AND ADNO=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getMid());
			ps.setInt(2, dto.getAdno());
			
			//4.sql문 실행요청
			ps.executeUpdate();
			System.out.println("deleteCart sql문 요청 완료");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
	}//end deleteCart()
	
	public CartDTO selectCart(int no) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		CartDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM CART WHERE MID=? AND ADNO=?;";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getMid());
			ps.setInt(2, dto.getAdno());
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new CartDTO();
				
				dto.setMid(rs.getString(1));
				dto.setAdno(rs.getInt(2));
				dto.setDate(rs.getString(3));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		return dto;
	}
	
	//whn
	public ArrayList<CartDTO> selectAllCart(String input) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CartDTO> list = null;
		CartDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM CART;";
			ps = con.prepareStatement(sql);
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			list = new ArrayList<>();
			while(rs.next()) {
				dto = new CartDTO();
				
				dto.setMid(rs.getString(1));
				dto.setAdno(rs.getInt(2));
				dto.setDate(rs.getString(3));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		
		return list;
	}//end selectAllCart()
}
