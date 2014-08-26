package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBMileageTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * MileageSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Mileage> mileageDB = new MyBatis<Mileage>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Mileage> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: mileageDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean mileageDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Mileage> mileageDB = new MyBatis<Mileage>("Airline.Mileage");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Mileage> luser = null;
		// DB객체생성,값설정

		Mileage mileage1 = new Mileage(6,32500);
		Mileage mileage2 = new Mileage(7,50000);

		// Test용DB insert

		// drop table
		mileageDB.drop();
		mileageDB.create();

		// 1
		System.out.println("입력할 자료 :" + mileage1.toString());
		ret = mileageDB.insert( mileage1);
		// 2
		System.out.println("입력할 자료 :" + mileage2.toString());
		ret = mileageDB.insert( mileage2);

		System.out.println("insert 3개후 전체 출력  : ");
		mileage2.setmNo(0); 
		mileageDB.allListPrint(mileage2);

		// find예제+insert예제 boolean
		mileage2.setmNo(0); 
		if (!mileageDB.find( mileage2)) {
			System.out.println("입력할 자료 : " + mileage2.toString());
			ret = mileageDB.insert( mileage2);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + mileage2.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		mileage2.setmNo(0);
		mileageDB.allListPrint(mileage2);

		mileage2.setmNo(7); 
		ret = mileageDB.delete( mileage2);

		System.out.println("delete 후 ALL 출력  : ");
		mileage2.setmNo(0); 
		mileageDB.allListPrint(mileage2);

		// 사용한 디비 닫아줄것
		mileageDB.close();
	}

}
