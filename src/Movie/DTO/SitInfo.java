package Movie.DTO;

public class SitInfo {
	private int rNo;
	private String sNumber;
	
	public SitInfo(){}

	public SitInfo(int rNo, String sNumber) {
		super();
		this.rNo = rNo;
		this.sNumber = sNumber;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getsNumber() {
		return sNumber;
	}

	public void setsNumber(String sNumber) {
		this.sNumber = sNumber;
	}
	
	public String toString(){
		return rNo + " : " + sNumber;
	}
}
