package Movie;

public class ScreenGrade {
	private int sCode;
	private String sGrade;
	
	ScreenGrade(){}
	
	public ScreenGrade(int sCode, String sGrade) {
		super();
		this.sCode = sCode;
		this.sGrade = sGrade;
	}

	public int getsCode() {
		return sCode;
	}

	public void setsCode(int sCode) {
		this.sCode = sCode;
	}

	public String getsGrade() {
		return sGrade;
	}

	public void setsGrade(String sGrade) {
		this.sGrade = sGrade;
	}
	public String toString(){
		return sCode+":"+sGrade;
	}
}
