package Common;

import java.sql.Date;
import java.util.List;

public class DBBirthTest {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/birth.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   birthSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<birth> birthDB = new MyBatis<birth>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <birth> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: birthDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean birthDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<Birth> birthDB = new MyBatis<Birth>();
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Birth> luser = null;

		// DB객체생성,값설정
		Birth birth1 = new Birth(1,"음력");
		Birth birth2 = new Birth(2,"양력");
		Birth birth3 = new Birth(3,"삭제데이터");

		// Test용DB insert
		
		//drop table
		birthDB.drop("birth");
		birthDB.create("birth");
		
		//1
		System.out.println("입력할 자료 : " + birth1.toString()); 
		ret = birthDB.insert("Common.Birth", birth1);
		//2
		System.out.println("입력할 자료 : " + birth2.toString()); 
		ret = birthDB.insert("Common.Birth", birth2);

		
		System.out.println("insert 2개후 전체 출력  : ");
		birth3.setbCode(0);
		luser = birthDB.select("birth", birth);
		for (birth x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------"); 


		// find예제+insert예제 boolean
		birth.setId("lee");
		if (!birthDB.find("birth", birth)) {
			birth.setPassword("4444");
			birth.setName("이세한");
			System.out.println("입력할 자료 : " + birth.toString()); 
			ret = birthDB.insert("birth", birth);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + birth.toString());
		}

		birth.setId("kim");
		birth.setPassword(null);
		System.out.println("입력할 자료 id : " + birth.getId());
		if (!birthDB.find("birth", birth)) {
			birth.setPassword("1111");
			birth.setName("김생민");
			System.out.println("입력한 자료 id :" + birth.toString());

			// insert예제
			ret = birthDB.insert("birth", birth);
			System.out.println("insert count : " + ret);
		}
		

		// delete예제 
		System.out.println("delete 전 ALL 출력  : ");
		birth.setPassword(null);
		birth.setId(null);
		luser = birthDB.select("birth", birth);
		for (birth x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		
		System.out.println("delete 전 ALL 출력  : ");
		birth.setPassword(null);
		birth.setId(null);
		luser = birthDB.select("birth", birth);
		for (birth x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");
		
		birth.setId("kim");
		birth.setPassword("1111");
		ret = birthDB.delete("birth", birth);
		
		System.out.println("delete 후 ALL 출력  : ");
		birth.setPassword(null);
		birth.setId(null);
		luser = birthDB.select("birth", birth);
		for (birth x : luser) {
			System.out.println(" : " + x.toString());
		}
		System.out.println("-----------------------------------");

		// 사용한 디비 닫아줄것
		birthDB.close();
	}
	

}
