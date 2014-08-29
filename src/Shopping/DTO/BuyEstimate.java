package Shopping.DTO;

import java.sql.Date;

public class BuyEstimate {
	private int buyEstimateSeq;
	private int mNo;
	private java.sql.Date buyDate;
	private int point;
	private int prodSeq;
	public BuyEstimate(){}
	public BuyEstimate(int buyEstimateSeq, int mNo, Date buyDate, int point,
			int prodSeq) {
		this.buyEstimateSeq = buyEstimateSeq;
		this.mNo = mNo;
		this.buyDate = buyDate;
		this.point = point;
		this.prodSeq = prodSeq;
	}
	public int getBuyEstimateSeq() {
		return buyEstimateSeq;
	}
	public void setBuyEstimateSeq(int buyEstimateSeq) {
		this.buyEstimateSeq = buyEstimateSeq;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public java.sql.Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(java.sql.Date buyDate) {
		this.buyDate = buyDate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getProdSeq() {
		return prodSeq;
	}
	public void setProdSeq(int prodSeq) {
		this.prodSeq = prodSeq;
	}
	public String toString(){
		return buyEstimateSeq+":"+mNo+":"+buyDate+":"+point+":"+prodSeq;
	}
	
}
