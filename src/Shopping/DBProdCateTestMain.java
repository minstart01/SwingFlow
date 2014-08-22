package Shopping;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBProdCateTestMain {

	public static void main(String[] args) {
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/prodCate.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * prodCateSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<prodCate> prodCateDB = new MyBatis<prodCate>(); 1. 객체를 문저
		 * 생성하여 사용할것 2. <prodCate> 은 자기가 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: prodCateDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean prodCateDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<ProdCate> prodCateDB = new MyBatis<ProdCate>("Shopping.ProdCate");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<ProdCate> luser = null;

		// DB객체생성,값설정
		//{"cateSeq":1000000,"parentCateSeq":0,"cateLevel":1,"cateName":"여성","catePath":"여성"},
		//{"cateSeq":1010000,"parentCateSeq":1000000,"cateLevel":2,"cateName":"티셔츠","catePath":"여성 > 티셔츠"},
		//{"cateSeq":1010100,"parentCateSeq":1010000,"cateLevel":3,"cateName":"후드티","catePath":"여성 > 티셔츠 > 후드티"},
		//{"cateSeq":1010101,"parentCateSeq":1010100,"cateLevel":4,"cateName":"기본 후드","catePath":"여성 > 티셔츠 > 후드티 > 기본 후드"},
		//{"cateSeq":1010102,"parentCateSeq":1010100,"cateLevel":4,"cateName":"롱 후드","catePath":"여성 > 티셔츠 > 후드티 > 롱 후드"},
		//{"cateSeq":1010103,"parentCateSeq":1010100,"cateLevel":4,"cateName":"루즈핏 후드","catePath":"여성 > 티셔츠 > 후드티 > 루즈핏 후드"},
		ProdCate prodCate1 = new ProdCate(1000000,0,1,"여성","여성");
		ProdCate prodCate2 = new ProdCate(1010000,1000000,2,"티셔츠","여성 > 티셔츠");
		ProdCate prodCate3 = new ProdCate(1010100,1010000,3,"후드티","여성 > 티셔츠 > 후드티");
		ProdCate prodCate4 = new ProdCate(1010101,1010100,4,"기본 후드","여성 > 티셔츠 > 후드티 > 기본 후드");
		ProdCate prodCate5 = new ProdCate(1010102,1010100,4,"롱 후드","여성 > 티셔츠 > 후드티 > 롱 후드");
		ProdCate prodCate6 = new ProdCate(1010103,1010100,4,"루즈핏 후드","여성 > 티셔츠 > 후드티 > 루즈핏 후드");
	
		// drop table
		prodCateDB.drop();
		prodCateDB.create();

		// 1
		System.out.println("입력할 자료 :" + prodCate1.toString());
		ret = prodCateDB.insert( prodCate1);
		// 2
		System.out.println("입력할 자료 :" + prodCate2.toString());
		ret = prodCateDB.insert( prodCate2);
		// 3
		System.out.println("입력할 자료 :" + prodCate3.toString());
		ret = prodCateDB.insert( prodCate3);
		// 4
		System.out.println("입력할 자료 :" + prodCate4.toString());
		ret = prodCateDB.insert( prodCate4);
		// 5
		System.out.println("입력할 자료 :" + prodCate5.toString());
		ret = prodCateDB.insert( prodCate5);

		System.out.println("insert 5개후 전체 출력  : ");
		prodCate6.setProdCateSeq(0); 
		prodCateDB.allListPrint(prodCate6);

		// find예제+insert예제 boolean
		prodCate6.setProdCateSeq(1010103);
		if (!prodCateDB.find( prodCate6)) {
			System.out.println("입력할 자료 : " + prodCate6.toString());
			ret = prodCateDB.insert( prodCate6);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + prodCate6.toString());
		}

		

		// delete예제
		System.out.println("delete 전 ALL 출력  : ");
		prodCate6.setProdCateSeq(0); 
		prodCateDB.allListPrint(prodCate6);

		prodCate6.setProdCateSeq(1010103);
		ret = prodCateDB.delete( prodCate6);

		System.out.println("delete 후 ALL 출력  : ");
		prodCate6.setProdCateSeq(0); 
		prodCateDB.allListPrint(prodCate6);

		// 사용한 디비 닫아줄것
		prodCateDB.close();
	}

}
