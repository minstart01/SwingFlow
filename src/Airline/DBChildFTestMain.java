package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBChildFTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * ChildFSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<ChildF> childFDB = new MyBatis<ChildF>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <ChildF> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: childFDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean childFDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<ChildF> childFDB = new MyBatis<ChildF>("Airline.ChildF");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<ChildF> luser = null;
		// DB객체생성,값설정

		ChildF childF1 = new ChildF(1,"250,000원", "500,000원", "700,000원");
		ChildF childF2 = new ChildF(2,"250,000원", "500,000원", "700,000원");
		ChildF childF3 = new ChildF(3,"500,000원", "700,000원", "900,000원");
		ChildF childF4 = new ChildF(4,"555", "9333", "1,4345");
		// Test용DB insert

		// drop table
		childFDB.drop();
		childFDB.create();

		// 1
		System.out.println("입력할 자료 :" + childF1.toString());
		ret = childFDB.insert( childF1);
		// 2
		System.out.println("입력할 자료 :" + childF2.toString());
		ret = childFDB.insert( childF2);
		// 3
		System.out.println("입력할 자료 :" + childF3.toString());
		ret = childFDB.insert( childF3);

		System.out.println("insert 3개후 전체 출력  : ");
		childF4.setR_No(0); 
		childFDB.allListPrint(childF4);

		// find예제+insert예제 boolean
		childF4.setR_No(0); 
		if (!childFDB.find( childF4)) {
			System.out.println("입력할 자료 : " + childF4.toString());
			ret = childFDB.insert( childF4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + childF4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		childF4.setR_No(0); 
		childFDB.allListPrint(childF4);

		childF4.setR_No(4); 
		ret = childFDB.delete( childF4);

		System.out.println("delete 후 ALL 출력  : ");
		childF4.setR_No(0); 
		childFDB.allListPrint(childF4);

		// 사용한 디비 닫아줄것
		childFDB.close();
	}

}
