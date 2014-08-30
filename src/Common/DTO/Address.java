package Common.DTO;

public class Address {
	private int aCode;
	private String zipcode;
	private String sido;
	private String gugun;
	private String dong;
	private String ri;
	private String bunji;
	
	
	/* 영화 조인 */
	private int tCode;
	private String tName;
	private String tDetailAddr;
	private String tPhone;
	private int tScreen;
	private int tTotalSit;
	
	
	public Address(){}
	public Address(int aCode, String zipcode, String sido, String gugun,
			String dong, String ri, String bunji) {
		this.aCode = aCode;
		this.zipcode = zipcode;
		this.sido = sido;
		this.gugun = gugun;
		this.dong = dong;
		this.ri = ri;
		this.bunji = bunji;
	}
	public int getaCode() {
		return aCode;
	}
	public void setaCode(int aCode) {
		this.aCode = aCode;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getRi() {
		return ri;
	}
	public void setRi(String ri) {
		this.ri = ri;
	}
	public String getBunji() {
		return bunji;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	
	
	/* 영화 조인 */	
	public int gettCode() {
		return tCode;
	}
	public void settCode(int tCode) {
		this.tCode = tCode;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettDetailAddr() {
		return tDetailAddr;
	}
	public void settDetailAddr(String tDetailAddr) {
		this.tDetailAddr = tDetailAddr;
	}
	public String gettPhone() {
		return tPhone;
	}
	public void settPhone(String tPhone) {
		this.tPhone = tPhone;
	}
	public int gettScreen() {
		return tScreen;
	}
	public void settScreen(int tScreen) {
		this.tScreen = tScreen;
	}
	public int gettTotalSit() {
		return tTotalSit;
	}
	public void settTotalSit(int tTotalSit) {
		this.tTotalSit = tTotalSit;
	}
	
	
	public String toString(){
		return aCode+":"+zipcode+":"+sido+":"+gugun+":"+dong+":"+ri+":"+bunji;
	}
}
