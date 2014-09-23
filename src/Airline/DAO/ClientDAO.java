package Airline.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;








import Airline.DTO.ConfirmSch;
import Airline.DTO.DbClose;
import Airline.DTO.DbSet;
import Airline.DTO.Fare;
import Airline.DTO.Flight;
import Airline.DTO.FlightSearch;
import Airline.DTO.Member;





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
 /* 가는날 항공편 조회 */
 public ArrayList<FlightSearch> flightSel(String dCity,String aCity, String dDay){
	 conn = DbSet.getConnection();
	 ArrayList<FlightSearch> dtoL = new ArrayList<>();
	 sql="select a.a_name, an.an_name, c.c_Name, s.s_DeptTime, c1.c_name, s.s_ArrtTime, s.s_FlightTime, s.s_SeatTotal, s.s_code from airline a, airlineno an, city c, city c1, schedule s where a.a_code=an.a_code and an.an_Code=s.an_Code and s.c_Code=c.c_Code and c1.c_code=s.c_Code2 and s.s_depday=? and c.c_name=? and c1.c_name=?";
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
			dto.setS_Code(rs.getInt(9));
			
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

/*  오는편 항공편 조회  */
 public ArrayList<FlightSearch> flightSelarr(String dCity,String aCity, String aDay){
	 conn = DbSet.getConnection();
	 ArrayList<FlightSearch> dtoL = new ArrayList<>();
	 sql="select a.a_name, an.an_name, c.c_Name, s.s_DeptTime, c1.c_name, s.s_ArrtTime, s.s_FlightTime, s.s_SeatTotal,s.s_code from airline a, airlineno an, city c, city c1, schedule s where a.a_code=an.a_code and an.an_Code=s.an_Code and s.c_Code=c.c_Code and c1.c_code=s.c_Code2 and s.s_depday=? and c.c_name=? and c1.c_name=?";
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,aDay );
		pstmt.setString(2, aCity);
		pstmt.setString(3, dCity);
	
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
			dto.setS_Code(rs.getInt(9));
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

 /*  운임 계산   */
	public ArrayList<Fare> fareCount(int scode, String grade) {
		conn = DbSet.getConnection();
		ArrayList<Fare> dtoL = new ArrayList<>();
		sql = "select af.a_" + grade + ", cf.c_"+grade+" from schedule s, adultf af, childf cf where s.s_code=af.s_code and s.s_code=cf.s_code and s.s_code=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, scode);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Fare dto = new Fare();
				// A_TRAVEL A_BUSINESS A_FIRST C_TRAVEL C_BUSINESS C_FIRST

				dto.setA_grade(rs.getInt(1));
				dto.setC_grade(rs.getInt(2));

				dtoL.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}

		return dtoL;

	}
	
	public ArrayList<Fare> fareCountRe(int scode1, String grade) {
		conn = DbSet.getConnection();
		ArrayList<Fare> dtoL = new ArrayList<>();
		sql = "select af.a_" + grade + ", cf.c_"+grade+" from schedule s, adultf af, childf cf where s.s_code=af.s_code and s.s_code=cf.s_code and s.s_code=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, scode1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Fare dto = new Fare();
				// A_TRAVEL A_BUSINESS A_FIRST C_TRAVEL C_BUSINESS C_FIRST

				dto.setA_grade(rs.getInt(1));
				dto.setC_grade(rs.getInt(2));

				dtoL.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn, rs);
		}

		return dtoL;

	}	
	/* 가는날/ 오는날 확인 */
	public ConfirmSch confirmSch(int s_code){
		conn = DbSet.getConnection();
		ConfirmSch dto = new ConfirmSch();
		sql="select c.c_Name, to_char(s.S_DEPDAY,'yyyy-mm-dd'), s.S_DEPTTIME, c1.c_name, s.s_arrttime, a.a_name, an.an_Name, s.s_flightTime, s.s_code from city c, city c1, schedule s, airline a, airlineno an where c.c_code=s.c_code and c1.c_code=s.c_Code2 and a.a_Code=an.a_Code and an.an_Code=s.an_Code and s.s_code=?";
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, s_code);
			rs = pstmt.executeQuery();
			while(rs.next()){
				dto.setC_Name(rs.getString(1));
				dto.setS_DepDay(rs.getString(2));
				dto.setS_DeptTime(rs.getString(3));
				dto.setC_Name1(rs.getString(4));
				dto.setS_ArrtTime(rs.getString(5));
				dto.setA_Name(rs.getString(6));
				dto.setAn_Name(rs.getString(7));
				dto.setS_FlightTime(rs.getString(8));
				dto.setS_Code(rs.getInt(9));				
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn, rs);
		}				
		return dto;
	}
	
	public ConfirmSch confirmSch1(int s_code1){
		conn = DbSet.getConnection();
		ConfirmSch dto = new ConfirmSch();
		sql="select c.c_Name, to_char(s.S_DEPDAY,'yyyy-mm-dd'), s.S_DEPTTIME, c1.c_name, s.s_arrttime, a.a_name, an.an_Name, s.s_flightTime, s.s_code from city c, city c1, schedule s, airline a, airlineno an where c.c_code=s.c_code and c1.c_code=s.c_Code2 and a.a_Code=an.a_Code and an.an_Code=s.an_Code and s.s_code=?";
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, s_code1);
			rs = pstmt.executeQuery();
			while(rs.next()){
				dto.setC_Name(rs.getString(1));
				dto.setS_DepDay(rs.getString(2));
				dto.setS_DeptTime(rs.getString(3));
				dto.setC_Name1(rs.getString(4));
				dto.setS_ArrtTime(rs.getString(5));
				dto.setA_Name(rs.getString(6));
				dto.setAn_Name(rs.getString(7));
				dto.setS_FlightTime(rs.getString(8));
				dto.setS_Code(rs.getInt(9));				
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn, rs);
		}				
		return dto;
	}
	/* 회원정보 불러오기  */
	
	public Member memberSel(String mid){
		conn = DbSet.getConnection();
		Member dto = new Member();
		sql="select mno, mname, scode from member where mid=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			while(rs.next()){
				dto.setMno(rs.getInt(1));
				dto.setMname(rs.getString(2));
				dto.setScode(rs.getInt(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn, rs);
		}

		return dto;
		}

	/*  항공편 예약  */
	public int flightIns(Flight dto){
		conn = DbSet.getConnection();
		sql="INSERT INTO FLIGHT (FL_NO, MNO, FL_FARE, FL_SYS, S_CODE, S_CODE2, SEAT_NO ) VALUES  ( flightseq.nextval, ?, ?,sysdate ,? ,? ,?  )";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getmNo());
			pstmt.setString(2, dto.getFl_Fare());
			pstmt.setInt(3, dto.getS_Code());
			pstmt.setInt(4, dto.getS_Code2());
			pstmt.setInt(5, dto.getSeat_No());
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbClose.close(pstmt, conn);
		}
		return su;
	}
	 
}

