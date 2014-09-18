package Airline.DTO;

public class FlightSearch {

	public FlightSearch() {
		// TODO Auto-generated constructor stub
	}
	String a_Name;
	String an_Name;
	String c_Name;
	String s_DeptTime;
	String c_Name1;
	String s_ArrtTime;
	String s_FlightTime;
	int s_SeatTotal;
	int s_Code;
	
	public FlightSearch(String a_Name, String an_Name, String c_Name,
			String s_DeptTime, String c_Name1, String s_ArrtTime,
			String s_FlightTime, int s_SeatTotal, int s_Code) {
		super();
		this.a_Name = a_Name;
		this.an_Name = an_Name;
		this.c_Name = c_Name;
		this.s_DeptTime = s_DeptTime;
		this.c_Name1 = c_Name1;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
		this.s_SeatTotal = s_SeatTotal;
		this.s_Code = s_Code;
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

	public int getS_SeatTotal() {
		return s_SeatTotal;
	}

	public void setS_SeatTotal(int s_SeatTotal) {
		this.s_SeatTotal = s_SeatTotal;
	}

	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}
	
	
	
    
}
