package Common.DTO;

public class Sex {
	private int sCode;
	private String sSex;
	Sex(){}
	public Sex(int sCode, String sSex) {
		this.sCode = sCode;
		this.sSex = sSex;
	}
	public int getsCode() {
		return sCode;
	}
	public void setsCode(int sCode) {
		this.sCode = sCode;
	}
	public String getsSex() {
		return sSex;
	}
	public void setsSex(String sSex) {
		this.sSex = sSex;
	}
	public String toString(){
		return sCode+":"+sSex;
	}
}
