package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBLatelyShopTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/latelyShop.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * latelyShopSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<latelyShop> latelyShopDB = new MyBatis<latelyShop>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <latelyShop> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: latelyShopDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean latelyShopDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<LatelyShop> latelyShopDB = new MyBatis<LatelyShop>("Shopping.LatelyShop");
		int ret = 0;
		// 리턴값 받을 변수(List)
//		List<LatelyShop> luser = null;
//		latelyShopSeq INTEGER NOT NULL, /* latelyShopSeq */
//		mNo INTEGER, /* 회원번호 */
//		shopSeq INTEGER, /* shopSeq */
//		count INTEGER /* count */
		LatelyShop latelyShop1 = new LatelyShop(1,1,1,11);
		LatelyShop latelyShop2 = new LatelyShop(2,1,2,22);
		LatelyShop latelyShop3 = new LatelyShop(3,1,3,33);
		LatelyShop latelyShop4 = new LatelyShop(4,2,1,5);
		LatelyShop latelyShop5 = new LatelyShop(5,2,2,7);
		LatelyShop latelyShop6 = new LatelyShop(6,2,3,8);
	
		// drop table
//		latelyShopDB.drop();
//		latelyShopDB.create();

		// 1
		System.out.println("입력할 자료 :" + latelyShop1.toString());
		ret = latelyShopDB.insert( latelyShop1);
		// 2
		System.out.println("입력할 자료 :" + latelyShop2.toString());
		ret = latelyShopDB.insert( latelyShop2);
		// 3
		System.out.println("입력할 자료 :" + latelyShop3.toString());
		ret = latelyShopDB.insert( latelyShop3);
		// 4
		System.out.println("입력할 자료 :" + latelyShop4.toString());
		ret = latelyShopDB.insert( latelyShop4);
		// 5
		System.out.println("입력할 자료 :" + latelyShop5.toString());
		ret = latelyShopDB.insert( latelyShop5);

		System.out.println("insert 5개후 전체 출력  : ");
		latelyShop6.setLatelyShopSeq(0); 
		latelyShopDB.allListPrint(latelyShop6);

		// find예제+insert예제 boolean
		latelyShop6.setLatelyShopSeq(6);
		if (!latelyShopDB.find( latelyShop6)) {
			System.out.println("입력할 자료 : " + latelyShop6.toString());
			ret = latelyShopDB.insert( latelyShop6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + latelyShop6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		latelyShop6.setLatelyShopSeq(0); 
		latelyShopDB.allListPrint(latelyShop6);

		latelyShop6.setLatelyShopSeq(6);
		ret = latelyShopDB.delete( latelyShop6);

		System.out.println("delete 후 ALL 출력  : ");
		latelyShop6.setLatelyShopSeq(0); 
		latelyShopDB.allListPrint(latelyShop6);

		// 사용한 디비 닫아줄것
		latelyShopDB.close();
	}

}
