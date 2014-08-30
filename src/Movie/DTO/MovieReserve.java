package Movie.DTO;

public class MovieReserve {

	private int rNo;
	private int miNo;
	private int mNo;
	private int tPrice;
	
	MovieReserve(){}

	public MovieReserve(int rNo, int miNo, int mNo, int tPrice) {
		super();
		this.rNo = rNo;
		this.miNo = miNo;
		this.mNo = mNo;
		this.tPrice = tPrice;
	}
	
	public MovieReserve(int miNo, int mNo, int tPrice) {
		super();
		
		this.miNo = miNo;
		this.mNo = mNo;
		this.tPrice = tPrice;
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
	
	public String toString(){
		return rNo + " : " + miNo + " : " + mNo + " : " + tPrice; 
	}
}
