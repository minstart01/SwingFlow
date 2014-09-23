package Movie.DTO;

public class ReserveList {
	
	private String mName;
	private String tName;
	private String PlayTime;
	private String mrDate;
	private int rAdult;
	private int rTeen;
	private int rNo;
	private String sNumber;
	private int tPrice;
	
	public ReserveList(){};
	
	
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getPlayTime() {
		return PlayTime;
	}
	public void setPlayTime(String playTime) {
		PlayTime = playTime;
	}
	public String getMrDate() {
		return mrDate;
	}
	public void setMrDate(String mrDate) {
		this.mrDate = mrDate;
	}
	public int getrAdult() {
		return rAdult;
	}
	public void setrAdult(int rAdult) {
		this.rAdult = rAdult;
	}
	public int getrTeen() {
		return rTeen;
	}
	public void setrTeen(int rTeen) {
		this.rTeen = rTeen;
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


	public int gettPrice() {
		return tPrice;
	}


	public void settPrice(int tPrice) {
		this.tPrice = tPrice;
	}
	
	
	
	
	
}
