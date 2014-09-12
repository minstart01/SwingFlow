package Movie.DTO;

public class Charge {
	
	private int miNo;
	private int cTeen;
	private int cAdult;
	private String sGrade;
	
	public Charge(){}

	public Charge(int miNo, int cTeen, int cAdult) {
		super();
		this.miNo = miNo;
		this.cTeen = cTeen;
		this.cAdult = cAdult;
	}

	public int getMiNo() {
		return miNo;
	}

	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}

	public int getcTeen() {
		return cTeen;
	}

	public void setcTeen(int cTeen) {
		this.cTeen = cTeen;
	}

	public int getcAdult() {
		return cAdult;
	}

	public void setcAdult(int cAdult) {
		this.cAdult = cAdult;
	}
	
	public String getsGrade() {
		return sGrade;
	}

	public void setsGrade(String sGrade) {
		this.sGrade = sGrade;
	}

	public String toString(){
	return miNo + " : " + cTeen + " : " + cAdult;
	}
}
