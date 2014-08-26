package Airline;

public class Mileage {
	private int mNo;
	private int m_mile;

	public Mileage() {
		// TODO Auto-generated constructor stub
	}

	public Mileage(int mNo, int m_mile) {
		super();
		this.mNo = mNo;
		this.m_mile = m_mile;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public int getM_mile() {
		return m_mile;
	}

	public void setM_mile(int m_mile) {
		this.m_mile = m_mile;
	}

	public String toString() {
		return this.mNo + ":" + this.m_mile;
	}
}
