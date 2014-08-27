package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBAdultFTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * AdultFSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<AdultF> adultFDB = new MyBatis<AdultF>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <AdultF> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: adultFDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean adultFDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<AdultF> adultFDB = new MyBatis<AdultF>("Airline.AdultF");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<AdultF> luser = null;
		// DB객체생성,값설정
//		r_No(FK)	등록번호	INTEGER
//		a_Travel	트래블	NVARCHAR2(20)
//		a_Business	비즈니스	NVARCHAR2(20)
//		a_First	퍼스트	NVARCHAR2(20)
		AdultF adultF1 = new AdultF(5,"750,000원", "900,000원", "1,200,000원");
		AdultF adultF2 = new AdultF(6,"800,000원", "1,000,000원", "1,300,000원");
		AdultF adultF3 = new AdultF(7,"850,000원", "1,200,000원", "1,400,000원");
		AdultF adultF4 = new AdultF(8,"900,000원", "1,350,000원", "1,500,000원");
		// Test용DB insert

		// drop table
//		adultFDB.drop();
//		adultFDB.create();

		// 1
		System.out.println("입력할 자료 :" + adultF1.toString());
		ret = adultFDB.insert( adultF1);
		// 2
		System.out.println("입력할 자료 :" + adultF2.toString());
		ret = adultFDB.insert( adultF2);
		// 3
		System.out.println("입력할 자료 :" + adultF3.toString());
		ret = adultFDB.insert( adultF3);

		System.out.println("insert 3개후 전체 출력  : ");
		adultF4.setR_No(0); 
		adultFDB.allListPrint(adultF4);

		// find예제+insert예제 boolean
		adultF4.setR_No(0); 
		if (!adultFDB.find( adultF4)) {
			System.out.println("입력할 자료 : " + adultF4.toString());
			ret = adultFDB.insert( adultF4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + adultF4.toString());
		}

		

		// delete예제
//		System.out.println("delete 전 ALL 출력  : ");
//		adultF4.setR_No(0); 
//		adultFDB.allListPrint(adultF4);
//
//		adultF4.setR_No(4); 
//		ret = adultFDB.delete( adultF4);
//
//		System.out.println("delete 후 ALL 출력  : ");
//		adultF4.setR_No(0); 
//		adultFDB.allListPrint(adultF4);

		// 사용한 디비 닫아줄것
		adultFDB.close();
	}

}
