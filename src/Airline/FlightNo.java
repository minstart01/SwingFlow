package Airline;

public class FlightNo {
	private int r_No;
	private String fn_air;	
	private int r_SeatTotal;
	private String fn_no;	
	public FlightNo() {
		// TODO Auto-generated constructor stub
	}
	public FlightNo(int r_No, String fn_air, int r_SeatTotal, String fn_no) {
		super();
		this.r_No = r_No;
		this.fn_air = fn_air;
		this.r_SeatTotal = r_SeatTotal;
		this.fn_no = fn_no;
	}
	public int getR_No() {
		return r_No;
	}
	public void setR_No(int r_No) {
		this.r_No = r_No;
	}
	public String getFn_air() {
		return fn_air;
	}
	public void setFn_air(String fn_air) {
		this.fn_air = fn_air;
	}
	public int getR_SeatTotal() {
		return r_SeatTotal;
	}
	public void setR_SeatTotal(int r_SeatTotal) {
		this.r_SeatTotal = r_SeatTotal;
	}
	public String getFn_no() {
		return fn_no;
	}
	public void setFn_no(String fn_no) {
		this.fn_no = fn_no;
	}


}
