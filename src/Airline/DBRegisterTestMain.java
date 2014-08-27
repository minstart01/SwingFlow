package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBRegisterTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * RegisterSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Register> scheduleDB = new MyBatis<Register>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Register> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: scheduleDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean scheduleDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Register> scheduleDB = new MyBatis<Register>("Airline.Register");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Register> luser = null;
		// DB객체생성,값설정
		Register register1 = new Register(5,28);
		Register register2 = new Register(6,29);
		Register register3 = new Register(7,30);
		Register register4 = new Register(8,28);
		// Test용DB insert

		// drop table
//		scheduleDB.drop();
//		scheduleDB.create();

		// 1
		System.out.println("입력할 자료 :" + register1.toString());
		ret = scheduleDB.insert( register1);
		// 2
		System.out.println("입력할 자료 :" + register2.toString());
		ret = scheduleDB.insert( register2);
		// 3
		System.out.println("입력할 자료 :" + register3.toString());
		ret = scheduleDB.insert( register3);

		System.out.println("insert 3개후 전체 출력  : ");
		register4.setR_No(0); 
		scheduleDB.allListPrint(register4);

		// find예제+insert예제 boolean
		register4.setR_No(0); 
		if (!scheduleDB.find( register4)) {
			System.out.println("입력할 자료 : " + register4.toString());
			ret = scheduleDB.insert( register4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + register4.toString());
		}

		

		// delete예제
//		System.out.println("delete 전 ALL 출력  : ");
//		register4.setR_No(0); 
//		scheduleDB.allListPrint(register4);
//
//		register4.setR_No(4); 
//		ret = scheduleDB.delete( register4);
//
//		System.out.println("delete 후 ALL 출력  : ");
//		register4.setR_No(0); 
//		scheduleDB.allListPrint(register4);

		// 사용한 디비 닫아줄것
		scheduleDB.close();
	}

}
