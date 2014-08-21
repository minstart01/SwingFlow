package Common;

import java.sql.Date;
import java.util.List;

public class DBAddressTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/address.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   addressSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<address> addressDB = new MyBatis<address>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <address> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: addressDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean addressDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<Address> addressDB = new MyBatis<Address>("Common.Address");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Address> luser = null;

		// DB객체생성,값설정   
		/**
		1 135-536	서울	강남구	도곡2동	삼성타워팰리스	(F동)	239
		2 135-554	서울	강남구	도곡2동	삼성타워팰리스	(G동)	240
		3 135-856	서울	강남구	도곡2동	아카데미스위트		241
		**/
		Address address1 = new Address(1,"135-536",	"서울 강남구","도곡2동","삼성타워팰리스","(F동)"	,"239");
		Address address2 = new Address(2, "135-554"	,"서울 강남구","도곡2동","삼성타워팰리스","(G동)","240");
		Address address3 = new Address(3,"135-856",	"서울 강남구","도곡2동",	"아카데미스위트","","241");

		// Test용DB insert
		
		//drop table
		addressDB.drop();
		addressDB.create();
		
		//1
		System.out.println("입력할 자료 : " + address1.toString()); 
		ret = addressDB.insert( address1);
		//2
		System.out.println("입력할 자료 : " + address2.toString()); 
		ret = addressDB.insert( address2);
		

		System.out.println("insert 2개후 전체 출력  : ");
		address3.setaCode(0);
		addressDB.allListPrint( address3);


		// find예제+insert예제 boolean
		address3.setaCode(3);
		if (!addressDB.find(address3)) {
			System.out.println("입력할 자료 : " + address3.toString()); 
			ret = addressDB.insert( address3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + address3.toString());
		}

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		address3.setaCode(0);
		addressDB.allListPrint( address3);
		
		address3.setaCode(3);
		ret = addressDB.delete( address3);
		
		System.out.println("delete 후 ALL 출력  : ");
		address3.setaCode(0);
		addressDB.allListPrint( address3);
		// 사용한 디비 닫아줄것
		addressDB.close();
	}
	

}
