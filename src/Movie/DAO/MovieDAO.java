package Movie.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Common.DTO.Address;
import Movie.DTO.MovieInfo;
import Movie.DTO.MovieInsert;
import Movie.DTO.PlayInfo;

public class MovieDAO {

	int num,su;
	String sql="";
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	/* 영화관 검색 */
	public ArrayList<Address> SelectAddr(String sido, String sido1, String sido2, String sido3){		
		ArrayList<Address> list = new ArrayList<Address>();
		conn = DbSet.getConnection();
		if(("one").equals(sido1) && ("one").equals(sido2) && ("one").equals(sido3)){
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and A.sido like ?";
		}else if(("two").equals(sido2) && ("two").equals(sido3)){
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and (A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}else if(("three").equals(sido3)){
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and (A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}else{
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and (A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			
			if(("one").equals(sido1) && ("one").equals(sido2) && ("one").equals(sido3)){
				pstmt.setString(1, "%" + sido + "%");
			}else if(("two").equals(sido2) && ("two").equals(sido3)){
				pstmt.setString(1, "%" + sido + "%");
				pstmt.setString(2, "%" + sido1 + "%");
			}else if(("three").equals(sido3)){
				pstmt.setString(1, "%" + sido + "%");
				pstmt.setString(2, "%" + sido1 + "%");
				pstmt.setString(3, "%" + sido2 + "%");
			}else{
				pstmt.setString(1, "%" + sido + "%");
				pstmt.setString(2, "%" + sido1 + "%");
				pstmt.setString(3, "%" + sido2 + "%");
				pstmt.setString(4, "%" + sido3 + "%");
			}
			
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Address dto = new Address();
				
				dto.settCode(rs.getInt("TCODE"));
				dto.settName(rs.getString("TNAME"));
			/*	dto.setaCode(rs.getInt("A.aCode"));*/
				dto.setZipcode(rs.getString("ZIPCODE"));
				dto.setSido(rs.getString("SIDO"));
				dto.setGugun(rs.getString("GUGUN"));
				dto.setDong(rs.getString("DONG"));
				dto.settDetailAddr(rs.getString("TDETAILADDR"));
				dto.settScreen(rs.getInt("TSCREEN"));
				dto.settTotalSit(rs.getInt("TTOTALSIT"));
				dto.settPhone(rs.getString("TPHONE"));
				
				if(rs.getString("RI") != null){
					dto.setRi(rs.getString("RI"));
					dto.setFulladdr(rs.getString("SIDO") + " " + rs.getString("GUGUN") + " " + rs.getString("DONG") + " " + rs.getString("RI"));
					
				}else{
					dto.setRi("");
					dto.setFulladdr(rs.getString("SIDO") + " " + rs.getString("GUGUN") + " " + rs.getString("DONG"));
				}
				
				
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

	public int MovieInfo(MovieInfo dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO MOVIEINFO(MCODE, MNAME, MPOSTER, MGENRE, MDIRECTOR, MTIME, MACTOR, SCODE, MPLAYDATE) VALUES(MOVIENO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, TO_DATE(?, 'YYYYMMDD'))";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, dto.getmName());
			pstmt.setString(2, dto.getmPoster());
			pstmt.setString(3, dto.getmGenre());
			pstmt.setString(4, dto.getmDirector());
			pstmt.setString(5, dto.getmTime());
			pstmt.setString(6, dto.getmActor());
			pstmt.setInt(7, dto.getsCode());
			pstmt.setString(8, dto.getmPlayDate());
			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
		}
		return su;

	}
	
	public int MovieInsert(MovieInsert dto){
		
		conn = DbSet.getConnection();
		sql = "INSERT INTO MOVIEINSERT(MINO, MCODE, TCODE, MSTART, MEND) VALUES(MOVIESEQ.NEXTVAL, (SELECT MAX(MCODE) FROM MOVIEINFO),?, TO_DATE(?,'YYYYMMDD'), TO_DATE(?,'YYYYMMDD'))";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
	
			pstmt.setInt(1, dto.gettCode());
			pstmt.setString(2, dto.getmStart());
			pstmt.setString(3, dto.getmEnd());
			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
		}
		return su;

	}
	
	public int PlayInfo(PlayInfo dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO PLAYINFO(MINO, PAREA, PPLAYSTART) VALUES((select max(mino) from movieinsert), ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getpArea());
			pstmt.setString(2, dto.getpPlayStart());
			
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
