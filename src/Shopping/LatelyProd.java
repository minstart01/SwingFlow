package Shopping;

public class LatelyProd {
	private int latelyProdSeq;
	private int mNo;
	private int prodSeq;
	private int count;
	public LatelyProd(){}
	public LatelyProd(int latelyProdSeq, int mNo, int prodSeq, int count) {
		this.latelyProdSeq = latelyProdSeq;
		this.mNo = mNo;
		this.prodSeq = prodSeq;
		this.count = count;
	}
	public int getLatelyProdSeq() {
		return latelyProdSeq;
	}
	public void setLatelyProdSeq(int latelyProdSeq) {
		this.latelyProdSeq = latelyProdSeq;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getProdSeq() {
		return prodSeq;
	}
	public void setProdSeq(int prodSeq) {
		this.prodSeq = prodSeq;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String toString(){
		return latelyProdSeq+":"+mNo+":"+prodSeq+":"+count;
	}
}
