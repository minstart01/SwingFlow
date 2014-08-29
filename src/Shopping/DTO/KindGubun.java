package Shopping.DTO;

public class KindGubun {
	private int kindSeq;
	private String kindName;
	public KindGubun(){}
	public KindGubun(int kindSeq, String kindName) {
		this.kindSeq = kindSeq;
		this.kindName = kindName;
	}
	public int getKindSeq() {
		return kindSeq;
	}
	public void setKindSeq(int kindSeq) {
		this.kindSeq = kindSeq;
	}
	public String getKindName() {
		return kindName;
	}
	public void setKindName(String kindName) {
		this.kindName = kindName;
	}
	public String toString(){
		return kindSeq+":"+kindName;
	}
}
