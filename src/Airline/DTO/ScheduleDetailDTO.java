package Airline.DTO;

public class ScheduleDetailDTO {
	int r_no;
	String fn_air;
	String fn_no;
	int r_seattotal;
	String S_FLIGHTTIME;
	String C_DEPCITY;
	String C_ARRCITY;
	int A_TRAVEL;
	int A_BUSINESS;
	int A_FIRST;
	int C_TRAVEL;
	int C_BUSINESS;
	int C_FIRST;
	String S_DEPTTIME;
	String S_DEPDAY;

	public ScheduleDetailDTO() {
	}

	public ScheduleDetailDTO(int r_no, String fn_air, String fn_no,
			int r_seattotal, String s_FLIGHTTIME, String c_DEPCITY,
			String c_ARRCITY, int a_TRAVEL, int a_BUSINESS, int a_FIRST,
			int c_TRAVEL, int c_BUSINESS, int c_FIRST, String s_DEPTTIME,
			String s_DEPDAY) {
		super();
		this.r_no = r_no;
		this.fn_air = fn_air;
		this.fn_no = fn_no;
		this.r_seattotal = r_seattotal;
		S_FLIGHTTIME = s_FLIGHTTIME;
		C_DEPCITY = c_DEPCITY;
		C_ARRCITY = c_ARRCITY;
		A_TRAVEL = a_TRAVEL;
		A_BUSINESS = a_BUSINESS;
		A_FIRST = a_FIRST;
		C_TRAVEL = c_TRAVEL;
		C_BUSINESS = c_BUSINESS;
		C_FIRST = c_FIRST;
		S_DEPTTIME = s_DEPTTIME;
		S_DEPDAY = s_DEPDAY;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getFn_air() {
		return fn_air;
	}

	public void setFn_air(String fn_air) {
		this.fn_air = fn_air;
	}

	public String getFn_no() {
		return fn_no;
	}

	public void setFn_no(String fn_no) {
		this.fn_no = fn_no;
	}

	public int getR_seattotal() {
		return r_seattotal;
	}

	public void setR_seattotal(int r_seattotal) {
		this.r_seattotal = r_seattotal;
	}

	public String getS_FLIGHTTIME() {
		return S_FLIGHTTIME;
	}

	public void setS_FLIGHTTIME(String s_FLIGHTTIME) {
		S_FLIGHTTIME = s_FLIGHTTIME;
	}

	public String getC_DEPCITY() {
		return C_DEPCITY;
	}

	public void setC_DEPCITY(String c_DEPCITY) {
		C_DEPCITY = c_DEPCITY;
	}

	public String getC_ARRCITY() {
		return C_ARRCITY;
	}

	public void setC_ARRCITY(String c_ARRCITY) {
		C_ARRCITY = c_ARRCITY;
	}

	public int getA_TRAVEL() {
		return A_TRAVEL;
	}

	public void setA_TRAVEL(int a_TRAVEL) {
		A_TRAVEL = a_TRAVEL;
	}

	public int getA_BUSINESS() {
		return A_BUSINESS;
	}

	public void setA_BUSINESS(int a_BUSINESS) {
		A_BUSINESS = a_BUSINESS;
	}

	public int getA_FIRST() {
		return A_FIRST;
	}

	public void setA_FIRST(int a_FIRST) {
		A_FIRST = a_FIRST;
	}

	public int getC_TRAVEL() {
		return C_TRAVEL;
	}

	public void setC_TRAVEL(int c_TRAVEL) {
		C_TRAVEL = c_TRAVEL;
	}

	public int getC_BUSINESS() {
		return C_BUSINESS;
	}

	public void setC_BUSINESS(int c_BUSINESS) {
		C_BUSINESS = c_BUSINESS;
	}

	public int getC_FIRST() {
		return C_FIRST;
	}

	public void setC_FIRST(int c_FIRST) {
		C_FIRST = c_FIRST;
	}

	public String getS_DEPTTIME() {
		return S_DEPTTIME;
	}

	public void setS_DEPTTIME(String s_DEPTTIME) {
		S_DEPTTIME = s_DEPTTIME;
	}

	public String getS_DEPDAY() {
		return S_DEPDAY;
	}

	public void setS_DEPDAY(String s_DEPDAY) {
		S_DEPDAY = s_DEPDAY;
	}

}
