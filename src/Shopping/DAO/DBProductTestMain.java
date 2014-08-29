package Shopping.DAO;

import java.sql.Date;
import java.util.List;

import Shopping.DTO.Product;
import Common.MyBatis;

public class DBProductTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/product.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * productSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<product> productDB = new MyBatis<product>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <product> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: productDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean productDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<Product> productDB = new MyBatis<Product>("Shopping.Product");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<Product> luser = null;
		//prodSeq,shopSeq,prodCateSeq,newYn,imgPath,detailImgPath,price,dcPrice,bestOrder,stickerPath,kindSeq,couponSeq
		// DB객체생성,값설정
		//{"cateSeq":1000000,"parentCateSeq":0,"cateLevel":1,"cateName":"여성","catePath":"여성"},
		//{"cateSeq":1010000,"parentCateSeq":1000000,"cateLevel":2,"cateName":"티셔츠","catePath":"여성 > 티셔츠"},
		//{"cateSeq":1010100,"parentCateSeq":1010000,"cateLevel":3,"cateName":"후드티","catePath":"여성 > 티셔츠 > 후드티"},
		//{"cateSeq":1010101,"parentCateSeq":1010100,"cateLevel":4,"cateName":"기본 후드","catePath":"여성 > 티셔츠 > 후드티 > 기본 후드"},
		//{"cateSeq":1010102,"parentCateSeq":1010100,"cateLevel":4,"cateName":"롱 후드","catePath":"여성 > 티셔츠 > 후드티 > 롱 후드"},
		//{"cateSeq":1010103,"parentCateSeq":1010100,"cateLevel":4,"cateName":"루즈핏 후드","catePath":"여성 > 티셔츠 > 후드티 > 루즈핏 후드"},
		Product product1 = new Product(1,1,1010101,"Y","/이미지경로","/상세이미지경로",100000,80000,0,"/스티커이미지경로",1,1);
		Product product2 = new Product(2,1,1010102,"Y","/이미지경로","/상세이미지경로",110000,90000,0,"/스티커이미지경로",1,1);
		Product product3 = new Product(3,1,1010103,"Y","/이미지경로","/상세이미지경로",120000,100000,0,"/스티커이미지경로",1,1);
		Product product4 = new Product(4,1,1010101,"N","/이미지경로","/상세이미지경로",130000,110000,0,"/스티커이미지경로",1,1);
		Product product5 = new Product(5,1,1010102,"N","/이미지경로","/상세이미지경로",140000,120000,0,"/스티커이미지경로",1,1);
		Product product6 = new Product(6,1,1010103,"N","/이미지경로","/상세이미지경로",150000,130000,0,"/스티커이미지경로",1,1);
	
		// drop table
		productDB.drop();
		productDB.create();

		// 1
		System.out.println("입력할 자료 :" + product1.toString());
		ret = productDB.insert( product1);
		// 2
		System.out.println("입력할 자료 :" + product2.toString());
		ret = productDB.insert( product2);
		// 3
		System.out.println("입력할 자료 :" + product3.toString());
		ret = productDB.insert( product3);
		// 4
		System.out.println("입력할 자료 :" + product4.toString());
		ret = productDB.insert( product4);
		// 5
		System.out.println("입력할 자료 :" + product5.toString());
		ret = productDB.insert( product5);

		System.out.println("insert 5개후 전체 출력  : ");
		product6.setProdSeq(0); 
		productDB.allListPrint(product6);

		// find예제+insert예제 boolean
		product6.setProdSeq(6);
		if (!productDB.find( product6)) {
			System.out.println("입력할 자료 : " + product6.toString());
			ret = productDB.insert( product6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + product6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		product6.setProdSeq(0); 
		productDB.allListPrint(product6);

		product6.setProdSeq(6);
		ret = productDB.delete( product6);

		System.out.println("delete 후 ALL 출력  : ");
		product6.setProdSeq(0); 
		productDB.allListPrint(product6);

		// 사용한 디비 닫아줄것
		productDB.close();
	}

}
