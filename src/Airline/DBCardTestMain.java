package Airline;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBCardTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/schedule.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * CardSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<Card> cardDB = new MyBatis<Card>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <Card> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: cardDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean cardDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Card> cardDB = new MyBatis<Card>("Airline.Card");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Card> luser = null;
		// DB객체생성,값설정

		Card card1 = new Card(4, "임유","신용카드","신한카드","일시불");
		Card card2 = new Card(5, "홍길동","계좌이체",null,"6개월");
		Card card3 = new Card(6, "이순신","계좌이체",null,"일시불");

		// Test용DB insert

		// drop table
//		cardDB.drop();
//		cardDB.create();

		// 1
		System.out.println("입력할 자료 :" + card1.toString());
		ret = cardDB.insert( card1);
		// 2
		System.out.println("입력할 자료 :" + card2.toString());
		ret = cardDB.insert( card2);
		// 3
		System.out.println("입력할 자료 :" + card3.toString());
		ret = cardDB.insert( card3);

		System.out.println("insert 3개후 전체 출력  : ");
		card3.setFl_No(0); 
		cardDB.allListPrint(card3);

		// find예제+insert예제 boolean
		card3.setFl_No(0); 
		if (!cardDB.find( card3)) {
			System.out.println("입력할 자료 : " + card3.toString());
			ret = cardDB.insert( card3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + card3.toString());
		}

		

		// delete예제
//		System.out.println("delete 전 ALL 출력  : ");
//		card3.setFl_No(0); 
//		cardDB.allListPrint(card3);
//
//		card3.setFl_No(3); 
//		ret = cardDB.delete( card3);
//
//		System.out.println("delete 후 ALL 출력  : ");
//		card3.setFl_No(0); 
//		cardDB.allListPrint(card3);

		// 사용한 디비 닫아줄것
		cardDB.close();
	}

}
