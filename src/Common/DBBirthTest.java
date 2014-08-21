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
		MyBatis<Birth> birthDB = new MyBatis<Birth>("Common.Birth");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Birth> luser = null;

		// DB객체생성,값설정
		Birth birth1 = new Birth(1,"음력");
		Birth birth2 = new Birth(2,"양력");
		Birth birth3 = new Birth(3,"삭제데이터");

		// Test용DB insert
		
		//drop table
		birthDB.drop();
		birthDB.create();
		
		//1
		System.out.println("입력할 자료 : " + birth1.toString()); 
		ret = birthDB.insert( birth1);
		//2
		System.out.println("입력할 자료 : " + birth2.toString()); 
		ret = birthDB.insert( birth2);

		
		System.out.println("insert 2개후 전체 출력  : ");
		birth3.setbCode(0);
		birthDB.allListPrint( birth3);


		// find예제+insert예제 boolean
		birth3.setbCode(3);
		if (!birthDB.find(birth3)) {
			System.out.println("입력할 자료 : " + birth3.toString()); 
			ret = birthDB.insert( birth3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + birth3.toString());
		}

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		birth3.setbCode(0);
		birthDB.allListPrint( birth3);
		
		birth3.setbCode(3);
		ret = birthDB.delete( birth3);
		
		System.out.println("delete 후 ALL 출력  : ");
		birth3.setbCode(0);
		birthDB.allListPrint( birth3);
		// 사용한 디비 닫아줄것
		birthDB.close();
	}
	

}
