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

}

