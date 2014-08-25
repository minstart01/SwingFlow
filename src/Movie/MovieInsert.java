package Movie;

import java.sql.Date;

public class MovieInsert {

	private int miNo;
	private int mCode;
	private int tCode;
	private Date mStart;
	private Date mEnd;
	
	public MovieInsert(){}
	public MovieInsert(int miNo, int mCode, int tCode, Date mStart, Date mEnd) {
		super();
		this.miNo = miNo;
		this.mCode = mCode;
		this.tCode = tCode;
		this.mStart = mStart;
		this.mEnd = mEnd;
	}
	public MovieInsert(int mCode, int tCode, Date mStart, Date mEnd) {
		super();
		
		this.mCode = mCode;
		this.tCode = tCode;
		this.mStart = mStart;
		this.mEnd = mEnd;
	}
	public int getMiNo() {
		return miNo;
	}
	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}
	public int getmCode() {
		return mCode;
	}
	public void setmCode(int mCode) {
		this.mCode = mCode;
	}
	public int gettCode() {
		return tCode;
	}
	public void settCode(int tCode) {
		this.tCode = tCode;
	}
	public Date getmStart() {
		return mStart;
	}
	public void setmStart(Date mStart) {
		this.mStart = mStart;
	}
	public Date getmEnd() {
		return mEnd;
	}
	public void setmEnd(Date mEnd) {
		this.mEnd = mEnd;
	}
	public String toString(){
		return miNo + " : " + mCode + " : " + tCode + " : " + mStart + " : " + mEnd; 
	}
	
}
