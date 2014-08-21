package Airline;

import java.util.List;

import Airline.City;
import Common.MyBatis;

public class DBCityMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/city.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   citySqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<city> cityDB = new MyBatis<city>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <city> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: cityDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean cityDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<City> cityDB = new MyBatis<City>();
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<City> luser = null;

		// DB객체생성,값설정
		City city = new City();

		// Test용DB insert
		
		
		//drop table
		cityDB.drop("Airline.City");
		cityDB.create("Airline.City");
//		c_Depcity
//		c_Arrcity	
//		c_No
		//1
		City city1 = new City(1,"인천(ICN)","푸켓(LAX)");
		System.out.println("입력할 자료 :" + city1.toString()); 
		ret = cityDB.insert("Airline.City", city1);
		//2
		City city2 = new City(2,"김포(GMP)","홍콩(HKG)");
		System.out.println("입력할 자료 :" + city2.toString()); 
		ret = cityDB.insert("Airline.City", city2);
		//3
//		city.setId("im");
//		city.setPassword("3333");
//		city.setName("임유경");
//		System.out.println("입력할 자료 :" + city.toString()); 
//		ret = cityDB.insert("city", city);

		
//		System.out.println("insert 3개후 전체 출력  : ");
//		city.setPassword(null);
//		city.setId(null);
//		luser = cityDB.select("city", city);
//		for (city x : luser) {
//			System.out.println("member : " + x.toString());
//		}
//		System.out.println("-----------------------------------"); 


		// find예제+insert예제 boolean
		City city3 = new City(3,"김포(GMP)","도쿄(HKG)");
		
		if (!cityDB.find("Airline.City", city3)) {
			
			System.out.println("입력할 자료 : " + city3.toString()); 
			ret = cityDB.insert("Airline.City", city3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + city3.toString());
		}

		

		// delete예제 
		System.out.println("delete 전 ALL 출력  : ");
		city3.setC_No(0);
		luser = cityDB.select("Airline.City", city3);
		for (City x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		
		
		
		city3.setC_No(3);
		ret = cityDB.delete("Airline.City", city3);
		
		System.out.println("delete 후 ALL 출력  : ");
		city3.setC_No(0);
		luser = cityDB.select("Airline.City", city3);
		for (City x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------");

		// 사용한 디비 닫아줄것
		cityDB.close();
	}
	
}
