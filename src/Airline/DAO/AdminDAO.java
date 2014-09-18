package Airline.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Airline.AdultF;
import Airline.Airline;
import Airline.AirlineNo;
import Airline.ChildF;
import Airline.City;
import Airline.Nation;
import Airline.Schedule;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;
import Airline.DTO.ScheduleList;



public class AdminDAO {
 Connection conn;
 String sql;
 PreparedStatement pstmt;
 ResultSet rs;
 String qsch;
 String qreg; 
 int maxSel;
 int su=0;
 int su01=0;
 
 public static AdminDAO getInstance(){
  AdminDAO aDao = new AdminDAO();
  return aDao;
 }
 
 public int airlineIns(String airline){
	 conn = DbSet.getConnection();
	 sql="INSERT INTO AIRLINE (A_CODE, A_NAME ) VALUES  ( airlineseq.nextval, ? )";
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, airline);
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	return su;
 }
 

 
public ArrayList<Airline> airlineSel() {
		ArrayList<Airline> nDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		sql = "select * from airline";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Airline dto = new Airline();
				dto.setA_Code(rs.getInt(1));
				dto.setA_Name(rs.getString(2));
				nDtoL.add(dto);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}
		return nDtoL;
	}

public ArrayList<AirlineNo> airlineNoaCodeSel(int acode) {
	ArrayList<AirlineNo> cDtoL = new ArrayList<>();
	conn = DbSet.getConnection();
	
	sql = "select * from airlineno where a_Code=?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, acode);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			AirlineNo dto = new AirlineNo();
		//	AN_CODE	AN_NO	AN_SEATTOTAL	A_CODE	

			dto.setAn_Code(rs.getInt(1));
			dto.setAn_Name(rs.getString(2));
			cDtoL.add(dto);
		}

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		DbClose.close(pstmt, conn, rs);
	}
	return cDtoL;
}
 
 public int nationIns(String nation){
	 conn = DbSet.getConnection();
	 sql="INSERT INTO NATION (N_CODE, N_NAME ) VALUES  ( nationseq.nextval, ? )";
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, nation);
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	return su;	 
 }
 
	public ArrayList<Nation> nationSel() {
		ArrayList<Nation> nDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		sql = "select * from nation";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Nation dto = new Nation();
				dto.setN_Code(rs.getInt(1));
				dto.setN_Name(rs.getString(2));
				nDtoL.add(dto);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}
		return nDtoL;
	}
	
	public ArrayList<City> citynCodeSel(int ncode) {
		ArrayList<City> cDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		
		sql = "select * from city where n_Code=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ncode);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				City dto = new City();
				dto.setC_Code(rs.getInt(1));
				dto.setC_Name(rs.getString(2));
				cDtoL.add(dto);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}
		return cDtoL;
	}
	
	public ArrayList<AirlineNo> airlineNoSel() {
		ArrayList<AirlineNo> cDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		sql = "select * from AirlineNo";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				AirlineNo airlineNo = new AirlineNo();
				airlineNo.setAn_Code(rs.getInt(1));
				airlineNo.setAn_Name(rs.getString(2));
				airlineNo.setA_Code(rs.getInt(3));


		cDtoL.add(airlineNo);
		
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}
		return cDtoL;
	}
	
	public ArrayList<City> citySel() {
		ArrayList<City> cDtoL = new ArrayList<>();
		conn = DbSet.getConnection();
		sql = "select * from city";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				City dto = new City();
		dto.setC_Code(rs.getInt(1));
		dto.setC_Name(rs.getString(2));
		dto.setN_Code(rs.getInt(3));
		cDtoL.add(dto);
		
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}
		return cDtoL;
	}
///////////////////////////////////////////////////////////////////////////////////////////////////// 
	 public int cityIns(String city, int nCode){
		 conn = DbSet.getConnection();

		 sql="INSERT INTO CITY (C_CODE, C_NAME, N_CODE ) VALUES  ( cityseq.nextval, ?, ? )";
		 try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, city);
			pstmt.setInt(2, nCode);
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn);
		}
		return su;	 
	 }
	 
	 public int airlineNoIns(String aName, int aCode){
		 conn = DbSet.getConnection();

		 sql="INSERT INTO AIRLINENO (AN_CODE, AN_NAME, A_CODE ) VALUES  ( airlinenoseq.nextval,?,? )";
		 try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aName);
			pstmt.setInt(2, aCode);
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn);
		}
		return su;	 
	 }
