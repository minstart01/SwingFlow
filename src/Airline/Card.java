package Airline;

public class Card {

	private int fl_No;
	private String c_Name;
	private String c_Option;
	private String c_Type;
	private String c_Month;

	public Card() {
		// TODO Auto-generated constructor stub
	}

	public Card(int fl_No, String c_Name, String c_Option, String c_Type,
			String c_Month) {
		super();
		this.fl_No = fl_No;
		this.c_Name = c_Name;
		this.c_Option = c_Option;
		this.c_Type = c_Type;
		this.c_Month = c_Month;
	}

	public int getFl_No() {
		return fl_No;
	}

	public void setFl_No(int fl_No) {
		this.fl_No = fl_No;
	}

	public String getC_Name() {
		return c_Name;
	}

	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}

	public String getC_Option() {
		return c_Option;
	}

	public void setC_Option(String c_Option) {
		this.c_Option = c_Option;
	}

	public String getC_Type() {
		return c_Type;
	}

	public void setC_Type(String c_Type) {
		this.c_Type = c_Type;
	}

	public String getC_Month() {
		return c_Month;
	}

	public void setC_Month(String c_Month) {
		this.c_Month = c_Month;
	}

	public String toString() {
		return this.fl_No + ":" + this.c_Name + ":" + this.c_Option + ":"
				+ this.c_Type + ":" + this.c_Month;
	}
}
