package Shopping.DAO;

import java.sql.Date;
import java.util.List;

import Shopping.DTO.ShopCate;
import Common.MyBatis;

public class DBShopCateTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/shopCate.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * shopCateSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<shopCate> shopCateDB = new MyBatis<shopCate>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <shopCate> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: shopCateDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean shopCateDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<ShopCate> shopCateDB = new MyBatis<ShopCate>("Shopping.ShopCate");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<ShopCate> luser = null;

		// DB객체생성,값설정
		ShopCate shopCate1 = new ShopCate(101,1,1, "10대");
		ShopCate shopCate2 = new ShopCate(102,1,1, "20대");
		ShopCate shopCate3 = new ShopCate(103,1,1, "30대");
		ShopCate shopCate4 = new ShopCate(104,1,2, "삭제자료");
	
		// drop table
		shopCateDB.drop();
		shopCateDB.create();

		// 1
		System.out.println("입력할 자료 :" + shopCate1.toString());
		ret = shopCateDB.insert( shopCate1);
		// 2
		System.out.println("입력할 자료 :" + shopCate2.toString());
		ret = shopCateDB.insert( shopCate2);
		// 3
		System.out.println("입력할 자료 :" + shopCate3.toString());
		ret = shopCateDB.insert( shopCate3);

		System.out.println("insert 3개후 전체 출력  : ");
		shopCate4.setCateSeq(0);
		shopCateDB.allListPrint(shopCate4);

		// find예제+insert예제 boolean
		shopCate4.setCateSeq(104);
		if (!shopCateDB.find( shopCate4)) {
			System.out.println("입력할 자료 : " + shopCate4.toString());
			ret = shopCateDB.insert( shopCate4);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + shopCate4.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		shopCate4.setCateSeq(0); 
		shopCateDB.allListPrint(shopCate4);

		shopCate4.setCateSeq(104);
		ret = shopCateDB.delete( shopCate4);

		System.out.println("delete 후 ALL 출력  : ");
		shopCate4.setCateSeq(0); 
		shopCateDB.allListPrint(shopCate4);

		// 사용한 디비 닫아줄것
		shopCateDB.close();
	}

}
