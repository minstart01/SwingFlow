package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBDownCouponTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/downCoupon.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * downCouponSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<downCoupon> downCouponDB = new MyBatis<downCoupon>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <downCoupon> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: downCouponDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean downCouponDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<DownCoupon> downCouponDB = new MyBatis<DownCoupon>("Shopping.DownCoupon");
		int ret = 0;
		// 리턴값 받을 변수(List)
//		downCouponSeq INTEGER NOT NULL, /* downCouponSeq */
//		mNo INTEGER, /* 회원번호 */
//		couponSeq INTEGER, /* couponSeq */
//		couponCode NVARCHAR2(100), /* couponCode */
//		downDate DATE /* downDate */

		DownCoupon downCoupon1 = new DownCoupon(1,1,1, "1CF3-3E20-592E-60CF",new Date(System.currentTimeMillis()));
		DownCoupon downCoupon2 = new DownCoupon(2,2,1, "1CF3-3E20-592E-61CF",new Date(System.currentTimeMillis()));
		DownCoupon downCoupon3 = new DownCoupon(3,1,2, "0DAS064VNP",new Date(System.currentTimeMillis()));
		DownCoupon downCoupon4 = new DownCoupon(4,2,2, "0DAS065VNP",new Date(System.currentTimeMillis()));
		DownCoupon downCoupon5 = new DownCoupon(5,3,2, "0DAS066VNP",new Date(System.currentTimeMillis()));
		DownCoupon downCoupon6 = new DownCoupon(6,1,3, "15F5-E2D9-0473-3447",new Date(System.currentTimeMillis()));
	
		// drop table
//		downCouponDB.drop();
//		downCouponDB.create();

		// 1
		System.out.println("입력할 자료 :" + downCoupon1.toString());
		ret = downCouponDB.insert( downCoupon1);
		// 2
		System.out.println("입력할 자료 :" + downCoupon2.toString());
		ret = downCouponDB.insert( downCoupon2);
		// 3
		System.out.println("입력할 자료 :" + downCoupon3.toString());
		ret = downCouponDB.insert( downCoupon3);
		// 4
		System.out.println("입력할 자료 :" + downCoupon4.toString());
		ret = downCouponDB.insert( downCoupon4);
		// 5
		System.out.println("입력할 자료 :" + downCoupon5.toString());
		ret = downCouponDB.insert( downCoupon5);

		System.out.println("insert 5개후 전체 출력  : ");
		downCoupon6.setDownCouponSeq(0); 
		downCouponDB.allListPrint(downCoupon6);

		// find예제+insert예제 boolean
		downCoupon6.setDownCouponSeq(6);
		if (!downCouponDB.find( downCoupon6)) {
			System.out.println("입력할 자료 : " + downCoupon6.toString());
			ret = downCouponDB.insert( downCoupon6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + downCoupon6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		downCoupon6.setDownCouponSeq(0); 
		downCouponDB.allListPrint(downCoupon6);

		downCoupon6.setDownCouponSeq(6);
		ret = downCouponDB.delete( downCoupon6);

		System.out.println("delete 후 ALL 출력  : ");
		downCoupon6.setDownCouponSeq(0); 
		downCouponDB.allListPrint(downCoupon6);

		// 사용한 디비 닫아줄것
		downCouponDB.close();
	}

}
