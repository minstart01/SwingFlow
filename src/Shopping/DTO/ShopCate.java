package Shopping.DTO;

public class ShopCate {
	private int cateSeq;
	private int divSeq;
	private int kindSeq;
	private String cateName;
	public ShopCate(){}
	public ShopCate(int cateSeq, int divSeq, int kindSeq, String cateName) {
		this.cateSeq = cateSeq;
		this.divSeq = divSeq;
		this.kindSeq = kindSeq;
		this.cateName = cateName;
	}
	public int getCateSeq() {
		return cateSeq;
	}
	public void setCateSeq(int cateSeq) {
		this.cateSeq = cateSeq;
	}
	public int getDivSeq() {
		return divSeq;
	}
	public void setDivSeq(int divSeq) {
		this.divSeq = divSeq;
	}
	public int getKindSeq() {
		return kindSeq;
	}
	public void setKindSeq(int kindSeq) {
		this.kindSeq = kindSeq;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String toString(){
		return cateSeq+":"+divSeq+":"+kindSeq+":"+cateName;
	}
}
