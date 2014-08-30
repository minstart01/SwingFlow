package Movie.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Common.DTO.Address;

public class MovieDAO {

	int num,su;
	String sql="";
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	/* 영화관 검색 */
	public ArrayList<Address> SelectAddr(String sido, String sido1){		
		ArrayList<Address> list = new ArrayList<Address>();
		conn = DbSet.getConnection();
		if(("one").equals(sido1)){
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and A.sido like ?";
		}else{
			sql = "SELECT T.TCODE, T.TNAME, A.ZIPCODE, A.SIDO, A.GUGUN, A.DONG, A.RI, T.TDETAILADDR, T.TSCREEN, T.TTOTALSIT, T.TPHONE FROM THEATERINFO T, ADDRESS A WHERE T.ACODE = A.ACODE and (A.sido like ? or A.sido like ?)";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			
			if(("one").equals(sido1)){
				pstmt.setString(1, "%" + sido + "%");
			}else{
				pstmt.setString(1, "%" + sido + "%");
				pstmt.setString(2, "%" + sido1 + "%");
			}
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Address dto = new Address();
				
				dto.settCode(rs.getInt("T.TCODE"));
				dto.settName(rs.getString("T.TNAME"));
			/*	dto.setaCode(rs.getInt("A.aCode"));*/
				dto.setZipcode(rs.getString("A.ZIPCODE"));
				dto.setSido(rs.getString("A.SIDO"));
				dto.setGugun(rs.getString("A.GUGUN"));
				dto.setDong(rs.getString("A.DONG"));
				dto.settDetailAddr(rs.getString("T.TDETAILADDR"));
				dto.settScreen(rs.getInt("T.TSCREEN"));
				dto.settTotalSit(rs.getInt("T.TTOTALSIT"));
				dto.settPhone(rs.getString("T.TPHONE"));
				if(rs.getString("A.RI") != null){
					dto.setRi(rs.getString("A.RI"));
				}else{
					dto.setRi("");
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
	
}
