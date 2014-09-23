package Movie.DTO;

public class MovieReserve {

	private int rNo;
	private int miNo;
	private int mNo;
	private int tPrice;
	private String mrPlayTime;
	private String mrDate;
	
	public MovieReserve(){};
		
	public MovieReserve(int rNo, int miNo, int mNo, int tPrice,
			String mrPlayTime, String mrDate) {
		super();
		this.rNo = rNo;
		this.miNo = miNo;
		this.mNo = mNo;
		this.tPrice = tPrice;
		this.mrPlayTime = mrPlayTime;
		this.mrDate = mrDate;
	}
	
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getMiNo() {
		return miNo;
	}
	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int gettPrice() {
		return tPrice;
	}
	public void settPrice(int tPrice) {
		this.tPrice = tPrice;
	}
	public String getMrPlayTime() {
		return mrPlayTime;
	}
	public void setMrPlayTime(String mrPlayTime) {
		this.mrPlayTime = mrPlayTime;
	}
	public String getMrDate() {
		return mrDate;
	}
	public void setMrDate(String mrDate) {
		this.mrDate = mrDate;
	}
	
	
}
