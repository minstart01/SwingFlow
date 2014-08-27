package Airline;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Airline.DTO.Admin_list;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;

public class AdminDAO {
	Connection conn;
	String sql;
	PreparedStatement pstmt;
	ResultSet rs;
	public static AdminDAO getInstance(){
		AdminDAO aDao = new AdminDAO();
		return aDao;
	}
	
	public ArrayList<Admin_list> admin_list(){
		ArrayList<Admin_list> aDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		sql="SELECT pi.LNAME, pi.FNAME, pi.GENDER, c.C_DEPCITY, c.C_ARRCITY, f.FL_FARE, s.S_DEPTTIME, f.FL_SYS, p.P_NADULT,p.P_NCHILD, p.P_NINFANT FROM passengerinfo pi, city c, flight f, schedule s, passenger p, register r where pi.FL_NO=f.FL_NO and r.R_NO=c.R_NO and s.S_CODE=r.S_CODE and f.FL_NO=p.FL_NO";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Admin_list dto = new Admin_list();
				dto.setLname(rs.getString(1));
				dto.setFname(rs.getString(2));
				dto.setGender(rs.getString(3));
				dto.setC_depcity(rs.getString(4));
				dto.setC_arrcity(rs.getString(5));
				dto.setFl_fare(rs.getString(6));
				dto.setS_deptime(rs.getString(7));
				dto.setFl_sys(rs.getString(8));
				dto.setP_nadult(rs.getInt(9));
				dto.setP_nchild(rs.getInt(10));
				dto.setP_ninfant(rs.getInt(11));
				
				aDtoL.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn, rs);
		}
		
		
		return aDtoL;
	}
}
