package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBCouponTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/coupon.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * couponSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<coupon> couponDB = new MyBatis<coupon>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <coupon> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: couponDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean couponDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Coupon> couponDB = new MyBatis<Coupon>("Shopping.Coupon");
		int ret = 0;
		// 리턴값 받을 변수(List)
//		couponSeq(PK)	쿠폰번호	INTEGER
//		shopSeq(FK)	쇼핑몰번호	INTEGER
//		couponName	쿠폰이름	NVARCHAR2(200)
//		expiryYn	쿠폰기한종료유무	VARCHAR2(1)
//		expryDate	쿠폰종료일자	DATE
//		useCondition	쿠폰사용조건	NVARCHAR2(500)
//		dcType	할인타입	VARCHAR2(1)
//		dcValue	할인값	NUMBER(10,5)
//		totalCount	총쿠폰수	INTEGER
//		downCount	다운쿠폰수	INTEGER
//		cpnWebBnrPath	쿠폰이미지	NVARCHAR2(500)
//		cpnMobBnrPath	쿠폰전화이미지	NVARCHAR2(500)
//		cpnMobDtlPath	쿠폰전화상세이미지	NVARCHAR2(500)

		Coupon coupon1 = new Coupon(1,1,"미스터스트릿쿠폰","Y", java.sql.Date.valueOf("2014-12-31"),"3만원이상 구매시","R",(float)20.0,1000,2,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
		Coupon coupon2 = new Coupon(2,2,"미스터스트릿쿠폰","Y", java.sql.Date.valueOf("2014-12-31"),"5만원이상 구매시","R",(float)15.0,1000,3,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
		Coupon coupon3 = new Coupon(3,1,"미스터스트릿쿠폰","N", java.sql.Date.valueOf("2014-12-31"),"10만원이상 구매시","R",(float)10.0,1000,4,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
		Coupon coupon4 = new Coupon(4,2,"미스터스트릿쿠폰","N", java.sql.Date.valueOf("2014-12-31"),"전체 상품 구매시","R",(float)10.0,1000,5,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
		Coupon coupon5 = new Coupon(5,3,"미스터스트릿쿠폰","Y", java.sql.Date.valueOf("2014-12-31"),"1만원이상 구매시","R",(float)10.0,1000,6,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
		Coupon coupon6 = new Coupon(6,1,"미스터스트릿쿠폰","Y", java.sql.Date.valueOf("2014-12-31"),"2만원이상 구매시","R",(float)50.0,1000,7,"/쿠폰이미지","/쿠폰모바일이미지","/쿠폰모바일상세이미지");
	
		// drop table
//		couponDB.drop();
//		couponDB.create();

		// 1
		System.out.println("입력할 자료 :" + coupon1.toString());
		ret = couponDB.insert( coupon1);
		// 2
		System.out.println("입력할 자료 :" + coupon2.toString());
		ret = couponDB.insert( coupon2);
		// 3
		System.out.println("입력할 자료 :" + coupon3.toString());
		ret = couponDB.insert( coupon3);
		// 4
		System.out.println("입력할 자료 :" + coupon4.toString());
		ret = couponDB.insert( coupon4);
		// 5
		System.out.println("입력할 자료 :" + coupon5.toString());
		ret = couponDB.insert( coupon5);

		System.out.println("insert 5개후 전체 출력  : ");
		coupon6.setCouponSeq(0); 
		couponDB.allListPrint(coupon6);

		// find예제+insert예제 boolean
		coupon6.setCouponSeq(6);
		if (!couponDB.find( coupon6)) {
			System.out.println("입력할 자료 : " + coupon6.toString());
			ret = couponDB.insert( coupon6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + coupon6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		coupon6.setCouponSeq(0); 
		couponDB.allListPrint(coupon6);

		coupon6.setCouponSeq(6);
		ret = couponDB.delete( coupon6);

		System.out.println("delete 후 ALL 출력  : ");
		coupon6.setCouponSeq(0); 
		couponDB.allListPrint(coupon6);

		// 사용한 디비 닫아줄것
		couponDB.close();
	}

}
