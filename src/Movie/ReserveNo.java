package Movie;

public class ReserveNo {
	
	private int rNo;
	private int rAdult;
	private int rTeen;
	
	ReserveNo(){}

	public ReserveNo(int rNo, int rAdult, int rTeen) {
		super();
		this.rNo = rNo;
		this.rAdult = rAdult;
		this.rTeen = rTeen;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
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
	
	public String toString(){
		return rNo + " : " + rAdult + " : " + rTeen; 
	}
}
