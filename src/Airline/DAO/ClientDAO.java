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
import Airline.DTO.FlightSearch;
import Airline.DTO.ScheduleList;



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
 
 public ArrayList<FlightSearch> flightSel(String dCity,String aCity, String dDay){
	 conn = DbSet.getConnection();
	 ArrayList<FlightSearch> dtoL = new ArrayList<>();
	 sql="select a.a_name, an.an_name, c.c_Name, s.s_DeptTime, c1.c_name, s.s_ArrtTime, s.s_FlightTime, s.s_SeatTotal from airline a, airlineno an, city c, city c1, schedule s where a.a_code=an.a_code and an.an_Code=s.an_Code and s.c_Code=c.c_Code and c1.c_code=s.c_Code2 and s.s_depday=? and c.c_name=? and c1.c_name=?";
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,dDay );
		pstmt.setString(2, dCity);
		pstmt.setString(3, aCity);
	
		rs = pstmt.executeQuery();
		while(rs.next()){
			FlightSearch dto = new FlightSearch();
		//	A_NAME	AN_NAME	C_NAME	S_DEPTTIME	C_NAME	S_ARRTTIME	S_FLIGHTTIME	S_SEATTOTAL	

			dto.setA_Name(rs.getString(1));
			dto.setAn_Name(rs.getString(2));
			dto.setC_Name(rs.getString(3));
			dto.setS_DeptTime(rs.getString(4));
			dto.setC_Name1(rs.getString(5));
			dto.setS_ArrtTime(rs.getString(6));
			dto.setS_FlightTime(rs.getString(7));
			dto.setS_SeatTotal(rs.getInt(8));
			
			dtoL.add(dto);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DbClose.close(pstmt, conn, rs);
	}
	return dtoL;
	 
 }

 

}

