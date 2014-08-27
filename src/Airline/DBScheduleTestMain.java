package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBScheduleTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * ScheduleSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Schedule> scheduleDB = new MyBatis<Schedule>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Schedule> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: scheduleDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean scheduleDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Schedule> scheduleDB = new MyBatis<Schedule>("Airline.Schedule");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Schedule> luser = null;
		// DB객체생성,값설정
		Schedule schedule1 = new Schedule(java.sql.Date.valueOf("2014-08-20"), "14:00", java.sql.Date.valueOf("2014-08-21"), "17:00", "03:00" );
		Schedule schedule2 = new Schedule(java.sql.Date.valueOf("2014-08-25"), "15:00", java.sql.Date.valueOf("2014-08-27"), "19:00", "04:00" );
		Schedule schedule3 = new Schedule(java.sql.Date.valueOf("2014-08-27"), "17:00", java.sql.Date.valueOf("2014-09-27"), "23:00", "10:00" );
		Schedule schedule4 = new Schedule(java.sql.Date.valueOf("2014-08-27"), "17:00", java.sql.Date.valueOf("2014-09-28"), "23:00", "10:00" );
		Schedule schedule5 = new Schedule(java.sql.Date.valueOf("2014-08-28"), "18:00", java.sql.Date.valueOf("2014-08-29"), "17:00", "06:00" );
		Schedule schedule6 = new Schedule(java.sql.Date.valueOf("2014-08-29"), "19:00", java.sql.Date.valueOf("2014-08-30"), "19:00", "07:00" );
		Schedule schedule7 = new Schedule(java.sql.Date.valueOf("2014-08-30"), "20:00", java.sql.Date.valueOf("2014-08-31"), "23:00", "08:00" );
		Schedule schedule8 = new Schedule(java.sql.Date.valueOf("2014-09-01"), "21:00", java.sql.Date.valueOf("2014-09-02"), "23:00", "09:00" );
		
		// Test용DB insert

		// drop table
		scheduleDB.drop();
		scheduleDB.create();

		// 1
		System.out.println("입력할 자료 :" + schedule1.toString());
		ret = scheduleDB.insert( schedule1);
		// 2
		System.out.println("입력할 자료 :" + schedule2.toString());
		ret = scheduleDB.insert( schedule2);
		// 3
		System.out.println("입력할 자료 :" + schedule3.toString());
		ret = scheduleDB.insert( schedule3);

		System.out.println("insert 3개후 전체 출력  : ");
		schedule4.setS_Code(0); 
		scheduleDB.allListPrint(schedule3);

		// find예제+insert예제 boolean
		schedule4.setS_Code(0); 
		if (!scheduleDB.find( schedule4)) {
			System.out.println("입력할 자료 : " + schedule4.toString());
			ret = scheduleDB.insert( schedule4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + schedule4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		schedule4.setS_Code(0); 
		scheduleDB.allListPrint(schedule4);

		schedule4.setS_Code(4); 
		ret = scheduleDB.delete( schedule4);

		System.out.println("delete 후 ALL 출력  : ");
		schedule4.setS_Code(0); 
		scheduleDB.allListPrint(schedule4);

		// 사용한 디비 닫아줄것
		scheduleDB.close();
	}

}
