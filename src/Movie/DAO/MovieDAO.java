package Movie.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Common.DTO.Address;
import Movie.DTO.*;


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

	/* 영화정보 등록 */
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
	
	/* 영화등록 */
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
	
	/* 상영시간표 등록 */
	public int PlayInfo(PlayInfo dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO PLAYINFO(MINO, PAREA, PPLAYSTART) VALUES((SELECT MAX(MINO) FROM MOVIEINSERT), ?, ?)";
		
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
	
	/* 요금정보 등록 */
	public int Charge(Charge dto){
		conn = DbSet.getConnection();
		sql = "INSERT INTO CHARGE(MINO, CTEEN, CADULT) VALUES((SELECT MAX(MINO) FROM MOVIEINSERT), ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getcTeen());
			pstmt.setInt(2, dto.getcAdult());
			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(pstmt, conn);
		}
		return su;
		
		
	}
	
	/* 예매 영화 조회 */
	public ArrayList<MovieInfo> MovieName(){
		ArrayList<MovieInfo> list =  new ArrayList<MovieInfo>();
		conn = DbSet.getConnection();
		sql = "SELECT DISTINCT MNAME FROM MOVIEINFO";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MovieInfo dto = new MovieInfo();
				dto.setmName(rs.getString(1));
				
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
	
	/* 예매 포스터 조회 */
	public String PosterIMG(String mName){
		conn = DbSet.getConnection();
		sql = "SELECT DISTINCT MPOSTER FROM MOVIEINFO WHERE MNAME = ?";
		String MovieName="";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mName);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MovieName = rs.getString(1);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DbClose.close(rs, pstmt, conn);
		}
		return MovieName;
	}
	
	public ArrayList<MovieInsert> SelTheater(String mName, String sido, String sido1, String sido2, String sido3){
		ArrayList<MovieInsert> list = new ArrayList<MovieInsert>();
		conn = DbSet.getConnection();
		if(("one").equals(sido1) && ("one").equals(sido2) && ("one").equals(sido3)){
			sql = "SELECT MI.MINO, T.TNAME FROM MOVIEINFO M, MOVIEINSERT MI, THEATERINFO T, ADDRESS A WHERE M.MCODE = MI.MCODE AND MI.TCODE = T.TCODE AND A.ACODE = T.ACODE AND M.MNAME = ? AND A.SIDO LIKE ?";
		}else if(("two").equals(sido2) && ("two").equals(sido3)){
			sql = "SELECT MI.MINO, T.TNAME FROM MOVIEINFO M, MOVIEINSERT MI, THEATERINFO T, ADDRESS A WHERE M.MCODE = MI.MCODE AND MI.TCODE = T.TCODE AND A.ACODE = T.ACODE AND M.MNAME = ? (A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}else if(("three").equals(sido3)){
			sql = "SELECT MI.MINO, T.TNAME FROM MOVIEINFO M, MOVIEINSERT MI, THEATERINFO T, ADDRESS A WHERE M.MCODE = MI.MCODE AND MI.TCODE = T.TCODE AND A.ACODE = T.ACODE AND M.MNAME = ?  (A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}else{
			sql = "SELECT MI.MINO, T.TNAME FROM MOVIEINFO M, MOVIEINSERT MI, THEATERINFO T, ADDRESS A WHERE M.MCODE = MI.MCODE AND MI.TCODE = T.TCODE AND A.ACODE = T.ACODE AND M.MNAME = ?  (A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ? OR A.SIDO LIKE ?)";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			
			if(("one").equals(sido1) && ("one").equals(sido2) && ("one").equals(sido3)){
				pstmt.setString(1, mName);
				pstmt.setString(2, "%" + sido + "%");
			}else if(("two").equals(sido2) && ("two").equals(sido3)){
				pstmt.setString(1, mName);
				pstmt.setString(2, "%" + sido + "%");
				pstmt.setString(3, "%" + sido1 + "%");
			}else if(("three").equals(sido3)){
				pstmt.setString(1, mName);
				pstmt.setString(2, "%" + sido + "%");
				pstmt.setString(3, "%" + sido1 + "%");
				pstmt.setString(4, "%" + sido2 + "%");
			}else{
				pstmt.setString(1, mName);
				pstmt.setString(2, "%" + sido + "%");
				pstmt.setString(3, "%" + sido1 + "%");
				pstmt.setString(4, "%" + sido2 + "%");
				pstmt.setString(5, "%" + sido3 + "%");
			}
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MovieInsert dto = new MovieInsert();
				dto.settName(rs.getString(2));
				
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
}
