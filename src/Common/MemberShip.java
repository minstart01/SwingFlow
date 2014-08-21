package Common;

public class MemberShip {
	private int mCode;
	private String mGrade;
	
	MemberShip(){}

	public MemberShip(int mCode, String mGrade) {
		this.mCode = mCode;
		this.mGrade = mGrade;
	}

	public int getmCode() {
		return mCode;
	}

	public void setmCode(int mCode) {
		this.mCode = mCode;
	}

	public String getmGrade() {
		return mGrade;
	}

	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}
	
	public String toString(){
		return mCode+":"+mGrade;
	}
}
