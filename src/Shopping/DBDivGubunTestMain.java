package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBDivGubunTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/divGubun.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * DivGubunSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<DivGubun> divGubunDB = new MyBatis<DivGubun>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <DivGubun> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: divGubunDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean divGubunDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<DivGubun> divGubunDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<DivGubun> luser = null;

		// DB객체생성,값설정
		DivGubun divGubun1 = new DivGubun(1, "A(ll)");
		DivGubun divGubun2 = new DivGubun(2, "S(ex)");
		DivGubun divGubun3 = new DivGubun(3, "N(화장품)");
		DivGubun divGubun4 = new DivGubun(4, "삭제자료");
		// Test용DB insert

		// drop table
//		divGubunDB.drop();
//		divGubunDB.create();

		// 1
		System.out.println("입력할 자료 :" + divGubun1.toString());
		ret = divGubunDB.insert( divGubun1);
		// 2
		System.out.println("입력할 자료 :" + divGubun2.toString());
		ret = divGubunDB.insert( divGubun2);
		// 3
		System.out.println("입력할 자료 :" + divGubun3.toString());
		ret = divGubunDB.insert( divGubun3);

		System.out.println("insert 3개후 전체 출력  : ");
		divGubun4.setDivSeq(0); 
		divGubunDB.allListPrint(divGubun3);

		// find예제+insert예제 boolean
		divGubun4.setDivSeq(4);
		if (!divGubunDB.find( divGubun4)) {
			System.out.println("입력할 자료 : " + divGubun4.toString());
			ret = divGubunDB.insert( divGubun4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + divGubun4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		divGubun4.setDivSeq(0); 
		divGubunDB.allListPrint(divGubun4);

		divGubun4.setDivSeq(4);
		ret = divGubunDB.delete( divGubun4);

		System.out.println("delete 후 ALL 출력  : ");
		divGubun4.setDivSeq(0); 
		divGubunDB.allListPrint(divGubun4);

		// 사용한 디비 닫아줄것
		divGubunDB.close();
	}

}
