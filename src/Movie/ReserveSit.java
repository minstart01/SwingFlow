package Movie;

public class ReserveSit {
	private int miNo;
	private int rScreenNo;
	private int rSit;
	
	ReserveSit(){}

	public ReserveSit(int miNo, int rScreenNo, int rSit) {
		super();
		this.miNo = miNo;
		this.rScreenNo = rScreenNo;
		this.rSit = rSit;
	}

	public int getMiNo() {
		return miNo;
	}

	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}

	public int getrScreenNo() {
		return rScreenNo;
	}

	public void setrScreenNo(int rScreenNo) {
		this.rScreenNo = rScreenNo;
	}

	public int getrSit() {
		return rSit;
	}

	public void setrSit(int rSit) {
		this.rSit = rSit;
	}
	
	public String toString(){
		return miNo + " : " + rScreenNo + " : " + rSit; 
	}
}
