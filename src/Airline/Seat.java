package Airline;

public class Seat {
	private int seat_No;
	private String seat_Class;

	public Seat() {
	}

	public int getSeat_No() {
		return seat_No;
	}

	public void setSeat_No(int seat_No) {
		this.seat_No = seat_No;
	}

	public String getSeat_Class() {
		return seat_Class;
	}

	public void setSeat_Class(String seat_Class) {
		this.seat_Class = seat_Class;
	}

	public Seat(int seat_No, String seat_Class) {
		super();
		this.seat_No = seat_No;
		this.seat_Class = seat_Class;
	}

	public String toString() {

		return this.seat_No + ":" + this.seat_Class;
	}

}
