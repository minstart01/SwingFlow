package Common.DTO;

public class Birth {
	private int bCode;
	private String bBirth;

	public Birth(){}

	public Birth(int bCode, String bBirth) {
		this.bCode = bCode;
		this.bBirth = bBirth;
	}

	public int getbCode() {
		return bCode;
	}

	public void setbCode(int bCode) {
		this.bCode = bCode;
	}

	public String getbBirth() {
		return bBirth;
	}

	public void setbBirth(String bBirth) {
		this.bBirth = bBirth;
	}
	
	public String toString(){
		return bCode+":"+bBirth;
	}
}
