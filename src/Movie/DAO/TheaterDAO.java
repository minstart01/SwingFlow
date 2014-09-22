package Movie.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Movie.DTO.*;

public class TheaterDAO {

	int num,su;
	String sql="";
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	public int InsertTheater(TheaterInfo dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO THEATERINFO(TCODE, TNAME, ACODE, TDETAILADDR, TSCREEN, TTOTALSIT, TPHONE) VALUES(THEATERNO.NEXTVAL, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.gettName());
			pstmt.setInt(2, dto.getaCode());
			pstmt.setString(3, dto.gettDetailAddr());
			pstmt.setInt(4, dto.gettScreen());
			pstmt.setInt(5, dto.gettTotalSit());
			pstmt.setString(6, dto.gettPhone());
			
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
			
		}
		return su;
		
	}
	
	public int TheaterSit(TheaterSit dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO THEATERSIT(TCODE, TSCREENNO, TROW, TCOLUMN, TTOTALSIT) VALUES((SELECT MAX(TCODE) FROM THEATERINFO), ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.gettScreenNo());
			pstmt.setInt(2, dto.gettRow());
			pstmt.setInt(3, dto.gettColumn());
			pstmt.setInt(4, dto.gettTotalSit());
			
			
			
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
			
		}
		return su;
	}
	
	public ArrayList<TheaterInfo> ListTheater(){
		ArrayList<TheaterInfo> list = new ArrayList<TheaterInfo>();
		conn = DbSet.getConnection();
		sql = " SELECT T.TCODE, T.TNAME, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TPHONE, T.TSCREEN, T.TTOTALSIT FROM THEATERINFO T, ADDRESS A WHERE A.ACODE = T.ACODE";
				
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				TheaterInfo dto = new TheaterInfo();
				
				dto.settCode(rs.getInt(1));
				dto.settName(rs.getString(2));
				dto.setSido(rs.getString(3));
				dto.setGugun(rs.getString(4));
				dto.setDong(rs.getString(5));
				if(rs.getString(6) == null){
					dto.setRi("");
				}else{
					dto.setRi(rs.getString(6));
				}
				dto.settDetailAddr(rs.getString(7));
				dto.settPhone(rs.getString(8));
				dto.settScreen(rs.getInt(9));
				dto.settTotalSit(rs.getInt(10));
				
				list.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(rs, pstmt, conn);
		}
		return list;
	}
	public int DeleteTheater(int tCode){
		conn = DbSet.getConnection();
		sql = "DELETE FROM THEATERINFO WHERE TCODE=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, tCode);
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
		}
		return su;
	}
	
	public TheaterSit seatinfo(int ScreenNo, String tName){
		conn = DbSet.getConnection();
		sql = "SELECT TS.TROW, TS.TCOLUMN FROM THEATERSIT TS, THEATERINFO T WHERE T.TCODE = TS.TCODE AND TS.TSCREENNO=? AND T.TNAME=?";
		TheaterSit dto = new TheaterSit();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ScreenNo);
			pstmt.setString(2, tName);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				dto.settRow(rs.getInt(1));
				dto.settColumn(rs.getInt(2));
							
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(rs, pstmt, conn);
		}
		return dto;
		
	}
	
}
