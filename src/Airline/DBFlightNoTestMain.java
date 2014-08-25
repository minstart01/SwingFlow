package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBFlightNoTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * FlightNoSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<FlightNo> flightNoDB = new MyBatis<FlightNo>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <FlightNo> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: flightNoDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean flightNoDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<FlightNo> flightNoDB = new MyBatis<FlightNo>("Airline.FlightNo");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<FlightNo> luser = null;
		// DB객체생성,값설정
//		r_No(FK)	등록번호	INTEGER
//		fn_air	항공사	NVARCHAR2(15)
//		r_SeatTotal	총좌석	NUMBER
//		fn_no	편명	NVARCHAR2(15)
		FlightNo flightNo1 = new FlightNo(1,"아시아나항공", 30, "OZ201");
		FlightNo flightNo2 = new FlightNo(2,"대한항공", 35, "KE201");
		FlightNo flightNo3 = new FlightNo(3,"드래곤", 30, "D201");
		FlightNo flightNo4 = new FlightNo(4,"아시아나항공", 30, "OZ201");
		// Test용DB insert

		// drop table
		flightNoDB.drop();
		flightNoDB.create();

		// 1
		System.out.println("입력할 자료 :" + flightNo1.toString());
		ret = flightNoDB.insert( flightNo1);
		// 2
		System.out.println("입력할 자료 :" + flightNo2.toString());
		ret = flightNoDB.insert( flightNo2);
		// 3
		System.out.println("입력할 자료 :" + flightNo3.toString());
		ret = flightNoDB.insert( flightNo3);

		System.out.println("insert 3개후 전체 출력  : ");
		flightNo4.setR_No(0); 
		flightNoDB.allListPrint(flightNo4);

		// find예제+insert예제 boolean
		flightNo4.setR_No(0); 
		if (!flightNoDB.find( flightNo4)) {
			System.out.println("입력할 자료 : " + flightNo4.toString());
			ret = flightNoDB.insert( flightNo4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + flightNo4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		flightNo4.setR_No(0); 
		flightNoDB.allListPrint(flightNo4);

		flightNo4.setR_No(4); 
		ret = flightNoDB.delete( flightNo4);

		System.out.println("delete 후 ALL 출력  : ");
		flightNo4.setR_No(0); 
		flightNoDB.allListPrint(flightNo4);

		// 사용한 디비 닫아줄것
		flightNoDB.close();
	}

}
