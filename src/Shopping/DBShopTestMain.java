package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBShopTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/shop.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * shopSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<shop> shopDB = new MyBatis<shop>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <shop> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: shopDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean shopDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Shop> shopDB = new MyBatis<Shop>("Shopping.Shop");
		int ret = 0;
		// 리턴값 받을 변수(List)
//		shopSeq(PK)	쇼핑몰번호	INTEGER
//		adType	N/A	NVARCHAR2(1)  C,S,T
//		adStateCode	N/A	NVARCHAR2(1)
//		shopName	쇼핑몰이름	NVARCHAR2(100)
//		shopDomain	샵도메인명	NVARCHAR2(100)
		
//		shopMobDomain	샵모바일도메인명	NVARCHAR2(100)
//		webUrl	웹경로	NVARCHAR2(500)
//		mobUrl	모바일경로	NVARCHAR2(500)
//		shopCateNames	샵카테고리명들	NVARCHAR2(200)
//		prodCateNames	제품카테고리명들	NVARCHAR2(200)
		
//		logoPath1	로고이미지경로1	NVARCHAR2(200)
//		logoPath2	로고이미지경로2	NVARCHAR2(200)
//		adLogoPath1	추가로고경로1	NVARCHAR2(200)
//		adLogoPath2	추가로고경로2	NVARCHAR2(200)
//		mobDetailPath	모바일용이미지	NVARCHAR2(200)
//		shopDescription	샵상세설명	NVARCHAR2(2000)
		
