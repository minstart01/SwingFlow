package Shopping;

public class LatelyShop {
	private int latelyShopSeq;
	private int mNo;
	private int shopSeq;
	private int count;
	public LatelyShop(){}
	public LatelyShop(int latelyShopSeq, int mNo, int shopSeq, int count) {
		this.latelyShopSeq = latelyShopSeq;
		this.mNo = mNo;
		this.shopSeq = shopSeq;
		this.count = count;
	}
	public int getLatelyShopSeq() {
		return latelyShopSeq;
	}
	public void setLatelyShopSeq(int latelyShopSeq) {
		this.latelyShopSeq = latelyShopSeq;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String toString(){
		return latelyShopSeq+":"+mNo+":"+shopSeq+":"+count;
	}
}
