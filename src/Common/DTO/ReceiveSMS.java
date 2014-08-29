package Common.DTO;

public class ReceiveSMS {
	private int pCode;
	private String pReceive;
	
	public ReceiveSMS(){}

	public ReceiveSMS(int pCode, String pReceive) {
		this.pCode = pCode;
		this.pReceive = pReceive;
	}

	public int getpCode() {
		return pCode;
	}

	public void setpCode(int pCode) {
		this.pCode = pCode;
	}

	public String getpReceive() {
		return pReceive;
	}

	public void setpReceive(String pReceive) {
		this.pReceive = pReceive;
	}
	
	public String toString(){
		return pCode+":"+pReceive;
	}
}
