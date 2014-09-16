package Movie.DTO;

public class ListMovies {
	private int miNo;
	private String mName;
	private String tName;
	private String mStart;
	private String mEnd;
	private String cTeen;
	private String cAdult;
	
	public ListMovies(){}

	public int getMiNo() {
		return miNo;
	}

	public void setMiNo(int miNo) {
		this.miNo = miNo;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String getmStart() {
		return mStart;
	}

	public void setmStart(String mStart) {
		this.mStart = mStart;
	}

	public String getmEnd() {
		return mEnd;
	}

	public void setmEnd(String mEnd) {
		this.mEnd = mEnd;
	}

	public String getcTeen() {
		return cTeen;
	}

	public void setcTeen(String cTeen) {
		this.cTeen = cTeen;
	}

	public String getcAdult() {
		return cAdult;
	}

	public void setcAdult(String cAdult) {
		this.cAdult = cAdult;
	}
		
	
}
