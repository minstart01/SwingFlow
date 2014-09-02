package Airline;

public class Nation {
	int n_Code;
	String	n_Name;

	public Nation() {
		// TODO Auto-generated constructor stub
	}

	public Nation(int n_Code, String n_Name) {
		super();
		this.n_Code = n_Code;
		this.n_Name = n_Name;
	}

	public int getN_Code() {
		return n_Code;
	}

	public void setN_Code(int n_Code) {
		this.n_Code = n_Code;
	}

	public String getN_Name() {
		return n_Name;
	}

	public void setN_Name(String n_Name) {
		this.n_Name = n_Name;
	}

}
