package Airline.DTO;

public class Admin_list {

	String lname;
	String fname;
	String gender;
	String c_depcity;
	String c_arrcity;
	String fl_fare;
	String s_deptime;
	String fl_sys;
	int p_nadult;
	int p_nchild;
	int p_ninfant;
	
	public Admin_list(){}

	public Admin_list(String lname, String fname, String gender,
			String c_depcity, String c_arrcity, String fl_fare,
			String s_deptime, String fl_sys, int p_nadult, int p_nchild,
			int p_ninfant) {
		super();
		this.lname = lname;
		this.fname = fname;
		this.gender = gender;
		this.c_depcity = c_depcity;
		this.c_arrcity = c_arrcity;
		this.fl_fare = fl_fare;
		this.s_deptime = s_deptime;
		this.fl_sys = fl_sys;
		this.p_nadult = p_nadult;
		this.p_nchild = p_nchild;
		this.p_ninfant = p_ninfant;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getC_depcity() {
		return c_depcity;
	}

	public void setC_depcity(String c_depcity) {
		this.c_depcity = c_depcity;
	}

	public String getC_arrcity() {
		return c_arrcity;
	}

	public void setC_arrcity(String c_arrcity) {
		this.c_arrcity = c_arrcity;
	}

	public String getFl_fare() {
		return fl_fare;
	}

	public void setFl_fare(String fl_fare) {
		this.fl_fare = fl_fare;
	}

	public String getS_deptime() {
		return s_deptime;
	}

	public void setS_deptime(String s_deptime) {
		this.s_deptime = s_deptime;
	}

	public String getFl_sys() {
		return fl_sys;
	}

	public void setFl_sys(String fl_sys) {
		this.fl_sys = fl_sys;
	}

	public int getP_nadult() {
		return p_nadult;
	}

	public void setP_nadult(int p_nadult) {
		this.p_nadult = p_nadult;
	}

	public int getP_nchild() {
		return p_nchild;
	}

	public void setP_nchild(int p_nchild) {
		this.p_nchild = p_nchild;
	}

	public int getP_ninfant() {
		return p_ninfant;
	}

	public void setP_ninfant(int p_ninfant) {
		this.p_ninfant = p_ninfant;
	}
	
}
