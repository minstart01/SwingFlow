package Airline;

public class Register {
	private int r_No;
	private int s_Code;
	public Register() {
		// TODO Auto-generated constructor stub
	}
	public int getR_No() {
		return r_No;
	}
	public void setR_No(int r_No) {
		this.r_No = r_No;
	}
	public int getS_Code() {
		return s_Code;
	}
	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}
	public Register(int r_No, int s_Code) {
		super();
		this.r_No = r_No;
		this.s_Code = s_Code;
	}
	public String toString(){
		return this.r_No + ":" + this.s_Code;
	}
}
