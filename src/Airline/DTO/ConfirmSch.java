package Airline.DTO;

public class ConfirmSch {
	//C_NAME	S_DEPDAY	S_DEPTTIME	C_NAME	S_ARRTTIME	A_NAME	AN_NAME	S_FLIGHTTIME	S_CODE	
	String c_Name;
	String s_DepDay;
	String s_DeptTime;
	String c_Name1;
	String s_ArrtTime;
	String a_Name;
	String an_Name;
	String s_FlightTime;
	int s_Code;	
	
	public ConfirmSch() {
		// TODO Auto-generated constructor stub
	}

	public ConfirmSch(String a_Name, String an_Name, String c_Name,
			String s_DeptTime, String c_Name1, String s_ArrtTime,
			String s_FlightTime, int s_Code, String s_DepDay) {
		super();
		this.a_Name = a_Name;
		this.an_Name = an_Name;
		this.c_Name = c_Name;
		this.s_DeptTime = s_DeptTime;
		this.c_Name1 = c_Name1;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
		this.s_Code = s_Code;
		this.s_DepDay = s_DepDay;
	}

	public String getA_Name() {
		return a_Name;
	}

	public void setA_Name(String a_Name) {
		this.a_Name = a_Name;
	}

	public String getAn_Name() {
		return an_Name;
	}

	public void setAn_Name(String an_Name) {
		this.an_Name = an_Name;
	}

	public String getC_Name() {
		return c_Name;
	}

	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}

	public String getS_DeptTime() {
		return s_DeptTime;
	}

	public void setS_DeptTime(String s_DeptTime) {
		this.s_DeptTime = s_DeptTime;
	}

	public String getC_Name1() {
		return c_Name1;
	}

	public void setC_Name1(String c_Name1) {
		this.c_Name1 = c_Name1;
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

	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public String getS_DepDay() {
		return s_DepDay;
	}

	public void setS_DepDay(String s_DepDay) {
		this.s_DepDay = s_DepDay;
	}

}
