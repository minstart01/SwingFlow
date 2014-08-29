package Shopping.DTO;

import java.sql.Date;

public class Coupon {
	private int couponSeq;
	private int shopSeq;
	private String couponName;
	private String expiryYn;
	private java.sql.Date expryDate;
	private String useCondition;
	private String dcType;
	private float dcValue;
	private int totalCount;
	private int downCount;
	private String cpnWebBnrPath;
	private String cpnMobBnrPath;
	private String cpnMobDtlPath;
	public Coupon(){}
	public Coupon(int couponSeq, int shopSeq, String couponName,
			String expiryYn, Date expryDate, String useCondition,
			String dcType, float dcValue, int totalCount, int downCount,
			String cpnWebBnrPath, String cpnMobBnrPath, String cpnMobDtlPath) {
		this.couponSeq = couponSeq;
		this.shopSeq = shopSeq;
		this.couponName = couponName;
		this.expiryYn = expiryYn;
		this.expryDate = expryDate;
		this.useCondition = useCondition;
		this.dcType = dcType;
		this.dcValue = dcValue;
		this.totalCount = totalCount;
		this.downCount = downCount;
		this.cpnWebBnrPath = cpnWebBnrPath;
		this.cpnMobBnrPath = cpnMobBnrPath;
		this.cpnMobDtlPath = cpnMobDtlPath;
	}
	public int getCouponSeq() {
		return couponSeq;
	}
	public void setCouponSeq(int couponSeq) {
		this.couponSeq = couponSeq;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getExpiryYn() {
		return expiryYn;
	}
	public void setExpiryYn(String expiryYn) {
		this.expiryYn = expiryYn;
	}
	public java.sql.Date getExpryDate() {
		return expryDate;
	}
	public void setExpryDate(java.sql.Date expryDate) {
		this.expryDate = expryDate;
	}
	public String getUseCondition() {
		return useCondition;
	}
	public void setUseCondition(String useCondition) {
		this.useCondition = useCondition;
	}
	public String getDcType() {
		return dcType;
	}
	public void setDcType(String dcType) {
		this.dcType = dcType;
	}
	public float getDcValue() {
		return dcValue;
	}
	public void setDcValue(float dcValue) {
		this.dcValue = dcValue;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getDownCount() {
		return downCount;
	}
	public void setDownCount(int downCount) {
		this.downCount = downCount;
	}
	public String getCpnWebBnrPath() {
		return cpnWebBnrPath;
	}
	public void setCpnWebBnrPath(String cpnWebBnrPath) {
		this.cpnWebBnrPath = cpnWebBnrPath;
	}
	public String getCpnMobBnrPath() {
		return cpnMobBnrPath;
	}
	public void setCpnMobBnrPath(String cpnMobBnrPath) {
		this.cpnMobBnrPath = cpnMobBnrPath;
	}
	public String getCpnMobDtlPath() {
		return cpnMobDtlPath;
	}
	public void setCpnMobDtlPath(String cpnMobDtlPath) {
		this.cpnMobDtlPath = cpnMobDtlPath;
	}
	public String toString(){
		return couponSeq+":"+shopSeq+":"+couponName+":"+expiryYn+":"+expryDate+":"+useCondition
				+":"+dcType+":"+dcValue+":"+totalCount+":"+downCount+":"+cpnWebBnrPath+":"
				+cpnMobBnrPath+":"+cpnMobDtlPath;
	}
}
