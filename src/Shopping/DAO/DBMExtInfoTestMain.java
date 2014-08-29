package Shopping.DAO;

import java.sql.Date;
import java.util.List;

import Shopping.DTO.MExtInfo;
import Common.MyBatis;

public class DBMExtInfoTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/mExtInfo.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * MExtInfoSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<MExtInfo> mExtInfoDB = new MyBatis<MExtInfo>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <MExtInfo> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: mExtInfoDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean mExtInfoDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<MExtInfo> mExtInfoDB = new MyBatis<MExtInfo>("Shopping.MExtInfo");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<MExtInfo> luser = null;

		// DB객체생성,값설정
		MExtInfo mExtInfo1 = new MExtInfo(1, 111);
		MExtInfo mExtInfo2 = new MExtInfo(2, 222);
		MExtInfo mExtInfo3 = new MExtInfo(3, 333);
		// Test용DB insert

		// drop table
		mExtInfoDB.drop();
		mExtInfoDB.create();

		// 1
		System.out.println("입력할 자료 :" + mExtInfo1.toString());
		ret = mExtInfoDB.insert( mExtInfo1);
		// 2
		System.out.println("입력할 자료 :" + mExtInfo2.toString());
		ret = mExtInfoDB.insert( mExtInfo2);

		System.out.println("insert 2개후 전체 출력  : ");
		mExtInfo3.setmNo(0); 
		mExtInfoDB.allListPrint(mExtInfo3);

		// find예제+insert예제 boolean
		mExtInfo3.setmNo(3);
		if (!mExtInfoDB.find( mExtInfo3)) {
			System.out.println("입력할 자료 : " + mExtInfo3.toString());
			ret = mExtInfoDB.insert( mExtInfo3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + mExtInfo3.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		mExtInfo3.setmNo(0); 
		mExtInfoDB.allListPrint(mExtInfo3);

		mExtInfo3.setmNo(3);
		ret = mExtInfoDB.delete( mExtInfo3);

		System.out.println("delete 후 ALL 출력  : ");
		mExtInfo3.setmNo(0); 
		mExtInfoDB.allListPrint(mExtInfo3);

		// 사용한 디비 닫아줄것
		mExtInfoDB.close();
	}

}
