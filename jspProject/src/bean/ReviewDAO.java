package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ReviewDAO {
	DBConnectionMgr pool;
	Connection con;
	
	public ReviewDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//whn
	public void insertReview(ReviewDTO dto){
		PreparedStatement ps = null;
		try {
			con = pool.getConnection();

			//3. SQL문 객체화
			String sql = "INSERT INTO REVIEW (mid,sid,adno,content,starsc) VALUES(?,?,?,?,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getMid());
			ps.setString(2, dto.getSid());
			ps.setInt(3, dto.getAdno());
			ps.setString(4, dto.getContent());
			ps.setInt(5, dto.getStarsc());
			
			//4. SQL문 실행 요청
			ps.executeUpdate();
			System.out.println("insertReview sql문 요청 완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
		
	}//end insertReview()
	
	//whn
	public void updateReview(ReviewDTO dto){
		PreparedStatement ps = null;
		try {
			con = pool.getConnection();
			
			//3.sql문 객체화
			String sql = "UPDATE REVIEW SET CONTENT=?, STARSC=?, WHERE NO=?;";
			ps = con.prepareStatement(sql);
			ps.setInt(3, dto.getNo());
			ps.setString(1, dto.getContent());
			ps.setInt(2, dto.getStarsc());
			
			//4.sql문 실행요청
			ps.executeUpdate();
			System.out.println("updateReview sql문 요청 완료");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
	}//end updateReview
	
	//whn
	public void deleteReview(int no) {
		PreparedStatement ps =null;
		try {
			con = pool.getConnection();
			
			//3.sql문 객체화
			String sql = "DELETE FROM REVIEW WHERE NO=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, no);
			
			//4.sql문 실행요청
			ps.executeUpdate();
			System.out.println("deleteReview sql문 요청 완료");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, ps);
		}
	}//end deleteReview()
	
	//whn
	public ArrayList<ReviewDTO> selectThreeReview(String input) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<ReviewDTO> list = null;
		ReviewDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM REVIEW;";
			ps = con.prepareStatement(sql);
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			list = new ArrayList<>();
			while(rs.next()) {
				dto = new ReviewDTO();
				
				dto.setNo(rs.getInt(1));
				dto.setMid(rs.getString(2));
				dto.setSid(rs.getString(3));
				dto.setAdno(rs.getInt(4));
				dto.setContent(rs.getString(5));
				dto.setStarsc(rs.getInt(6));
				dto.setDate(rs.getString(7));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		
		return list;
	}//end selectAllReview()
	
	//whn
	public ArrayList<ReviewDTO> selectAllReview(String input) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<ReviewDTO> list = null;
		ReviewDTO dto = null;
		try {
			con = pool.getConnection();
			
			//3. sql문 객체화
			String sql="SELECT * FROM REVIEW;";
			ps = con.prepareStatement(sql);
			
			//4. sql문 실행 요청
			rs = ps.executeQuery();
			list = new ArrayList<>();
			while(rs.next()) {
				dto = new ReviewDTO();
				
				dto.setNo(rs.getInt(1));
				dto.setMid(rs.getString(2));
				dto.setSid(rs.getString(3));
				dto.setAdno(rs.getInt(4));
				dto.setContent(rs.getString(5));
				dto.setStarsc(rs.getInt(6));
				dto.setDate(rs.getString(7));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, ps, rs);
		}
		
		return list;
	}//end selectAllReview()
}
