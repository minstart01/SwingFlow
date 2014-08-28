package Movie.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Common.Address;

public class MovieDAO {

	int num,su;
	String sql="";
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	public String a(){
		
		return "a";
	}
	
	public ArrayList<Address> zipSelect(String dong)	{
		ArrayList<Address> addrL = new ArrayList<Address>();
		conn = DbSet.getConnection();
		try {
		sql = "SELECT * FROM ADDRESS WHERE sido=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dong);
		rs = pstmt.executeQuery();
		
			if(rs.next()){
				Address addr = new Address();
				addr.setaCode(rs.getInt("acode"));
				addr.setZipcode(rs.getString("zipcode"));
				addr.setSido(rs.getString("sido"));
				addr.setGugun(rs.getString("gugun"));
				addr.setDong(rs.getString("dong"));
				addr.setRi(rs.getString("ri"));
				addr.setBunji(rs.getString("bunji"));
				
				addrL.add(addr);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		finally	{
			DbClose.close(rs, pstmt, conn);
		}
		return addrL;
	}
	
}
