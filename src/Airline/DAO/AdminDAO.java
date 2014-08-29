package Airline.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Airline.AdultF;
import Airline.ChildF;
import Airline.City;
import Airline.FlightNo;
import Airline.Register;
import Airline.Schedule;
import Airline.DTO.Admin_list;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;
import Airline.DTO.ScheduleListDTO;

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
 public int ScheduleIns(Schedule sch){
	 conn = DbSet.getConnection();
	 qsch="INSERT INTO SCHEDULE (s_Code, S_DEPDAY, S_DEPTTIME, S_ARRTTIME, S_FLIGHTTIME ) VALUES (scheseq.nextval,?,?,?,?)";
	// "INSERT INTO register VALUES (?,(select max(s_code) from schedule))";
	
	 try {
		pstmt = conn.prepareStatement(qsch);
		pstmt.setString(1, sch.getS_DepDay());
		pstmt.setString(2, sch.getS_DeptTime());
		pstmt.setString(3, sch.getS_ArrtTime());
		pstmt.setString(4, sch.getS_FlightTime());
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
 
 public int RegisterIns(Register reg){
	conn = DbSet.getConnection();
	try {
		pstmt = conn.prepareStatement("select max(s_code) from schedule");
		rs = pstmt.executeQuery();
		if (rs.next()) {
			maxSel = rs.getInt(1);
			pstmt = conn.prepareStatement("INSERT INTO register VALUES (registerseq.nextval,?)");
			pstmt.setInt(1, maxSel);
			su = pstmt.executeUpdate();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return su;	 
 }

 public int flightNoIns(FlightNo flno){
	conn = DbSet.getConnection();
	try {
		pstmt = conn.prepareStatement("INSERT INTO FLIGHTNO (R_NO, FN_AIR, R_SEATTOTAL, FN_NO ) VALUES  ( FlightNoseq.nextval, ?,?,? )");
		pstmt.setString(1, flno.getFn_air());
		pstmt.setInt(2, flno.getR_SeatTotal());
		pstmt.setString(3, flno.getFn_no());
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	return su;
} 

 public int cityIns(City city){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("INSERT INTO CITY (R_NO, C_DEPCITY, C_ARRCITY ) VALUES  ( cityseq.nextval, ?, ? )");
		pstmt.setString(1, city.getC_DepCity());
		pstmt.setString(2, city.getC_ArrCity());
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
 }

 public int adultIns(AdultF af){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("INSERT INTO ADULTF (R_NO, A_TRAVEL, A_BUSINESS, A_FIRST ) VALUES  ( AdultFseq.nextval, ?, ?, ?)");
		pstmt.setInt(1, af.getA_Travel());
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
 
 public int childIns(ChildF cf){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("INSERT INTO CHILDF (R_NO, C_TRAVEL, C_BUSINESS, C_FIRST ) VALUES  ( ChildFseq.nextval, ?, ?, ?)");
		pstmt.setInt(1, cf.getC_Travel());
		pstmt.setInt(2, cf.getC_Business());
		pstmt.setInt(3, cf.getC_First());
		su= pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn);
	}
	 return su;
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
 
 public ArrayList<ScheduleListDTO> schedule_list(){
	 ArrayList<ScheduleListDTO> sDtoL = new ArrayList<>();
	 conn = DbSet.getConnection();
	 sql="select r.r_No, fn.fn_air, fn.fn_no, c.c_DepCity, c.c_ArrCity, s.s_DeptTime, to_char(s.s_DepDay,'yyyy-mm-dd') from Register r, Schedule s,  City c, FlightNo fn where r.r_no=fn.r_no and r.r_no=c.r_no and r.s_code=s.s_code";
	
	 try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			ScheduleListDTO dto = new ScheduleListDTO();
	//		R_NO	FN_AIR	FN_NO	C_DEPCITY	C_ARRCITY	S_DEPTTIME	TO_CHAR(S.S_DEPDAY,'YYYY-MM-DD')	
			dto.setR_No(rs.getInt(1));
			dto.setFn_air(rs.getString(2));
			dto.setFn_no(rs.getString(3));
			dto.setC_DepCity(rs.getString(4));
			dto.setC_ArrCity(rs.getString(5));
			dto.setS_DeptTime(rs.getString(6));
			dto.setS_DepDay(rs.getString(7));
			
			sDtoL.add(dto);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 return sDtoL;
	 
 }
 select r.r_No, fn.fn_air, fn.fn_no, fn.r_SeatTotal, s.s_FlightTime, c.c_DepCity, c.c_ArrCity, af.a_Travel, af.a_business, af.a_first, 
 cf.c_travel, cf.c_business, cf.c_first,s.s_DeptTime, to_char(s.s_DepDay,'yyyy-mm-dd') 
 from Register r, Schedule s,  City c, FlightNo fn, AdultF af, ChildF cf 
 where r.r_no=fn.r_no and r.r_no=c.r_no and r.s_code=s.s_code and r.r_no=af.r_no and r.r_no=cf.r_no and r.r_no=18;

}

