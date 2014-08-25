package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBPassengerSTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/passengerS.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * PassengerSSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<PassengerS> passengerSDB = new MyBatis<PassengerS>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <PassengerS> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: passengerSDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean passengerSDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<PassengerS> passengerSDB = new MyBatis<PassengerS>("Airline.PassengerS");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<PassengerS> luser = null;

		// DB객체생성,값설정
		PassengerS passengerS1 = new PassengerS(1,"성인");
		PassengerS passengerS2 = new PassengerS(2,"소아");
		PassengerS passengerS3 = new PassengerS(3,"유아");
		PassengerS passengerS4 = new PassengerS(4,"삭제데이터");
		// Test용DB insert

		// drop table
		passengerSDB.drop();
		passengerSDB.create();

		// 1
		System.out.println("입력할 자료 :" + passengerS1.toString());
		ret = passengerSDB.insert( passengerS1);
		// 2
		System.out.println("입력할 자료 :" + passengerS2.toString());
		ret = passengerSDB.insert( passengerS2);
		// 3
		System.out.println("입력할 자료 :" + passengerS3.toString());
		ret = passengerSDB.insert( passengerS3);

		System.out.println("insert 3개후 전체 출력  : ");
		passengerS4.setPs_No(0); 
		passengerSDB.allListPrint(passengerS3);

		// find예제+insert예제 boolean
		passengerS4.setPs_No(4);
		if (!passengerSDB.find( passengerS4)) {
			System.out.println("입력할 자료 : " + passengerS4.toString());
			ret = passengerSDB.insert( passengerS4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + passengerS4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		passengerS4.setPs_No(0); 
		passengerSDB.allListPrint(passengerS4);

		passengerS4.setPs_No(4);
		ret = passengerSDB.delete( passengerS4);

		System.out.println("delete 후 ALL 출력  : ");
		passengerS4.setPs_No(0); 
		passengerSDB.allListPrint(passengerS4);

		// 사용한 디비 닫아줄것
		passengerSDB.close();
	}

}
