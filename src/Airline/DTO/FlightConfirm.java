package Airline.DTO;

public class FlightConfirm {
	
	int fl_no;
	String c_name;
	String c_name1;
	String fl_sys;

	public FlightConfirm() {
		// TODO Auto-generated constructor stub
	}

	public FlightConfirm(int fl_no, String c_name, String c_name1, String fl_sys) {
		super();
		this.fl_no = fl_no;
		this.c_name = c_name;
		this.c_name1 = c_name1;
		this.fl_sys = fl_sys;
	}

	public int getFl_no() {
		return fl_no;
	}

	public void setFl_no(int fl_no) {
		this.fl_no = fl_no;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_name1() {
		return c_name1;
	}

	public void setC_name1(String c_name1) {
		this.c_name1 = c_name1;
	}

	public String getFl_sys() {
		return fl_sys;
	}

	public void setFl_sys(String fl_sys) {
		this.fl_sys = fl_sys;
	}

}
