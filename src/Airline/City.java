package Airline;

public class City {

	private int r_No;	
	private String c_DepCity;
	private String c_ArrCity;
	public City(){}
	
	public City(int r_No, String c_DepCity, String c_ArrCity) {
		super();
		this.r_No = r_No;
		this.c_DepCity = c_DepCity;
		this.c_ArrCity = c_ArrCity;
	}

	
	public int getR_No() {
		return r_No;
	}

	public void setR_No(int r_No) {
		this.r_No = r_No;
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

	public String toString(){
		
		return this.r_No +":"+ this.c_DepCity +":"+ this.c_DepCity;
	}
	
	
}

