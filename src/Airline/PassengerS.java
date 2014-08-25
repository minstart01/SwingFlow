package Airline;

public class PassengerS {
	private int ps_No;
	private String ps_Sort;
	public PassengerS(){}
	public PassengerS(int ps_No, String ps_Sort) {
		super();
		this.ps_No = ps_No;
		this.ps_Sort = ps_Sort;
	}
	public int getPs_No() {
		return ps_No;
	}
	public void setPs_No(int ps_No) {
		this.ps_No = ps_No;
	}
	public String getPs_Sort() {
		return ps_Sort;
	}
	public void setPs_Sort(String ps_Sort) {
		this.ps_Sort = ps_Sort;
	}
public String toString(){
		
		return this.ps_No +":"+ this.ps_Sort;
	}
}
