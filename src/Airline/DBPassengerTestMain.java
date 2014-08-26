package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBPassengerTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * PassengerSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Passenger> passengerDB = new MyBatis<Passenger>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Passenger> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: passengerDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean passengerDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Passenger> passengerDB = new MyBatis<Passenger>("Airline.Passenger");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Passenger> luser = null;
		// DB객체생성,값설정

		Passenger passenger1 = new Passenger(1,2, 2, 1);
		Passenger passenger2 = new Passenger(2,2, 1, 1);
		Passenger passenger3 = new Passenger(3,2, 2, 1);
	
		// Test용DB insert

		// drop table
		passengerDB.drop();
		passengerDB.create();

		// 1
		System.out.println("입력할 자료 :" + passenger1.toString());
		ret = passengerDB.insert( passenger1);
		// 2
		System.out.println("입력할 자료 :" + passenger2.toString());
		ret = passengerDB.insert( passenger2);
		// 3
		System.out.println("입력할 자료 :" + passenger3.toString());
		ret = passengerDB.insert( passenger3);

		System.out.println("insert 3개후 전체 출력  : ");
		passenger3.setFl_No(0); 
		passengerDB.allListPrint(passenger3);

		// find예제+insert예제 boolean
		passenger3.setFl_No(0); 
		if (!passengerDB.find( passenger3)) {
			System.out.println("입력할 자료 : " + passenger3.toString());
			ret = passengerDB.insert( passenger3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + passenger3.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		passenger3.setFl_No(0); 
		passengerDB.allListPrint(passenger3);

		passenger3.setFl_No(3);  
		ret = passengerDB.delete( passenger3);

		System.out.println("delete 후 ALL 출력  : ");
		passenger3.setFl_No(0);
		passengerDB.allListPrint(passenger3);

		// 사용한 디비 닫아줄것
		passengerDB.close();
	}

}
