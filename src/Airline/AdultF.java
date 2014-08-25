package Airline;

public class AdultF {
	private int r_No;
	private String a_Travel;
	private String a_Business;
	private String a_First;

	public AdultF() {
		// TODO Auto-generated constructor stub
	}

	public AdultF(int r_No, String a_Travel, String a_Business, String a_First) {
		super();
		this.r_No = r_No;
		this.a_Travel = a_Travel;
		this.a_Business = a_Business;
		this.a_First = a_First;
	}

	public int getR_No() {
		return r_No;
	}

	public void setR_No(int r_No) {
		this.r_No = r_No;
	}

	public String getA_Travel() {
		return a_Travel;
	}

	public void setA_Travel(String a_Travel) {
		this.a_Travel = a_Travel;
	}

	public String getA_Business() {
		return a_Business;
	}

	public void setA_Business(String a_Business) {
		this.a_Business = a_Business;
	}

	public String getA_First() {
		return a_First;
	}

	public void setA_First(String a_First) {
		this.a_First = a_First;
	}

	public String toString() {
		return this.r_No + ":" + this.a_Travel + "," + this.a_Business + ","
				+ this.a_First;

	}

}
