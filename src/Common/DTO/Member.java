package Common.DTO;

import java.sql.Date;


public class Member {
	private int mNo;
	private String mId;
	private String mPwd;
	private String mName;
	private int sCode;
	private java.sql.Date mBirth;
	private int bCode;
	private int aCode;
	private String mDetailAddr;
	private String mEmail;
	private int eCode;
	private String mPhone;
	private int pCode;
	private int mProduct;
	private int mCode;
	private java.sql.Date mJoinDate;
	private int mProductNo;
	
	public Member(){}
	public Member(int mNo, String mId, String mPwd, String mName, int sCode,
			Date mBirth, int bCode, int aCode, String mDetailAddr,String mEmail, int eCode,
			String mPhone, int pCode, int mProduct, int mCode, Date mJoinDate,
			int mProductNo) {
		this.mNo = mNo;
		this.mId = mId;
		this.mPwd = mPwd;
		this.mName = mName;
		this.sCode = sCode;
		this.mBirth = mBirth;
		this.bCode = bCode;
		this.aCode = aCode;
		this.mDetailAddr = mDetailAddr;
		this.mEmail = mEmail;
		this.eCode = eCode;
		this.mPhone = mPhone;
		this.pCode = pCode;
		this.mProduct = mProduct;
		this.mCode = mCode;
		this.mJoinDate = mJoinDate;
		this.mProductNo = mProductNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getsCode() {
		return sCode;
	}
	public void setsCode(int sCode) {
		this.sCode = sCode;
	}
	public java.sql.Date getmBirth() {
		return mBirth;
	}
	public void setmBirth(java.sql.Date mBirth) {
		this.mBirth = mBirth;
	}
	public int getbCode() {
		return bCode;
	}
	public void setbCode(int bCode) {
		this.bCode = bCode;
	}
	public int getaCode() {
		return aCode;
	}
	public void setaCode(int aCode) {
		this.aCode = aCode;
	}
	public String getmDetailAddr() {
		return mDetailAddr;
	}
	public void setmDetailAddr(String mDetailAddr) {
		this.mDetailAddr = mDetailAddr;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public int geteCode() {
		return eCode;
	}
	public void seteCode(int eCode) {
		this.eCode = eCode;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public int getpCode() {
		return pCode;
	}
	public void setpCode(int pCode) {
		this.pCode = pCode;
	}
	public int getmProduct() {
		return mProduct;
	}
	public void setmProduct(int mProduct) {
		this.mProduct = mProduct;
	}
	public int getmCode() {
		return mCode;
	}
	public void setmCode(int mCode) {
		this.mCode = mCode;
	}
	public java.sql.Date getmJoinDate() {
		return mJoinDate;
	}
	public void setmJoinDate(java.sql.Date mJoinDate) {
		this.mJoinDate = mJoinDate;
	}
	public int getmProductNo() {
		return mProductNo;
	}
	public void setmProductNo(int mProductNo) {
		this.mProductNo = mProductNo;
	}
	public String toString(){
		return mNo+":"+mId+":"+mPwd+":"+mName+":"+sCode+":"+mBirth+":"+bCode
				+":"+aCode+":"+mDetailAddr+":"+mEmail+":"+eCode+":"+mPhone+":"+pCode+":"+mProduct+":"+mCode+":"+mJoinDate+":"+mProductNo;
	}
	
}
