package Movie;

public class TheaterInfo {
	
	private int tCode;
	private String tName;
	private int aCode;
	private String tDetailAddr;
	private int tScreen;
	private int tTotalSit;
	private String tPhone;
	
	
	TheaterInfo(){}
	
	public TheaterInfo(int tCode, String tName, int aCode, String tDetailAddr,
			int tScreen, int tTotalSit, String tPhone) {
		super();
		this.tCode = tCode;
		this.tName = tName;
		this.aCode = aCode;
		this.tDetailAddr = tDetailAddr;
		this.tScreen = tScreen;
		this.tTotalSit = tTotalSit;
		this.tPhone = tPhone;
	}
	
	public TheaterInfo(String tName, int aCode, String tDetailAddr,
			int tScreen, int tTotalSit, String tPhone) {
		super();
		
		this.tName = tName;
		this.aCode = aCode;
		this.tDetailAddr = tDetailAddr;
		this.tScreen = tScreen;
		this.tTotalSit = tTotalSit;
		this.tPhone = tPhone;
	}
	
	
	
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

	public int getaCode() {
		return aCode;
	}

	public void setaCode(int aCode) {
		this.aCode = aCode;
	}

	public String gettDetailAddr() {
		return tDetailAddr;
	}

	public void settDetailAddr(String tDetailAddr) {
		this.tDetailAddr = tDetailAddr;
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

	public String gettPhone() {
		return tPhone;
	}

	public void settPhone(String tPhone) {
		this.tPhone = tPhone;
	}

	public String toString(){
		return tCode + " : " + tName + " : " + aCode + " : " + tDetailAddr + " : " + tScreen + " : " + tTotalSit + " : " + tPhone; 
	}


}
