package Airline;

public class Airline {
	int a_Code;
	String a_Name;

	public Airline() {
		// TODO Auto-generated constructor stub
	}

	public Airline(int a_Code, String a_Name) {
		super();
		this.a_Code = a_Code;
		this.a_Name = a_Name;
	}

	public int getA_Code() {
		return a_Code;
	}

	public void setA_Code(int a_Code) {
		this.a_Code = a_Code;
	}

	public String getA_Name() {
		return a_Name;
	}

	public void setA_Name(String a_Name) {
		this.a_Name = a_Name;
	}

}
