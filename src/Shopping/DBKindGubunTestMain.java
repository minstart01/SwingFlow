package Shopping;

import java.sql.Date;
import java.util.List;

import Shopping.DTO.KindGubun;
import Common.MyBatis;

public class DBKindGubunTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/kindGubun.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * kindGubunSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<kindGubun> kindGubunDB = new MyBatis<kindGubun>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <kindGubun> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: kindGubunDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean kindGubunDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<KindGubun> kindGubunDB = new MyBatis<KindGubun>("Shopping.KindGubun");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<KindGubun> luser = null;

		// DB객체생성,값설정
		//c,f,n,m,b,o
		KindGubun kindGubun1 = new KindGubun(1, "C(세대)");
		KindGubun kindGubun2 = new KindGubun(2, "F(emale)");
		KindGubun kindGubun3 = new KindGubun(3, "N(화장품)");
		KindGubun kindGubun4 = new KindGubun(4, "M(en)");
		KindGubun kindGubun5 = new KindGubun(5, "B(rand)");
		KindGubun kindGubun6 = new KindGubun(6, "O(penMarket)");
		KindGubun kindGubun7 = new KindGubun(7, "삭제자료");
	
		// drop table
		kindGubunDB.drop();
		kindGubunDB.create();

		// 1
		System.out.println("입력할 자료 :" + kindGubun1.toString());
		ret = kindGubunDB.insert( kindGubun1);
		// 2
		System.out.println("입력할 자료 :" + kindGubun2.toString());
		ret = kindGubunDB.insert( kindGubun2);
		// 3
		System.out.println("입력할 자료 :" + kindGubun3.toString());
		ret = kindGubunDB.insert( kindGubun3);
		// 4
		System.out.println("입력할 자료 :" + kindGubun4.toString());
		ret = kindGubunDB.insert( kindGubun4);
		// 5
		System.out.println("입력할 자료 :" + kindGubun5.toString());
		ret = kindGubunDB.insert( kindGubun5);
		// 6
		System.out.println("입력할 자료 :" + kindGubun6.toString());
		ret = kindGubunDB.insert( kindGubun6);

		System.out.println("insert 6개후 전체 출력  : ");
		kindGubun7.setKindSeq(0); 
		kindGubunDB.allListPrint(kindGubun7);

		// find예제+insert예제 boolean
		kindGubun7.setKindSeq(7);
		if (!kindGubunDB.find( kindGubun7)) {
			System.out.println("입력할 자료 : " + kindGubun7.toString());
			ret = kindGubunDB.insert( kindGubun7);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + kindGubun7.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		kindGubun7.setKindSeq(0); 
		kindGubunDB.allListPrint(kindGubun7);

		kindGubun7.setKindSeq(7);
		ret = kindGubunDB.delete( kindGubun7);

		System.out.println("delete 후 ALL 출력  : ");
		kindGubun7.setKindSeq(0); 
		kindGubunDB.allListPrint(kindGubun7);

		// 사용한 디비 닫아줄것
		kindGubunDB.close();
	}

}
