package Airline;

import java.sql.Date;

public class Schedule {
	private int s_Code;
	private java.sql.Date s_DepDay;	
	private String s_DeptTime;	
	private java.sql.Date s_ArrDay;	
	private String s_ArrtTime;	
	private String s_FlightTime;
	
	public Schedule(int s_Code, Date s_DepDay, String s_DeptTime,
			Date s_ArrDay, String s_ArrtTime, String s_FlightTime) {
		super();
		this.s_Code = s_Code;
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
		this.s_ArrDay = s_ArrDay;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
	}
	public Schedule( Date s_DepDay, String s_DeptTime,
			Date s_ArrDay, String s_ArrtTime, String s_FlightTime) {
		super();
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
		this.s_ArrDay = s_ArrDay;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
	}

	public Schedule(){}
	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public java.sql.Date getS_DepDay() {
		return s_DepDay;
	}

	public void setS_DepDay(java.sql.Date s_DepDay) {
		this.s_DepDay = s_DepDay;
	}

	public String getS_DeptTime() {
		return s_DeptTime;
	}

	public void setS_DeptTime(String s_DeptTime) {
		this.s_DeptTime = s_DeptTime;
	}

	public java.sql.Date getS_ArrDay() {
		return s_ArrDay;
	}

	public void setS_ArrDay(java.sql.Date s_ArrDay) {
		this.s_ArrDay = s_ArrDay;
	}

	public String getS_ArrtTime() {
		return s_ArrtTime;
	}

	public void setS_ArrtTime(String s_ArrtTime) {
		this.s_ArrtTime = s_ArrtTime;
	}

	public String getS_FlightTime() {
		return s_FlightTime;
	}

	public void setS_FlightTime(String s_FlightTime) {
		this.s_FlightTime = s_FlightTime;
	}
public String toString(){
	return this.s_Code +":" + this.s_DepDay + "," + this.s_DeptTime + "," + this.s_ArrDay + "," + this.s_ArrtTime + "," + this.s_FlightTime;	
}

}