//========================스케줄 입력========================	 
 public int ScheduleIns(Schedule sch){
	 conn = DbSet.getConnection();
	 qsch="INSERT INTO SCHEDULE (S_CODE, S_SEATTOTAL, S_DEPDAY, S_DEPTTIME, S_ARRTTIME, S_FLIGHTTIME, C_CODE, C_CODE2, AN_CODE ) VALUES  ( scheseq.nextval, ?,?, ?, ?, ?, ?,?, ? )";
	// S_SEATTOTAL	S_DEPDAY	S_DEPTTIME	S_ARRTTIME	S_FLIGHTTIME	C_CODE	C_CODE2	AN_CODE	
 try {
		pstmt = conn.prepareStatement(qsch);
		pstmt.setInt(1, sch.getS_SeatTotal());
		pstmt.setString(2, sch.getS_DepDay());
		pstmt.setString(3, sch.getS_DeptTime());
		pstmt.setString(4, sch.getS_ArrtTime());
		pstmt.setString(5, sch.getS_FlightTime());
		pstmt.setInt(6, sch.getC_Code());
		pstmt.setInt(7, sch.getC_Code2());
		pstmt.setInt(8, sch.getAn_Code());		
		su = pstmt.executeUpdate();	
	} 
	 catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	return su;	 
 }

/*=======================성인 요금======================================*/
 public int adultIns(AdultF af){
	 conn = DbSet.getConnection();
	 try {
	
		pstmt = conn.prepareStatement("INSERT INTO ADULTF (S_CODE, A_TRAVEL, A_BUSINESS, A_FIRST ) VALUES  ((select max(s_code) from schedule),? ,? ,?  )");
		
		pstmt.setInt(1,af.getA_Travel());
		pstmt.setInt(2, af.getA_Business());
		pstmt.setInt(3, af.getA_First());
		su= pstmt.executeUpdate();
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
 }
 
 public int adultUpd(AdultF af){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("UPDATE ADULTF SET A_TRAVEL = ?, A_BUSINESS = ?, A_FIRST = ? WHERE r_no = ?");
		pstmt.setInt(1, af.getA_Travel());
		pstmt.setInt(2, af.getA_Business());
		pstmt.setInt(3, af.getA_First());
		pstmt.setInt(4, af.getS_Code());
		su= pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
 }
 /*=======================소아 요금======================================*/
 public int childIns(ChildF cf){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("select max(s_code) from schedule");
		rs = pstmt.executeQuery();
		while (rs.next()) {
			maxSel = rs.getInt(1);
			pstmt = conn.prepareStatement("INSERT INTO childF (S_CODE, c_TRAVEL, c_BUSINESS, c_FIRST ) VALUES  ( ?,? ,? ,?  )");
			pstmt.setInt(1, maxSel);
			pstmt.setInt(2,cf.getC_Travel() );
			pstmt.setInt(3, cf.getC_Business());
			pstmt.setInt(4, cf.getC_First());
			su= pstmt.executeUpdate();
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
 }
 
 public int ChildUpd(ChildF cf){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("UPDATE CHILDF SET C_TRAVEL = ?, C_BUSINESS = ?, C_FIRST = ? WHERE r_no = ?");
		pstmt.setInt(1, cf.getC_Travel());
		pstmt.setInt(2, cf.getC_Business());
		pstmt.setInt(3, cf.getC_First());
		pstmt.setInt(4, cf.getS_Code());
		su= pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
 }
 

 public int sDelete(int s_code){
	conn = DbSet.getConnection();
	sql="DELETE FROM SCHEDULE WHERE S_CODE = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, s_code);
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally{
		DbClose.close(pstmt, conn );
	}

	return su;
	
}

public ArrayList<ScheduleList> scheduleList(){
	conn= Movie.DAO.DbSet.getConnection();
	sql="select a.A_NAME, an.an_name, c.c_name, c1.c_name, s.S_DEPTTIME, to_char(s.S_DEPDAY,'yyyy-mm-dd'), s.S_SEATTOTAL from airline a, airlineno an, city c, schedule s, city c1 where a.a_code = an.a_code and an.an_code = s.an_code and c.c_code = s.c_code and c1.c_code = s.c_code2";
	ArrayList<ScheduleList> dtoL = new ArrayList<>();
	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			
			ScheduleList dto = new ScheduleList();
			dto.setA_Name(rs.getString(1));
			dto.setAn_Name(rs.getString(2));
			dto.setC_DeptName(rs.getString(3));
			dto.setC_ArrtName(rs.getString(4));
			dto.setS_DeptTime(rs.getString(5));
			dto.setS_DepDay(rs.getString(6));
			dto.setS_Seattotal(rs.getInt(7));
			
			dtoL.add(dto);
			
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally{DbClose.close(pstmt, conn, rs);
	}
	
	return dtoL;
}

}

