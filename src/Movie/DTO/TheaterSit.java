package Movie.DTO;

public class TheaterSit {

	private int tCode;
	private int tScreenNo;
	private String tRow;
	private int tColumn;
	private int tTotalSit;
	
	TheaterSit(){}
	
	public TheaterSit(int tCode, int tScreenNo, String tRow, int tColumn,
			int tTotalSit) {
		super();
		this.tCode = tCode;
		this.tScreenNo = tScreenNo;
		this.tRow = tRow;
		this.tColumn = tColumn;
		this.tTotalSit = tTotalSit;
	}

	public int gettCode() {
		return tCode;
	}

	public void settCode(int tCode) {
		this.tCode = tCode;
	}

	public int gettScreenNo() {
		return tScreenNo;
	}

	public void settScreenNo(int tScreenNo) {
		this.tScreenNo = tScreenNo;
	}

	public String gettRow() {
		return tRow;
	}

	public void settRow(String tRow) {
		this.tRow = tRow;
	}

	public int gettColumn() {
		return tColumn;
	}

	public void settColumn(int tColumn) {
		this.tColumn = tColumn;
	}

	public int gettTotalSit() {
		return tTotalSit;
	}

	public void settTotalSit(int tTotalSit) {
		this.tTotalSit = tTotalSit;
	}
	
	public String toString(){
		return tCode + " : " + tScreenNo + " : " + tRow + " : " + tColumn + " : " + tTotalSit;  
	}

	
}


