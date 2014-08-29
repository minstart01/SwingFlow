package Common.DAO;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Common.DTO.MemberShip;

public class DBMemberShipTestMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/memberShip.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   memberShipSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<memberShip> memberShipDB = new MyBatis<memberShip>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <memberShip> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: memberShipDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean memberShipDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<MemberShip> memberShipDB = new MyBatis<MemberShip>("Common.MemberShip");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<MemberShip> luser = null;

		// DB객체생성,값설정   실버, 골드, 다이아몬드, 다이아몬드 플러스, 플레티넘
		MemberShip memberShip1 = new MemberShip(1,"실버");
		MemberShip memberShip2 = new MemberShip(2,"골드");
		MemberShip memberShip3 = new MemberShip(3,"다이아몬드");
		MemberShip memberShip4 = new MemberShip(4,"다이아몬드플러스");
		MemberShip memberShip5 = new MemberShip(5,"플레티넘");
		MemberShip memberShip6 = new MemberShip(6,"삭제데이터");

		// Test용DB insert
		
		//drop table
		memberShipDB.drop();
		memberShipDB.create();
		
		//1
		System.out.println("입력할 자료 : " + memberShip1.toString()); 
		ret = memberShipDB.insert( memberShip1);
		//2
		System.out.println("입력할 자료 : " + memberShip2.toString()); 
		ret = memberShipDB.insert( memberShip2);
		//3
		System.out.println("입력할 자료 : " + memberShip3.toString()); 
		ret = memberShipDB.insert( memberShip3);
		//4
		System.out.println("입력할 자료 : " + memberShip4.toString()); 
		ret = memberShipDB.insert( memberShip4);
		//5
		System.out.println("입력할 자료 : " + memberShip5.toString()); 
		ret = memberShipDB.insert( memberShip5);

		System.out.println("insert 5개후 전체 출력  : ");
		memberShip6.setmCode(0);
		memberShipDB.allListPrint( memberShip6);


		// find예제+insert예제 boolean
		memberShip6.setmCode(6);
		if (!memberShipDB.find(memberShip6)) {
			System.out.println("입력할 자료 : " + memberShip6.toString()); 
			ret = memberShipDB.insert( memberShip6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + memberShip6.toString());
		}

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		memberShip6.setmCode(0);
		memberShipDB.allListPrint( memberShip6);
		
		memberShip6.setmCode(6);
		ret = memberShipDB.delete( memberShip6);
		
		System.out.println("delete 후 ALL 출력  : ");
		memberShip6.setmCode(0);
		memberShipDB.allListPrint( memberShip6);
		// 사용한 디비 닫아줄것
		memberShipDB.close();
	}
	

}
