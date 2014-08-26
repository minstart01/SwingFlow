package Airline;

public class PassengerInfo {

	private String lName;
	private String fName;
	private String gender;
	private String passport;
	private int fl_No;
	private int ps_No;

	public PassengerInfo() {
		// TODO Auto-generated constructor stub
	}

	public PassengerInfo(String lName, String fName, String gender,
			String passport, int fl_No, int ps_No) {
		super();
		this.lName = lName;
		this.fName = fName;
		this.gender = gender;
		this.passport = passport;
		this.fl_No = fl_No;
		this.ps_No = ps_No;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public int getFl_No() {
		return fl_No;
	}

	public void setFl_No(int fl_No) {
		this.fl_No = fl_No;
	}

	public int getPs_No() {
		return ps_No;
	}

	public void setPs_No(int ps_No) {
		this.ps_No = ps_No;
	}

	public String toString() {
		return this.lName + ":" + this.fName + ":" + this.gender + ":"
				+ this.passport + ":" + this.fl_No + ":" + this.ps_No;

	}
}
