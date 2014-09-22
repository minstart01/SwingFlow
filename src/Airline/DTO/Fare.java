package Airline.DTO;

public class Fare {
	int s_Code;
	int a_grade;
	int c_grade;

	public Fare() {
		// TODO Auto-generated constructor stub
	}

	public Fare(int s_Code, int a_grade, int c_grade) {
		super();
		this.s_Code = s_Code;
		this.a_grade = a_grade;
		this.c_grade = c_grade;
	}

	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public int getA_grade() {
		return a_grade;
	}

	public void setA_grade(int a_grade) {
		this.a_grade = a_grade;
	}

	public int getC_grade() {
		return c_grade;
	}

	public void setC_grade(int c_grade) {
		this.c_grade = c_grade;
	}
	

}