//		adShopDescription	샵설명추가	NVARCHAR2(2000)
//		webNCount	웹방문자	INTEGER
//		mobNCount	모바일방문자	INTEGER
//		ranking	등수	INTEGER
//		prodCount	N/A	INTEGER

		Shop shop1 = new Shop(1,"C","Y","소녀나라","sonyunara.com"
				,  "sonyunara.com","http://www.sonyunara.com/","http://m.sonyunara.com/","10대,20대","러블리캐주얼,10대 의류"
				,"/_up/shop/logo/2014/08/1407908607012_n1.jpg","/_up/shop/logo/2014/08/1407908607012_n2.jpg"
				,"/_up/shop/logo/2014/08/1407908607012_a1.jpg","/_up/shop/logo/2014/08/1407908607012_a2.jpg"
				,"/_up/shop/logo/2014/08/1407908607012_md.jpg","대한민국 대표10대 감성쇼핑몰 소녀나라."
				,"대한민국 대표10대 감성쇼핑몰 소녀나라..   패션의류, 신발, 악세사리, 써클렌즈, 패션가발, 팬시 등 소녀들을 위한 다양한 아이템 판매"
				,415091,790711,1,0);
		Shop shop2 = new Shop(2,"C","N","육육걸즈","66girls.co.kr","m.66girls.co.kr"
				,"http://mall66.cafe24.com/","http://m.66girls.co.kr","10대","10대 의류,빅사이즈·임부복"
				,"/_up/shop/logo/2014/08/1407911056522_n1.jpg","/_up/shop/logo/2014/08/1407911056522_n2.jpg",null,null
				,"/_up/shop/logo/2014/08/1407911056522_md.jpg","자신감을 입자, 육육걸즈. 66사이즈 소녀들을 위한 여성의류 쇼핑몰,"
				,"자신감을 입자, 육육걸즈. 66사이즈 소녀들을 위한 여성의류 쇼핑몰,  아우터, 카모플라쥬, 스키니, 스커트, 슈즈 등 판매"
				,346329,740921,2,0);
		Shop shop3 = new Shop(3,"C","N","스타일난다","stylenanda.com","m.stylenanda.com","http://www.stylenanda.com/"
				,"http://m.stylenanda.com/","20대","섹시캐주얼","/_up/shop/logo/2014/08/1407912381852_n1.jpg"
				,"/_up/shop/logo/2014/08/1407912381852_n2.jpg",null,null
				,"/_up/shop/logo/2014/08/1407912381852_md.jpg","전국9개 오프라인 샵 패션중심  스타일난다"
				,"머리에서 발끝까지 스타일난다! 섹시한 컨셉 스타일링 여성의류 쇼핑몰, 티셔츠, 청바지, 스커트, 아우터, 킬힐, 블라우스 등 트렌디하고 스타일리시한"
				,320841,656160,3,0);
		Shop shop4 = new Shop(4,"C","N","고고싱","ggsing.com","m.ggsing.com","http://www.ggsing.com/"
				,"http://m.ggsing.com","10대","10대 의류","/_up/shop/logo/2014/08/1407917268705_n1.jpg"
				,"/_up/shop/logo/2014/08/1407917268705_n2.jpg",null,null
				,"/_up/shop/logo/2014/08/1407917268705_md.jpg","44~88까지 모든여성을위한 쇼핑몰 1만원만사도 평생5%할인"
				,"상큼발랄한 10대 여성의류 쇼핑몰.  티셔츠, 청바지, 맨투맨,  스커트, 가방, 신발 등상큼발랄한 10대 여성의류 쇼핑몰"
				,301340,673634,0,0);
		Shop shop5 = new Shop(5,"C","Y","메롱샵","merongshop.com","m.merongshop.com","http://www.merongshop.com/"
				,"http://m.merongshop.com/","10대,20대","10대 의류","/_up/shop/logo/2014/08/1407374447615_n1.jpg"
				,"/_up/shop/logo/2014/08/1407374447615_n2.jpg","/_up/shop/logo/2014/08/1407809169560_a1.jpg"
				,"/_up/shop/logo/2014/08/1407374343852_a2.jpg"
				,"/_up/shop/logo/2014/06/1402568523042_md.jpg","패션에 미칠것 같은  10대들을 위한 전문 쇼핑몰 메롱샵."
				,"착한가격 막퍼주는 메롱샵,패션에 미칠것같은!가슴뛰는심장이 좋다!흉내낼수 없는 이벤트,말안되는가격5500원,HOT한가격"
				,250635,455890,0,209);
		Shop shop6 = new Shop(6,"C","Y","데일리먼데이","dailymonday.com","www.dailymonday.com/m/"
				,"http://www.dailymonday.com/","http://dailymonday.com/m/","20대,30대","얼반·모던·심플"
				,"/_up/shop/logo/2014/07/1406276157135_n1.jpg","/_up/shop/logo/2014/07/1406276157135_n2.jpg"
				,"/_up/shop/logo/2014/07/1405576892100_a1.jpg","/_up/shop/logo/2014/07/1406276157135_a2.jpg"
				,"/_up/shop/logo/2014/06/1403484837221_md.jpg","감각 유니크 N 믹스매치 셀렉트샵. 심플하고 미니멀한 스타일"
				,"감각유니크 N믹스매치 셀렉트샵. 심플하고 미니멀한 스타일의 유니크 쇼핑몰.",176677,354752,0,260);
	
		// drop table
//		shopDB.drop();
//		shopDB.create();

		// 1
		System.out.println("입력할 자료 :" + shop1.toString());
		ret = shopDB.insert( shop1);
		// 2
		System.out.println("입력할 자료 :" + shop2.toString());
		ret = shopDB.insert( shop2);
		// 3
		System.out.println("입력할 자료 :" + shop3.toString());
		ret = shopDB.insert( shop3);
		// 4
		System.out.println("입력할 자료 :" + shop4.toString());
		ret = shopDB.insert( shop4);
		// 5
		System.out.println("입력할 자료 :" + shop5.toString());
		ret = shopDB.insert( shop5);

		System.out.println("insert 5개후 전체 출력  : ");
		shop6.setShopSeq(0); 
		shopDB.allListPrint(shop6);

		// find예제+insert예제 boolean
		shop6.setShopSeq(6);
		if (!shopDB.find( shop6)) {
			System.out.println("입력할 자료 : " + shop6.toString());
			ret = shopDB.insert( shop6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + shop6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		shop6.setShopSeq(0); 
		shopDB.allListPrint(shop6);

		shop6.setShopSeq(6);
		ret = shopDB.delete( shop6);

		System.out.println("delete 후 ALL 출력  : ");
		shop6.setShopSeq(0); 
		shopDB.allListPrint(shop6);

		// 사용한 디비 닫아줄것
		shopDB.close();
	}

}
