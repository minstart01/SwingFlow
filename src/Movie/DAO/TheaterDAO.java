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
	
	
}
