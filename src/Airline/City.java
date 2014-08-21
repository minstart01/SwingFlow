package Airline;

public class City {

	private int c_No;	
	private String c_DepCity;
	private String c_ArrCity;
	public City(){}
	
	public City(int c_No, String c_DepCity, String c_ArrCity) {
		super();
		this.c_No = c_No;
		this.c_DepCity = c_DepCity;
		this.c_ArrCity = c_ArrCity;
	}

	public int getC_No() {
		return c_No;
	}

	public void setC_No(int c_No) {
		this.c_No = c_No;
	}

	public String getC_DepCity() {
		return c_DepCity;
	}

	public void setC_DepCity(String c_DepCity) {
		this.c_DepCity = c_DepCity;
	}

	public String getC_ArrCity() {
		return c_ArrCity;
	}

	public void setC_ArrCity(String c_ArrCity) {
		this.c_ArrCity = c_ArrCity;
	}
	
}

