package Movie.DTO;

import java.sql.Date;

public class Notice {

	private int nNo;
	private int tCode;
	private String nName;
	private String nSubject;
	private String nContent;
	private Date nDate;
	private int nHit;
	
	Notice(){}

	public Notice(int nNo, int tCode, String nName, String nSubject,
			String nContent, Date nDate, int nHit) {
		super();
		this.nNo = nNo;
		this.tCode = tCode;
		this.nName = nName;
		this.nSubject = nSubject;
		this.nContent = nContent;
		this.nDate = nDate;
		this.nHit = nHit;
	}
	
	public Notice(int tCode, String nName, String nSubject,
			String nContent, Date nDate, int nHit) {
		super();
		this.tCode = tCode;
		this.nName = nName;
		this.nSubject = nSubject;
		this.nContent = nContent;
		this.nDate = nDate;
		this.nHit = nHit;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public int gettCode() {
		return tCode;
	}

	public void settCode(int tCode) {
		this.tCode = tCode;
	}

	public String getnName() {
		return nName;
	}

	public void setnName(String nName) {
		this.nName = nName;
	}

	public String getnSubject() {
		return nSubject;
	}

	public void setnSubject(String nSubject) {
		this.nSubject = nSubject;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	public int getnHit() {
		return nHit;
	}

	public void setnHit(int nHit) {
		this.nHit = nHit;
	}
	
	public String toString(){
		return nNo + " : " + tCode + " : " + nName + " : " + nSubject + " : " + nContent + " : " + nDate + " : " + nHit;
	}
}
