package Shopping.DTO;

public class MExtInfo {
	private int mNo;
	private int mileage;
	public MExtInfo(){}
	public MExtInfo(int mNo, int mileage) {
		this.mNo = mNo;
		this.mileage = mileage;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String toString(){
		return mNo+":"+mileage;
	}
}
