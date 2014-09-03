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
import Airline.FlightNo;
import Airline.Nation;
import Airline.Register;
import Airline.Schedule;
import Airline.DTO.Admin_list;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;
import Airline.DTO.ScheduleDetailDTO;
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
 
 public int airlineNoIns(String aName, int aCode){
	 conn = DbSet.getConnection();

	 sql="INSERT INTO AIRLINENO (AN_CODE, AN_NAME, AN_SEATTOTAL, A_CODE ) VALUES  (airlineseq.nextval ,? ,30 ,?  )";
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
				airlineNo.setA_Code(rs.getInt(1));
				airlineNo.setAn_Code(rs.getInt(2));
				airlineNo.setAn_Name(rs.getString(3));
				airlineNo.setAn_SeatTotal(rs.getInt(4));

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
 
 public int ScheduleUpd(Schedule sch){
	 conn = DbSet.getConnection();
	 qsch="UPDATE SCHEDULE SET S_DEPDAY =?, S_DEPTTIME = ?, S_ARRTTIME = ?, S_FLIGHTTIME = ? WHERE S_CODE = ?";
	// "INSERT INTO register VALUES (?,(select max(s_code) from schedule))";
	
	 try {
		pstmt = conn.prepareStatement(qsch);
		pstmt.setString(1, sch.getS_DepDay());
		pstmt.setString(2, sch.getS_DeptTime());
		pstmt.setString(3, sch.getS_ArrtTime());
		pstmt.setString(4, sch.getS_FlightTime());
		pstmt.setInt(5, sch.getS_Code());
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
 
 public int flightNoUpd(FlightNo flno){
	conn = DbSet.getConnection();
	try {
		pstmt = conn.prepareStatement("UPDATE FLIGHTNO SET FN_AIR = ?, R_SEATTOTAL = ?, FN_NO = ? WHERE R_NO = ?");
		pstmt.setString(1, flno.getFn_air());
		pstmt.setInt(2, flno.getR_SeatTotal());
		pstmt.setString(3, flno.getFn_no());
		pstmt.setInt(4, flno.getR_No());
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
 
 public int adultUpd(AdultF af){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("UPDATE ADULTF SET A_TRAVEL = ?, A_BUSINESS = ?, A_FIRST = ? WHERE r_no = ?");
		pstmt.setInt(1, af.getA_Travel());
		pstmt.setInt(2, af.getA_Business());
		pstmt.setInt(3, af.getA_First());
		pstmt.setInt(4, af.getR_No());
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
 
 public int ChildUpd(ChildF cf){
	 conn = DbSet.getConnection();
	 try {
		pstmt = conn.prepareStatement("UPDATE CHILDF SET C_TRAVEL = ?, C_BUSINESS = ?, C_FIRST = ? WHERE r_no = ?");
		pstmt.setInt(1, cf.getC_Travel());
		pstmt.setInt(2, cf.getC_Business());
		pstmt.setInt(3, cf.getC_First());
		pstmt.setInt(4, cf.getR_No());
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
 
public ScheduleDetailDTO sDetail(int v_no){
	ScheduleDetailDTO dto = new ScheduleDetailDTO();
     conn = DbSet.getConnection();
	sql=" select r.r_No, fn.fn_air, fn.fn_no, fn.r_SeatTotal, s.s_FlightTime, c.c_DepCity, c.c_ArrCity, af.a_Travel, af.a_business, af.a_first, cf.c_travel, cf.c_business, cf.c_first,"
			+ "s.s_DeptTime, s.s_ArrtTime, to_char(s.s_DepDay,'yyyy-mm-dd'),s.s_code from Register r, Schedule s,  City c, FlightNo fn, AdultF af, ChildF cf where r.r_no=fn.r_no and r.r_no=c.r_no and r.s_code=s.s_code and r.r_no=af.r_no and r.r_no=cf.r_no and r.r_no=?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, v_no);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			dto.setR_No(rs.getInt(1));
			dto.setFn_air(rs.getString(2));
			dto.setFn_no(rs.getString(3));
			dto.setR_SeatTotal(rs.getInt(4));
			dto.setS_FlightTime(rs.getString(5));
			dto.setC_DepCity(rs.getString(6));
			dto.setC_ArrCity(rs.getString(7));
			dto.setA_Travel(rs.getInt(8));
			dto.setA_Business(rs.getInt(9));
			dto.setA_First(rs.getInt(10));
			dto.setC_Travel(rs.getInt(11));
			dto.setC_Business(rs.getInt(12));
			dto.setC_First(rs.getInt(13));
			dto.setS_DeptTime(rs.getString(14));
			dto.setS_ArrtTime(rs.getString(15));
			dto.setS_DepDay(rs.getString(16));
			dto.setS_Code(rs.getInt(17));			
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally{
		DbClose.close(pstmt, conn, rs);
	}	
	return dto;
	
}

public int rDelete(int v_no){
	conn = DbSet.getConnection();
	sql="DELETE FROM REGISTER WHERE R_NO = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, v_no);
		su = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally{
		DbClose.close(pstmt, conn );
	}

	return su;
	
}

}

