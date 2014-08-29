package Shopping.DTO;

import java.sql.Date;

public class DownCoupon {
	private int downCouponSeq;
	private int mNo;
	private int couponSeq;
	private String couponCode;
	private java.sql.Date downDate;
	public DownCoupon(){}
	public DownCoupon(int downCouponSeq, int mNo, int couponSeq,
			String couponCode, Date downDate) {
		this.downCouponSeq = downCouponSeq;
		this.mNo = mNo;
		this.couponSeq = couponSeq;
		this.couponCode = couponCode;
		this.downDate = downDate;
	}
	public int getDownCouponSeq() {
		return downCouponSeq;
	}
	public void setDownCouponSeq(int downCouponSeq) {
		this.downCouponSeq = downCouponSeq;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getCouponSeq() {
		return couponSeq;
	}
	public void setCouponSeq(int couponSeq) {
		this.couponSeq = couponSeq;
	}
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public java.sql.Date getDownDate() {
		return downDate;
	}
	public void setDownDate(java.sql.Date downDate) {
		this.downDate = downDate;
	}
	public String toString(){
		return downCouponSeq+":"+mNo+":"+couponSeq+":"+couponCode+":"+downDate;
	}
}
