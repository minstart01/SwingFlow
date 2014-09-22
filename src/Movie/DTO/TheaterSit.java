package Movie.DTO;

public class TheaterSit {

	private int tCode;
	private int tScreenNo;
	private int tRow;
	private int tColumn;
	private int tTotalSit;

	public TheaterSit(int tScreenNo, int tRow, int tColumn,	int tTotalSit) {
		super();

		this.tScreenNo = tScreenNo;
		this.tRow = tRow;
		this.tColumn = tColumn;
		this.tTotalSit = tTotalSit;
	}

	public TheaterSit() {
		// TODO Auto-generated constructor stub
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

	public int gettRow() {
		return tRow;
	}

	public void settRow(int tRow) {
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
	
	public String toint(){
		return tCode + " : " + tScreenNo + " : " + tRow + " : " + tColumn + " : " + tTotalSit;  
	}

	
}


