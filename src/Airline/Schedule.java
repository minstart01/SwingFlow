package Airline;

public class Schedule {
	int s_Code;
	int s_SeatTotal;	
	String s_DepDay;	
	String s_DeptTime;	
	String s_ArrtTime;	
	String s_FlightTime;	
	int c_Code;
	int c_Code2;
	int an_Code;

	public Schedule(){}
	
	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public int getS_SeatTotal() {
		return s_SeatTotal;
	}

	public void setS_SeatTotal(int s_SeatTotal) {
		this.s_SeatTotal = s_SeatTotal;
	}

	public String getS_DepDay() {
		return s_DepDay;
	}

	public void setS_DepDay(String s_DepDay) {
		this.s_DepDay = s_DepDay;
	}

	public String getS_DeptTime() {
		return s_DeptTime;
	}

	public void setS_DeptTime(String s_DeptTime) {
		this.s_DeptTime = s_DeptTime;
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

	public int getC_Code() {
		return c_Code;
	}

	public void setC_Code(int c_Code) {
		this.c_Code = c_Code;
	}

	public int getC_Code2() {
		return c_Code2;
	}

	public void setC_Code2(int c_Code2) {
		this.c_Code2 = c_Code2;
	}

	public int getAn_Code() {
		return an_Code;
	}

	public void setAn_Code(int an_Code) {
		this.an_Code = an_Code;
	}

	public Schedule(int s_Code, int s_SeatTotal, String s_DepDay,
			String s_DeptTime, String s_ArrtTime, String s_FlightTime,
			int c_Code, int c_Code2, int an_Code) {
		super();
		this.s_Code = s_Code;
		this.s_SeatTotal = s_SeatTotal;
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
		this.c_Code = c_Code;
		this.c_Code2 = c_Code2;
		this.an_Code = an_Code;
	}



	
	
}
