package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBLatelyProdTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/latrlyProd.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * latrlyProdSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<latrlyProd> latrlyProdDB = new MyBatis<latrlyProd>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <latrlyProd> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: latrlyProdDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean latrlyProdDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<LatelyProd> latrlyProdDB = new MyBatis<LatelyProd>("Shopping.LatelyProd");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<LatelyProd> luser = null;
		// DB객체생성,값설정
//		latelyProdSeq INTEGER NOT NULL, /* latelyProdSeq */
//		mNo INTEGER, /* 회원번호 */
//		prodSeq INTEGER, /* prodSeq */
//		count INTEGER /* count */
		LatelyProd latrlyProd1 = new LatelyProd(1,1,1,11);
		LatelyProd latrlyProd2 = new LatelyProd(2,1,2,22);
		LatelyProd latrlyProd3 = new LatelyProd(3,1,3,33);
		LatelyProd latrlyProd4 = new LatelyProd(4,2,1,5);
		LatelyProd latrlyProd5 = new LatelyProd(5,2,2,7);
		LatelyProd latrlyProd6 = new LatelyProd(6,2,3,8);
	
		// drop table
//		latrlyProdDB.drop();
//		latrlyProdDB.create();

		// 1
		System.out.println("입력할 자료 :" + latrlyProd1.toString());
		ret = latrlyProdDB.insert( latrlyProd1);
		// 2
		System.out.println("입력할 자료 :" + latrlyProd2.toString());
		ret = latrlyProdDB.insert( latrlyProd2);
		// 3
		System.out.println("입력할 자료 :" + latrlyProd3.toString());
		ret = latrlyProdDB.insert( latrlyProd3);
		// 4
		System.out.println("입력할 자료 :" + latrlyProd4.toString());
		ret = latrlyProdDB.insert( latrlyProd4);
		// 5
		System.out.println("입력할 자료 :" + latrlyProd5.toString());
		ret = latrlyProdDB.insert( latrlyProd5);

		System.out.println("insert 5개후 전체 출력  : ");
		latrlyProd6.setLatelyProdSeq(0); 
		latrlyProdDB.allListPrint(latrlyProd6);

		// find예제+insert예제 boolean
		latrlyProd6.setLatelyProdSeq(6);
		if (!latrlyProdDB.find( latrlyProd6)) {
			System.out.println("입력할 자료 : " + latrlyProd6.toString());
			ret = latrlyProdDB.insert( latrlyProd6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + latrlyProd6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		latrlyProd6.setLatelyProdSeq(0); 
		latrlyProdDB.allListPrint(latrlyProd6);

		latrlyProd6.setLatelyProdSeq(6);
		ret = latrlyProdDB.delete( latrlyProd6);

		System.out.println("delete 후 ALL 출력  : ");
		latrlyProd6.setLatelyProdSeq(0); 
		latrlyProdDB.allListPrint(latrlyProd6);

		// 사용한 디비 닫아줄것
		latrlyProdDB.close();
	}

}
