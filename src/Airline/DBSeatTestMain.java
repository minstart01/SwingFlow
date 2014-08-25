package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBSeatTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/passengerS.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * SeatSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Seat> seatDB = new MyBatis<Seat>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Seat> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: seatDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean seatDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Seat> seatDB = new MyBatis<Seat>("Airline.Seat");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Seat> luser = null;

		// DB객체생성,값설정
		Seat seat1 = new Seat(1,"Travel");
		Seat seat2 = new Seat(2,"Business");
		Seat seat3 = new Seat(3,"First");
		Seat seat4 = new Seat(4,"aaaa");
		// Test용DB insert

		// drop table
		seatDB.drop();
		seatDB.create();

		// 1
		System.out.println("입력할 자료 :" + seat1.toString());
		ret = seatDB.insert( seat1);
		// 2
		System.out.println("입력할 자료 :" + seat2.toString());
		ret = seatDB.insert( seat2);
		// 3
		System.out.println("입력할 자료 :" + seat3.toString());
		ret = seatDB.insert( seat3);

		System.out.println("insert 3개후 전체 출력  : ");
		seat4.setSeat_No(0); 
		seatDB.allListPrint(seat3);

		// find예제+insert예제 boolean
		seat4.setSeat_No(4);
		if (!seatDB.find( seat4)) {
			System.out.println("입력할 자료 : " + seat4.toString());
			ret = seatDB.insert( seat4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + seat4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		seat4.setSeat_No(0); 
		seatDB.allListPrint(seat4);

		seat4.setSeat_No(4);
		ret = seatDB.delete( seat4);

		System.out.println("delete 후 ALL 출력  : ");
		seat4.setSeat_No(0); 
		seatDB.allListPrint(seat4);

		// 사용한 디비 닫아줄것
		seatDB.close();
	}

}
