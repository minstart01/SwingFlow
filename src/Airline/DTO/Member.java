package Airline.DTO;

public class Member {
int mno;
String mname;
int scode;

	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(int mno, String mname, int scode) {
		super();
		this.mno = mno;
		this.mname = mname;
		this.scode = scode;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public int getScode() {
		return scode;
	}

	public void setScode(int scode) {
		this.scode = scode;
	}

}
