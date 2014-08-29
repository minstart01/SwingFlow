package Shopping.DTO;

public class DivGubun {
	private int divSeq;
	private String divName;
	public DivGubun(){}
	public DivGubun(int divSeq, String divName) {
		this.divSeq = divSeq;
		this.divName = divName;
	}
	public int getDivSeq() {
		return divSeq;
	}
	public void setDivSeq(int divSeq) {
		this.divSeq = divSeq;
	}
	public String getDivName() {
		return divName;
	}
	public void setDivName(String divName) {
		this.divName = divName;
	}
	public String toString(){
		return divSeq+":"+divName;
	}
}
