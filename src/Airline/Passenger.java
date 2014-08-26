package Airline;

public class Passenger {
	private int fl_No;
	private int p_nAdult;
	private int p_nChild;
	private int p_nInfant;

	public Passenger() {
		// TODO Auto-generated constructor stub
	}

	public Passenger(int fl_No, int p_nAdult, int p_nChild, int p_nInfant) {
		super();
		this.fl_No = fl_No;
		this.p_nAdult = p_nAdult;
		this.p_nChild = p_nChild;
		this.p_nInfant = p_nInfant;
	}

	public int getFl_No() {
		return fl_No;
	}

	public void setFl_No(int fl_No) {
		this.fl_No = fl_No;
	}

	public int getP_nAdult() {
		return p_nAdult;
	}

	public void setP_nAdult(int p_nAdult) {
		this.p_nAdult = p_nAdult;
	}

	public int getP_nChild() {
		return p_nChild;
	}

	public void setP_nChild(int p_nChild) {
		this.p_nChild = p_nChild;
	}

	public int getP_nInfant() {
		return p_nInfant;
	}

	public void setP_nInfant(int p_nInfant) {
		this.p_nInfant = p_nInfant;
	}

	public String toString() {
		return this.fl_No + ":" + this.p_nAdult + ":" + this.p_nChild + ":"
				+ this.p_nInfant;
	}
}
