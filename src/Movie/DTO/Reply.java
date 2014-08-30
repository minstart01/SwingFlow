package Movie.DTO;

import java.sql.Date;

public class Reply {
	private int fNo;
	private int mNo;
	private String rContent;
	private Date rDate;
	
	Reply(){}

	public Reply(int fNo, int mNo, String rContent, Date rDate) {
		super();
		this.fNo = fNo;
		this.mNo = mNo;
		this.rContent = rContent;
		this.rDate = rDate;
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
	public String toString(){
		return fNo + " : " + mNo + " : " + rContent + " : " + rDate; 
	}
}
