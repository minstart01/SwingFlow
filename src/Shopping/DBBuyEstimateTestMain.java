package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBBuyEstimateTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/buyEstimate.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * buyEstimateSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<buyEstimate> buyEstimateDB = new MyBatis<buyEstimate>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <buyEstimate> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: buyEstimateDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean buyEstimateDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<BuyEstimate> buyEstimateDB = new MyBatis<BuyEstimate>("Shopping.BuyEstimate");
		int ret = 0;
		// 리턴값 받을 변수(List)
//		buyEstimateSeq(PK)	구매번호	INTEGER
//		mNo(FK)	번호	INTEGER
//		buyDate	구매일자	DATE
//		point	포인트	INTEGER
//		prodSeq(FK)	제품번호	INTEGER

		BuyEstimate buyEstimate1 = new BuyEstimate(1,1,new Date(System.currentTimeMillis()), 100,1);
		BuyEstimate buyEstimate2 = new BuyEstimate(2,2,new Date(System.currentTimeMillis()), 100,1);
		BuyEstimate buyEstimate3 = new BuyEstimate(3,1,new Date(System.currentTimeMillis()), 100,1);
		BuyEstimate buyEstimate4 = new BuyEstimate(4,2,new Date(System.currentTimeMillis()), 100,1);
		BuyEstimate buyEstimate5 = new BuyEstimate(5,3,new Date(System.currentTimeMillis()), 100,1);
		BuyEstimate buyEstimate6 = new BuyEstimate(6,1,new Date(System.currentTimeMillis()), 100,1);
	
		// drop table
//		buyEstimateDB.drop();
//		buyEstimateDB.create();

		// 1
		System.out.println("입력할 자료 :" + buyEstimate1.toString());
		ret = buyEstimateDB.insert( buyEstimate1);
		// 2
		System.out.println("입력할 자료 :" + buyEstimate2.toString());
		ret = buyEstimateDB.insert( buyEstimate2);
		// 3
		System.out.println("입력할 자료 :" + buyEstimate3.toString());
		ret = buyEstimateDB.insert( buyEstimate3);
		// 4
		System.out.println("입력할 자료 :" + buyEstimate4.toString());
		ret = buyEstimateDB.insert( buyEstimate4);
		// 5
		System.out.println("입력할 자료 :" + buyEstimate5.toString());
		ret = buyEstimateDB.insert( buyEstimate5);

		System.out.println("insert 5개후 전체 출력  : ");
		buyEstimate6.setBuyEstimateSeq(0); 
		buyEstimateDB.allListPrint(buyEstimate6);

		// find예제+insert예제 boolean
		buyEstimate6.setBuyEstimateSeq(6);
		if (!buyEstimateDB.find( buyEstimate6)) {
			System.out.println("입력할 자료 : " + buyEstimate6.toString());
			ret = buyEstimateDB.insert( buyEstimate6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + buyEstimate6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		buyEstimate6.setBuyEstimateSeq(0); 
		buyEstimateDB.allListPrint(buyEstimate6);

		buyEstimate6.setBuyEstimateSeq(6);
		ret = buyEstimateDB.delete( buyEstimate6);

		System.out.println("delete 후 ALL 출력  : ");
		buyEstimate6.setBuyEstimateSeq(0); 
		buyEstimateDB.allListPrint(buyEstimate6);

		// 사용한 디비 닫아줄것
		buyEstimateDB.close();
	}

}
