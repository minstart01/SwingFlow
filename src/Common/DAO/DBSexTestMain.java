package Common.DAO;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Common.DTO.Sex;

public class DBSexTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/sex.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   sexSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<sex> sexDB = new MyBatis<sex>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <sex> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: sexDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean sexDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<Sex> sexDB = new MyBatis<Sex>("Common.Sex");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Sex> luser = null;

		// DB객체생성,값설정   실버, 골드, 다이아몬드, 다이아몬드 플러스, 플레티넘
		Sex sex1 = new Sex(1,"남성");
		Sex sex2 = new Sex(2,"여성");
		Sex sex3 = new Sex(3,"삭제데이터");

		// Test용DB insert
		
		//drop table
		sexDB.drop();
		sexDB.create();
		
		//1
		System.out.println("입력할 자료 : " + sex1.toString()); 
		ret = sexDB.insert( sex1);
		//2
		System.out.println("입력할 자료 : " + sex2.toString()); 
		ret = sexDB.insert( sex2);
		

		System.out.println("insert 2개후 전체 출력  : ");
		sex3.setsCode(0);
		sexDB.allListPrint( sex3);


		// find예제+insert예제 boolean
		sex3.setsCode(3);
		if (!sexDB.find(sex3)) {
			System.out.println("입력할 자료 : " + sex3.toString()); 
			ret = sexDB.insert( sex3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + sex3.toString());
		}

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		sex3.setsCode(0);
		sexDB.allListPrint( sex3);
		
		sex3.setsCode(3);
		ret = sexDB.delete( sex3);
		
		System.out.println("delete 후 ALL 출력  : ");
		sex3.setsCode(0);
		sexDB.allListPrint( sex3);
		// 사용한 디비 닫아줄것
		sexDB.close();
	}
	

}
