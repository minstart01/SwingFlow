package Airline;

public class AirlineNo {
int an_Code;
String an_Name;
int	an_SeatTotal;
int	a_Code;


	public AirlineNo() {
		// TODO Auto-generated constructor stub
	}


	public AirlineNo(int an_Code, String an_Name, int an_SeatTotal, int a_Code) {
		super();
		this.an_Code = an_Code;
		this.an_Name = an_Name;
		this.an_SeatTotal = an_SeatTotal;
		this.a_Code = a_Code;
	}


	public int getAn_Code() {
		return an_Code;
	}


	public void setAn_Code(int an_Code) {
		this.an_Code = an_Code;
	}


	public String getAn_Name() {
		return an_Name;
	}


	public void setAn_Name(String an_Name) {
		this.an_Name = an_Name;
	}


	public int getAn_SeatTotal() {
		return an_SeatTotal;
	}


	public void setAn_SeatTotal(int an_SeatTotal) {
		this.an_SeatTotal = an_SeatTotal;
	}


	public int getA_Code() {
		return a_Code;
	}


	public void setA_Code(int a_Code) {
		this.a_Code = a_Code;
	}


}
