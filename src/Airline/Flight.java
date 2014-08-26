package Airline;

import java.sql.Date;

public class Flight {

	private int fl_No;
	private int mNo;
	private String fl_Fare;
	private Date fl_sys;
	private int s_Code;
	private int s_Code2;
	private int seat_No;
	
	Flight(){}

	public Flight(int fl_No, int mNo, String fl_Fare, Date fl_sys, int s_Code,
			int s_Code2, int seat_No) {
		super();
		this.fl_No = fl_No;
		this.mNo = mNo;
		this.fl_Fare = fl_Fare;
		this.fl_sys = fl_sys;
		this.s_Code = s_Code;
		this.s_Code2 = s_Code2;
		this.seat_No = seat_No;
	}

	public Flight(int mNo, String fl_Fare, Date fl_sys, int s_Code,
			int s_Code2, int seat_No) {
		super();
		this.mNo = mNo;
		this.fl_Fare = fl_Fare;
		this.fl_sys = fl_sys;
		this.s_Code = s_Code;
		this.s_Code2 = s_Code2;
		this.seat_No = seat_No;
	}

	public int getFl_No() {
		return fl_No;
	}

	public void setFl_No(int fl_No) {
		this.fl_No = fl_No;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getFl_Fare() {
		return fl_Fare;
	}

	public void setFl_Fare(String fl_Fare) {
		this.fl_Fare = fl_Fare;
	}

	public Date getFl_sys() {
		return fl_sys;
	}

	public void setFl_sys(Date fl_sys) {
		this.fl_sys = fl_sys;
	}

	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public int getS_Code2() {
		return s_Code2;
	}

	public void setS_Code2(int s_Code2) {
		this.s_Code2 = s_Code2;
	}

	public int getSeat_No() {
		return seat_No;
	}

	public void setSeat_No(int seat_No) {
		this.seat_No = seat_No;
	}
	
	public String toString(){
		return fl_No + " : " + mNo + " : " + fl_Fare + " : " + fl_sys + " : " + s_Code + " : " + s_Code2 + " : " + seat_No; 
	}
}
