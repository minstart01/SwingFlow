package Common;

import java.sql.Date;
import java.util.List;

import Common.Member;
import Common.MyBatis;

public class DBMemberTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/member.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * MemberSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Member> memberDB = new MyBatis<Member>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Member> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: memberDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean memberDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Member> memberDB = new MyBatis<Member>("Common.Member");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Member> luser = null;

		// DB객체생성,값설정
		/**
		 * int mNo, String mId, String mPwd, String mName, int sCode, Date
		 * mBirth, int bCode, int aCode, String mEmail, int eCode, int mPhone,
		 * int pCode, int mProduct, int mCode, Date mJoinDate, int mProductNo
		 **/
		Member member1 = new Member(1, "kim", "1111", "김유신", 1, new Date(
				System.currentTimeMillis()), 1, 1,"신라", "kim@naver.com", 1,
				"010-4610-1851", 1, 999999, 1,
				java.sql.Date.valueOf("2014-08-21"), 1);
		Member member2 = new Member(2, "lee", "1111", "이순신", 1, new Date(
				System.currentTimeMillis()), 1, 1,"조선", "lee@naver.com", 1,
				"010-4610-1852", 1, 999999, 1,
				java.sql.Date.valueOf("2014-08-22"), 1);
		Member member3 = new Member(3, "park", "1111", "박문수", 1, new Date(
				System.currentTimeMillis()), 1, 1,"조선", "park@naver.com", 1,
				"010-4610-1852", 1, 999999, 1,
				java.sql.Date.valueOf("2014-08-23"), 1);
		// Test용DB insert

		// drop table
//		memberDB.drop();
//		memberDB.create();

		// 1
		System.out.println("입력할 자료 :" + member1.toString());
		ret = memberDB.insert( member1);
		// 2
		System.out.println("입력할 자료 :" + member2.toString());
		ret = memberDB.insert( member2);

		System.out.println("insert 2개후 전체 출력  : ");
		member3.setmNo(0); member3.setmId(null); member3.setmPwd(null);
		memberDB.allListPrint(member3);

		// find예제+insert예제 boolean
		member3.setmNo(3);member3.setmId(null); member3.setmPwd(null);
		if (!memberDB.find( member3)) {
			member3.setmId("park"); 
			member3.setmPwd("1111");
			System.out.println("입력할 자료 : " + member3.toString());
			ret = memberDB.insert( member3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + member3.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		member3.setmNo(0); member3.setmId(null); member3.setmPwd(null);
		memberDB.allListPrint(member3);

		member3.setmNo(3);
		ret = memberDB.delete( member3);

		System.out.println("delete 후 ALL 출력  : ");
		member3.setmNo(0); member3.setmId(null); member3.setmPwd(null);
		memberDB.allListPrint(member3);

		// 사용한 디비 닫아줄것
		memberDB.close();
	}

}
