package Movie.DTO;

import java.sql.Date;

public class MovieInsert {

	private int miNo;
	private int mCode;
	private int tCode;
	private String mStart;
	private String mEnd;
	
	/*private Date mStart;
	private Date mEnd;*/
	/* 조인 */
	private String tName;
	private String mName;
	

	public MovieInsert(){}
	public MovieInsert(int miNo, int mCode, int tCode, Date mStart, Date mEnd) {
		super();
		this.miNo = miNo;
		this.mCode = mCode;
		this.tCode = tCode;
		/*this.mStart = mStart;
		this.mEnd = mEnd;*/
	}
	public MovieInsert(int mCode, int tCode, Date mStart, Date mEnd) {
		super();
		
		this.mCode = mCode;
		this.tCode = tCode;
	/*	this.mStart = mStart;
		this.mEnd = mEnd;*/
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
	public String getmStart() {
		return mStart;
	}
	public void setmStart(String mStart) {
		this.mStart = mStart;
	}
	public String getmEnd() {
		return mEnd;
	}
	public void setmEnd(String mEnd) {
		this.mEnd = mEnd;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	
	
/*	public Date getmStart() {
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
	*/
}
