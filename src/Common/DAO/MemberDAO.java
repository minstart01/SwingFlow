package Common.DAO;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Common.DTO.Address;
import Movie.DAO.DbClose;
import Movie.DAO.DbSet;



public class MemberDAO {
	
	int num,su;
	String sql="";
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	public int Join(Common.DTO.Join member){
		conn = DbSet.getConnection();
		sql = "INSERT INTO MEMBER(MNO, MID, MPWD, MNAME, SCODE, MBIRTH, BCODE, ACODE, MDETAILADDR, MEMAIL, ECODE, MPHONE, PCODE, MCODE, MJOINDATE) VALUES (MEMBERNO.NEXTVAL, ? , ?, ?, ?, TO_DATE(?,'YYYY-MM-DD'), ?, ?, ?, ?, ?, ?, ?, sysdate)";
			try {
			pstmt = conn.prepareStatement(sql);
	 
			pstmt.setString(1, member.getmName());
			pstmt.setString(2, member.getmPwd());
			pstmt.setString(3, member.getmName());
			pstmt.setInt(4, member.getsCode());
			pstmt.setString(5, member.getmBirth());
			pstmt.setInt(6, member.getbCode());
			pstmt.setInt(7, member.getaCode());
			pstmt.setString(8, member.getmDetailAddr());
			pstmt.setString(9, member.getmEmail());
			pstmt.setInt(10, member.geteCode());
			pstmt.setString(11, member.getmPhone());
			pstmt.setInt(12, member.getpCode());
			
				
				su = pstmt.executeUpdate();
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn);
		}
			
		return su;
	}
	
	public ArrayList<Address> SelectAddr(String dong){
		ArrayList<Address> list = new ArrayList<Address>();
		conn = DbSet.getConnection();
		sql = "SELECT * FROM ADDRESS where DONG like ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + dong + "%");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Address dto = new Address();
				
				dto.setaCode(rs.getInt("aCode"));
				dto.setZipcode(rs.getString("ZIPCODE"));
				dto.setSido(rs.getString("SIDO"));
				dto.setGugun(rs.getString("GUGUN"));
				dto.setDong(rs.getString("DONG"));
				if(rs.getString("RI") != null){
					dto.setRi(rs.getString("RI"));
				}else{
					dto.setRi("");
				}
				if(rs.getString("BUNJI") != null){
					dto.setBunji(rs.getString("BUNJI"));
				}else{
					dto.setBunji("");
					
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
