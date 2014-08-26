package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBFlightTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * FlightSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Flight> flightDB = new MyBatis<Flight>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Flight> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: flightDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean flightDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Flight> flightDB = new MyBatis<Flight>("Airline.Flight");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Flight> luser = null;
		// DB객체생성,값설정

		Flight flight1 = new Flight(6, "250,000원",new Date(System.currentTimeMillis()),1,2,3);
		Flight flight2 = new Flight(7, "550,000원",new Date(System.currentTimeMillis()),1,2,3);
		Flight flight3 = new Flight(6, "700,000원",new Date(System.currentTimeMillis()),1,2,3);

		// Test용DB insert

		// drop table
		flightDB.drop();
		flightDB.create();

		// 1
		System.out.println("입력할 자료 :" + flight1.toString());
		ret = flightDB.insert( flight1);
		// 2
		System.out.println("입력할 자료 :" + flight2.toString());
		ret = flightDB.insert( flight2);
		// 3
		System.out.println("입력할 자료 :" + flight3.toString());
		ret = flightDB.insert( flight3);

		System.out.println("insert 3개후 전체 출력  : ");
		flight3.setFl_No(0); 
		flightDB.allListPrint(flight3);

		// find예제+insert예제 boolean
		flight3.setFl_No(0); 
		if (!flightDB.find( flight3)) {
			System.out.println("입력할 자료 : " + flight3.toString());
			ret = flightDB.insert( flight3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + flight3.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		flight3.setFl_No(0); 
		flightDB.allListPrint(flight3);

		flight3.setFl_No(3); 
		ret = flightDB.delete( flight3);

		System.out.println("delete 후 ALL 출력  : ");
		flight3.setFl_No(0); 
		flightDB.allListPrint(flight3);

		// 사용한 디비 닫아줄것
		flightDB.close();
	}

}
