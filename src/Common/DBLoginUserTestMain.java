package Common;

import java.util.List;

import Common.LoginUser;
import Common.MyBatis;

public class DBLoginUserTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/LoginUser.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   LoginUserSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<LoginUser> loginUserDB = new MyBatis<LoginUser>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <LoginUser> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: loginUserDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean loginUserDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<LoginUser> loginUserDB = new MyBatis<LoginUser>("Common.LoginUser");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<LoginUser> luser = null;

		// DB객체생성,값설정
		LoginUser loginUser = new LoginUser();

		// Test용DB insert
		
		//drop table
		loginUserDB.drop();
		loginUserDB.create();
		
		//1
		loginUser.setId("lym");
		loginUser.setPassword("1111");
		loginUser.setName("이영민");
		System.out.println("입력할 자료 :" + loginUser.toString()); 
		ret = loginUserDB.insert( loginUser);
		//2
		loginUser.setId("jeong");
		loginUser.setPassword("2222");
		loginUser.setName("정형일");
		System.out.println("입력할 자료 :" + loginUser.toString()); 
		ret = loginUserDB.insert(loginUser);
		//3
		loginUser.setId("im");
		loginUser.setPassword("3333");
		loginUser.setName("임유경");
		System.out.println("입력할 자료 :" + loginUser.toString()); 
		ret = loginUserDB.insert( loginUser);

		
		System.out.println("insert 3개후 전체 출력  : ");
		loginUser.setPassword(null);
		loginUser.setId(null);
		luser = loginUserDB.select( loginUser);
		for (LoginUser x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------"); 


		// find예제+insert예제 boolean
		loginUser.setId("lee");
		if (!loginUserDB.find( loginUser)) {
			loginUser.setPassword("4444");
			loginUser.setName("이세한");
			System.out.println("입력할 자료 : " + loginUser.toString()); 
			ret = loginUserDB.insert( loginUser);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + loginUser.toString());
		}

		loginUser.setId("kim");
		loginUser.setPassword(null);
		System.out.println("입력할 자료 id : " + loginUser.getId());
		if (!loginUserDB.find( loginUser)) {
			loginUser.setPassword("1111");
			loginUser.setName("김생민");
			System.out.println("입력한 자료 id :" + loginUser.toString());

			// insert예제
			ret = loginUserDB.insert(loginUser);
			System.out.println("insert count : " + ret);
		}
		

		// delete예제 
		System.out.println("delete 전 ALL 출력  : ");
		loginUser.setPassword(null);
		loginUser.setId(null);
		luser = loginUserDB.select(loginUser);
		for (LoginUser x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		
		System.out.println("delete 전 ALL 출력  : ");
		loginUser.setPassword(null);
		loginUser.setId(null);
		luser = loginUserDB.select(loginUser);
		for (LoginUser x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		loginUser.setId("kim");
		loginUser.setPassword("1111");
		ret = loginUserDB.delete( loginUser);
		
		System.out.println("delete 후 ALL 출력  : ");
		loginUser.setPassword(null);
		loginUser.setId(null);
		luser = loginUserDB.select( loginUser);
		for (LoginUser x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------");

		// 사용한 디비 닫아줄것
		loginUserDB.close();
	}
	
}
