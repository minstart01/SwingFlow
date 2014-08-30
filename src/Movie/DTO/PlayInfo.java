package Movie.DTO;

public class PlayInfo {

	private int miNo;
	private int pArea;
	private String pPlayStart;
	
	PlayInfo(){}

	public PlayInfo(int miNo, int pArea, String pPlayStart) {
		super();
		this.miNo = miNo;
		this.pArea = pArea;
		this.pPlayStart = pPlayStart;
	}

	public int getMiNo() {
		return miNo;
	}

	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}

	public int getpArea() {
		return pArea;
	}

	public void setpArea(int pArea) {
		this.pArea = pArea;
	}

	public String getpPlayStart() {
		return pPlayStart;
	}

	public void setpPlayStart(String pPlayStart) {
		this.pPlayStart = pPlayStart;
	}
	
	public String toString(){
		return miNo + " : " + pArea + " : " + pPlayStart; 
	}
}
