package Common.DAO;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Common.DTO.ReceiveEMAIL;

public class DBReceiveEMAILTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/receiveEMAIL.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   receiveEMAILSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<receiveEMAIL> receiveEMAILDB = new MyBatis<receiveEMAIL>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <receiveEMAIL> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: receiveEMAILDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean receiveEMAILDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<ReceiveEMAIL> receiveEMAILDB = new MyBatis<ReceiveEMAIL>("Common.ReceiveEMAIL");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<ReceiveEMAIL> luser = null;

		// DB객체생성,값설정
		ReceiveEMAIL receiveEMAIL1 = new ReceiveEMAIL(1,"수신함");
		ReceiveEMAIL receiveEMAIL2 = new ReceiveEMAIL(2,"수신안함");
		ReceiveEMAIL receiveEMAIL3 = new ReceiveEMAIL(3,"삭제데이터");

		// Test용DB insert
		
		//drop table
		receiveEMAILDB.drop();
		receiveEMAILDB.create();
		
		//1
		System.out.println("입력할 자료 : " + receiveEMAIL1.toString()); 
		ret = receiveEMAILDB.insert( receiveEMAIL1);
		//2
		System.out.println("입력할 자료 : " + receiveEMAIL2.toString()); 
		ret = receiveEMAILDB.insert( receiveEMAIL2);

		
		System.out.println("insert 2개후 전체 출력  : ");
		receiveEMAIL3.seteCode(0);
		receiveEMAILDB.allListPrint( receiveEMAIL3);


		// find예제+insert예제 boolean
		receiveEMAIL3.seteCode(3);
		if (!receiveEMAILDB.find(receiveEMAIL3)) {
			System.out.println("입력할 자료 : " + receiveEMAIL3.toString()); 
			ret = receiveEMAILDB.insert( receiveEMAIL3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + receiveEMAIL3.toString());
		}

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		receiveEMAIL3.seteCode(0);
		receiveEMAILDB.allListPrint( receiveEMAIL3);
		
		receiveEMAIL3.seteCode(3);
		ret = receiveEMAILDB.delete( receiveEMAIL3);
		
		System.out.println("delete 후 ALL 출력  : ");
		receiveEMAIL3.seteCode(0);
		receiveEMAILDB.allListPrint( receiveEMAIL3);
		// 사용한 디비 닫아줄것
		receiveEMAILDB.close();
	}
	

}
