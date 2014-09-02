package Airline.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Airline.AdultF;
import Airline.ChildF;
import Airline.City;
import Airline.Flight;
import Airline.FlightNo;
import Airline.Register;
import Airline.Schedule;
import Airline.DTO.Admin_list;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;
import Airline.DTO.FlightSearchDTO;
import Airline.DTO.ScheduleDetailDTO;
import Airline.DTO.ScheduleListDTO;

public class ClientDAO {
 Connection conn;
 String sql;
 PreparedStatement pstmt;
 ResultSet rs;
 String qsch;
 String qreg; 
 int maxSel;
 int su=0;
 int su01=0;
 
 public static ClientDAO getInstance(){
  ClientDAO aDao = new ClientDAO();
  return aDao;
 }
 public int flightIns(Flight flight){
	 conn = DbSet.getConnection();
	 sql="INSERT INTO FLIGHT (FL_NO, MNO, FL_FARE, FL_SYS, S_CODE, S_CODE2, SEAT_NO ) VALUES  ( flightseq.nextval , ?, 333, sysdate, ?, ?, ? )";
	
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, flight.getmNo());
		pstmt.setInt(2, flight.getS_Code());
		pstmt.setInt(3, flight.getS_Code2());
		pstmt.setInt(4, flight.getSeat_No());
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 
	 return su;
 }
 
 public ArrayList<FlightSearchDTO> flightSearch(String dCity, String aCity, String dDay){
	 ArrayList<FlightSearchDTO> fDtoL = new ArrayList<>();
	 conn = DbSet.getConnection();
	  sql="select fl.fn_air, c.c_DepCity, s.s_DeptTime, c.c_ArrCity, s.s_ArrtTime, fl.fn_no, s.s_FlightTime, fl.r_SeatTotal from FlightNo fl, city c, Schedule s, register r"+
			  "where s.s_Code = r.s_Code and r.r_No = fl.r_No and c.r_No = r.r_No and c.c_DepCity=? and c.c_ArrCity=? and s.s_DepDay=?";
	  try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dCity);
		pstmt.setString(2, aCity);
		pstmt.setString(3, dCity);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			FlightSearchDTO dto = new FlightSearchDTO();
			dto.setFn_air(rs.getString(1));
			dto.setC_DepCity(rs.getString(2));
			dto.setS_DeptTime(rs.getString(3));
			dto.setC_ArrCity(rs.getString(4));
			dto.setS_ArrtTime(rs.getString(5));
			dto.setR_SeatTotal(rs.getInt(6));
			dto.setR_No(rs.getInt(7));
			dto.setS_Code(rs.getInt(8));
			
			fDtoL.add(dto);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return fDtoL;
	 
 }
}

