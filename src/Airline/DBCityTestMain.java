package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBCityTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * CitySqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<City> cityDB = new MyBatis<City>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <City> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: cityDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean cityDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<City> cityDB = new MyBatis<City>("Airline.City");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<City> luser = null;
		// DB객체생성,값설정

		City city1 = new City(3,"김포(GMP)", "하네다(HND)");
		City city2 = new City(4,"하네다(HND)", "김포(GMP)");
		City city3 = new City(1,"인천(ICN)", "로스엔젤레스(LAX)");
		City city4 = new City(2,"하네다(HND)", "홍콩(HKG)");
		City city5 = new City(5,"로스엔젤레스(LAX)", "인천(ICN)");
		City city6 = new City(6,"인천(ICN)", "싱가폴(SGP)");

		// Test용DB insert

		// drop table
//		cityDB.drop();
//		cityDB.create();

		// 1
		System.out.println("입력할 자료 :" + city1.toString());
		ret = cityDB.insert( city1);
		// 2
		System.out.println("입력할 자료 :" + city2.toString());
		ret = cityDB.insert( city2);
		// 3
		System.out.println("입력할 자료 :" + city3.toString());
		ret = cityDB.insert( city3);

		System.out.println("insert 3개후 전체 출력  : ");
		city3.setR_No(0); 
		cityDB.allListPrint(city3);

		// find예제+insert예제 boolean
		city3.setR_No(0); 
		if (!cityDB.find( city3)) {
			System.out.println("입력할 자료 : " + city3.toString());
			ret = cityDB.insert( city3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + city3.toString());
		}

		

		// delete예제
//		System.out.println("delete 전 ALL 출력  : ");
//		city3.setR_No(0); 
//		cityDB.allListPrint(city3);
//
//		city3.setR_No(5); 
//		ret = cityDB.delete( city3);
//
//		System.out.println("delete 후 ALL 출력  : ");
//		city3.setR_No(0); 
//		cityDB.allListPrint(city3);

		// 사용한 디비 닫아줄것
		cityDB.close();
	}

}
