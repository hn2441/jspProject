package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import product.AdvertisementDTO;

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
			String sql = "INSERT INTO ADV VALUES(?,?,?,?,?,?);";
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getNo());
			ps.setString(2, dto.getSid());
			ps.setString(3, dto.getTitle());
			ps.setString(4, dto.getPrice());
			ps.setString(5, dto.getContent());
			// yis 수정(01.08)
			ps.setString(6, "images\\productImg\\" + dto.getImg());
			
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
	
	// yis 검색 결과
	public ArrayList<AdvDTO> search(String search) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		AdvDTO dto = null;
		
		con = pool.getConnection();
		
		String sql = "select title, price, img from ADV where title like '%" + search + "%'";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		

		ArrayList<AdvDTO> list = new ArrayList<>();
		
		while(rs.next()) {
			dto = new AdvDTO();
			
			dto.setTitle(rs.getString("title"));
			dto.setPrice(rs.getString("price"));
			dto.setImg(rs.getString("img"));
			
			list.add(dto);
		}
		
		return list;
	}//end searck()
	
	
	//yis 상품 검색(세부 상품 결과 가져오기)
	public AdvDTO select(String title) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		AdvDTO dto = new AdvDTO();
		
		con = pool.getConnection();
		
		String sql = "select * from ADV where title=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, title);
		rs = ps.executeQuery();
		
		while(rs.next()) {
			
			dto.setNo(Integer.parseInt(rs.getString("no")));
			dto.setSid(rs.getString("sid"));
			dto.setTitle(rs.getString("title"));
			dto.setPrice(rs.getString("price"));
			dto.setContent(rs.getString("content"));
			dto.setImg(rs.getString("img"));
		
		}
		
		return dto;
	}//end select()
	
	//yis DB에 저장되어 있는 상품의 개수 확인
	public ArrayList<AdvDTO> number() throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		AdvDTO dto = null;
	
		con = pool.getConnection();
		
		String sql = "select no from ADV";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		ArrayList<AdvDTO> list = new ArrayList<>();
		
		while(rs.next()) {
			dto = new AdvDTO();
			dto.setNo(rs.getInt("no"));
			
			list.add(dto);
		}
		
		return list;
	}//end number
	
	//yis 랜덤 값에 맞는 상품 결과 가져오기
	public AdvDTO randomPro(int no) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		AdvDTO dto = new AdvDTO();
	
		con = pool.getConnection();
		
		String sql = "select title, price, img from ADV where no=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, no);
		rs = ps.executeQuery();
		
		while(rs.next()) {
			dto.setTitle(rs.getString("title"));
			dto.setPrice(rs.getString("price"));
			dto.setImg(rs.getString("img"));

		}
		
		return dto;
	}//end randomPro
}
