package Airline;

public class Schedule {
	private int s_Code;
	private String s_DepDay;	
	private String s_DeptTime;	
	private String s_ArrtTime;	
	private String s_FlightTime;
	
	public Schedule(int s_Code, String s_DepDay, String s_DeptTime,String s_ArrtTime, String s_FlightTime) {
		super();
		this.s_Code = s_Code;
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
	
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
	}
	public Schedule( String s_DepDay, String s_DeptTime,String s_ArrtTime, String s_FlightTime) {
		super();
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;

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
public String toString(){
	return this.s_Code +":" + this.s_DepDay + "," + this.s_DeptTime + "," + this.s_ArrtTime + "," + this.s_FlightTime;	
}

}
