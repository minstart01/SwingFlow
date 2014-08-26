package Movie;

import java.sql.Date;

public class FreeBoard {
	
	private int fNo;
	private int mNo;
	private String fSubject;
	private String fContent;
	private Date fDate;
	private int fHit;
	
	FreeBoard(){}

	public FreeBoard(int fNo, int mNo, String fSubject, String fContent,
			Date fDate, int fHit) {
		super();
		this.fNo = fNo;
		this.mNo = mNo;
		this.fSubject = fSubject;
		this.fContent = fContent;
		this.fDate = fDate;
		this.fHit = fHit;
	}

	public FreeBoard(int mNo, String fSubject, String fContent, Date fDate,
			int fHit) {
		super();
		this.mNo = mNo;
		this.fSubject = fSubject;
		this.fContent = fContent;
		this.fDate = fDate;
		this.fHit = fHit;
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

	public String getfSubject() {
		return fSubject;
	}

	public void setfSubject(String fSubject) {
		this.fSubject = fSubject;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Date getfDate() {
		return fDate;
	}

	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}

	public int getfHit() {
		return fHit;
	}

	public void setfHit(int fHit) {
		this.fHit = fHit;
	}
	
	public String toString(){
		return fNo + " : " + mNo + " : " + fSubject + " : " + fContent + " : " + fDate + " : " + fHit; 
	}
}
