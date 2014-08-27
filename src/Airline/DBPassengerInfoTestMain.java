package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBPassengerInfoTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/passengerInfo.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * PassengerInfoSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<PassengerInfo> passengerInfoDB = new MyBatis<PassengerInfo>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <PassengerInfo> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: passengerInfoDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean passengerInfoDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<PassengerInfo> passengerInfoDB = new MyBatis<PassengerInfo>("Airline.PassengerInfo");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<PassengerInfo> luser = null;
//        lName	성	VARCHAR(20)
//		fName	이름	VARCHAR2(20)
//		gender	성별	INTEGER
//		passport	여권번호	NVARCHAR2(20)
//		fl_No(FK)	예약번호	INTEGER
//		ps_No(FK)	탑승자번호	INTEGER
		// DB객체생성,값설정
		PassengerInfo passengerInfo1 = new PassengerInfo("lim","yu","여","P123445",19, 2);
		PassengerInfo passengerInfo2 = new PassengerInfo("lim","yu","여","P123445",20, 1);
		PassengerInfo passengerInfo3 = new PassengerInfo("lim","yu","여","P123445",21, 2);
		PassengerInfo passengerInfo4 = new PassengerInfo("kim","yuky","남","P123445",22, 3);
		PassengerInfo passengerInfo5 = new PassengerInfo("lee","kyungyu","남","P123445",19, 1);
		PassengerInfo passengerInfo6 = new PassengerInfo("lim","aaa","남","P123445",21, 2);
		// Test용DB insert

		// drop table
//		passengerInfoDB.drop();
//		passengerInfoDB.create();

		// 1
		System.out.println("입력할 자료 :" + passengerInfo1.toString());
		ret = passengerInfoDB.insert( passengerInfo1);
		// 2
		System.out.println("입력할 자료 :" + passengerInfo2.toString());
		ret = passengerInfoDB.insert( passengerInfo2);
		// 3
		System.out.println("입력할 자료 :" + passengerInfo3.toString());
		ret = passengerInfoDB.insert( passengerInfo3);

		System.out.println("insert 3개후 전체 출력  : ");
		passengerInfo3.setFl_No(0);
		passengerInfoDB.allListPrint(passengerInfo3);

		// find예제+insert예제 boolean
		passengerInfo3.setFl_No(0);
		if (!passengerInfoDB.find( passengerInfo3)) {
			System.out.println("입력할 자료 : " + passengerInfo3.toString());
			ret = passengerInfoDB.insert( passengerInfo3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + passengerInfo3.toString());
		}

		

		// delete예제
//		System.out.println("delete 전 ALL 출력  : ");
//		passengerInfo3.setFl_No(0);
//		passengerInfoDB.allListPrint(passengerInfo3);
//
//		passengerInfo3.setFl_No(20);
//		ret = passengerInfoDB.delete( passengerInfo3);
//
//		System.out.println("delete 후 ALL 출력  : ");
//		passengerInfo3.setFl_No(0); 
//		passengerInfoDB.allListPrint(passengerInfo3);

		// 사용한 디비 닫아줄것
		passengerInfoDB.close();
	}

}
