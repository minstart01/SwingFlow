package Common;

public class ReceiveEMAIL {
	private int eCode;
	private String eReceive;
	
	public ReceiveEMAIL(){}

	public ReceiveEMAIL(int eCode, String eReceive) {
		this.eCode = eCode;
		this.eReceive = eReceive;
	}

	public int geteCode() {
		return eCode;
	}

	public void seteCode(int eCode) {
		this.eCode = eCode;
	}

	public String geteReceive() {
		return eReceive;
	}

	public void seteReceive(String eReceive) {
		this.eReceive = eReceive;
	}
	
	public String toString(){
		return eCode+":"+eReceive;
	}
}
