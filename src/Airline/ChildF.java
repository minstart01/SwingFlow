package Airline;

public class ChildF {
	public ChildF() {
		// TODO Auto-generated constructor stub
	}

	private int r_No;
	private String c_Travel;
	private String c_Business;
	private String c_First;

	public ChildF(int r_No, String c_Travel, String c_Business, String c_First) {
		super();
		this.r_No = r_No;
		this.c_Travel = c_Travel;
		this.c_Business = c_Business;
		this.c_First = c_First;
	}

	public int getR_No() {
		return r_No;
	}

	public void setR_No(int r_No) {
		this.r_No = r_No;
	}

	public String getC_Travel() {
		return c_Travel;
	}

	public void setC_Travel(String c_Travel) {
		this.c_Travel = c_Travel;
	}

	public String getC_Business() {
		return c_Business;
	}

	public void setC_Business(String c_Business) {
		this.c_Business = c_Business;
	}

	public String getC_First() {
		return c_First;
	}

	public void setC_First(String c_First) {
		this.c_First = c_First;
	}
	public String toString() {
		return this.r_No + ":" + this.c_Travel + "," + this.c_Business + ","
				+ this.c_First;

	}
}
