package Common;

import java.sql.Date;
import java.util.List;

import Common.Member;
import Common.MyBatis;

public class DBMemberTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/Member.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   MemberSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<Member> MemberDB = new MyBatis<Member>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <Member> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: MemberDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean MemberDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<Member> memberDB = new MyBatis<Member>("Common.Member");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Member> luser = null;

		// DB객체생성,값설정
		int mNo, String mId, String mPwd, String mName, int sCode,
		Date mBirth, int bCode, int aCode, String mEmail, int eCode,
		int mPhone, int pCode, int mProduct, int mCode, Date mJoinDate,
		int mProductNo)
		Member member1 = new Member(1,"kim","1111","김유신",1,);

		// Test용DB insert
		
		//drop table
		MemberDB.drop("Member");
		MemberDB.create("Member");
		
		//1
		Member.setId("lym");
		Member.setPassword("1111");
		Member.setName("이영민");
		System.out.println("입력할 자료 :" + Member.toString()); 
		ret = MemberDB.insert("Member", Member);
		//2
		Member.setId("jeong");
		Member.setPassword("2222");
		Member.setName("정형일");
		System.out.println("입력할 자료 :" + Member.toString()); 
		ret = MemberDB.insert("Member", Member);
		//3
		Member.setId("im");
		Member.setPassword("3333");
		Member.setName("임유경");
		System.out.println("입력할 자료 :" + Member.toString()); 
		ret = MemberDB.insert("Member", Member);

		
		System.out.println("insert 3개후 전체 출력  : ");
		Member.setPassword(null);
		Member.setId(null);
		luser = MemberDB.select("Member", Member);
		for (Member x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------"); 


		// find예제+insert예제 boolean
		Member.setId("lee");
		if (!MemberDB.find("Member", Member)) {
			Member.setPassword("4444");
			Member.setName("이세한");
			System.out.println("입력할 자료 : " + Member.toString()); 
			ret = MemberDB.insert("Member", Member);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + Member.toString());
		}

		Member.setId("kim");
		Member.setPassword(null);
		System.out.println("입력할 자료 id : " + Member.getId());
		if (!MemberDB.find("Member", Member)) {
			Member.setPassword("1111");
			Member.setName("김생민");
			System.out.println("입력한 자료 id :" + Member.toString());

			// insert예제
			ret = MemberDB.insert("Member", Member);
			System.out.println("insert count : " + ret);
		}
		

		// delete예제 
		System.out.println("delete 전 ALL 출력  : ");
		Member.setPassword(null);
		Member.setId(null);
		luser = MemberDB.select("Member", Member);
		for (Member x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		
		System.out.println("delete 전 ALL 출력  : ");
		Member.setPassword(null);
		Member.setId(null);
		luser = MemberDB.select("Member", Member);
		for (Member x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		Member.setId("kim");
		Member.setPassword("1111");
		ret = MemberDB.delete("Member", Member);
		
		System.out.println("delete 후 ALL 출력  : ");
		Member.setPassword(null);
		Member.setId(null);
		luser = MemberDB.select("Member", Member);
		for (Member x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");

		// 사용한 디비 닫아줄것
		MemberDB.close();
	}
	
}
