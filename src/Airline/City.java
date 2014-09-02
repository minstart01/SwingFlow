package Airline;

public class City {
	int	c_Code;
	String	c_Name;	
	int	n_Code;
	public City(){}
	public City(int c_Code, String c_Name, int n_Code) {
		super();
		this.c_Code = c_Code;
		this.c_Name = c_Name;
		this.n_Code = n_Code;
	}
	public int getC_Code() {
		return c_Code;
	}
	public void setC_Code(int c_Code) {
		this.c_Code = c_Code;
	}
	public String getC_Name() {
		return c_Name;
	}
	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}
	public int getN_Code() {
		return n_Code;
	}
	public void setN_Code(int n_Code) {
		this.n_Code = n_Code;
	}
	
}

