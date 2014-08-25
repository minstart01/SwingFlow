package Movie;

import java.util.List;

import Common.MyBatis;

public class DBSitInfoTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/SitInfo.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * SitInfoSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<SitInfo> sitInfoDB = new
				 * MyBatis<SitInfo>(); 1. 객체를 문저 생성하여 사용할것 2. <SitInfo> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: sitInfoDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean sitInfoDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<SitInfo> sitInfoDB = new MyBatis<SitInfo>("Movie.SitInfo");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<SitInfo> luser = null;

				// DB객체생성,값설정
				SitInfo sitInfo1 = new SitInfo(1, "A3");
				SitInfo sitInfo2 = new SitInfo(2, "G10");
				SitInfo sitInfo3 = new SitInfo(2, "A9");

				
				// Test용DB insert

				// drop table
				sitInfoDB.drop();
				sitInfoDB.create();

				// 1
				System.out.println("입력할 자료 : " + sitInfo1.toString());
				ret = sitInfoDB.insert(sitInfo1);
				// 2
				System.out.println("입력할 자료 : " + sitInfo2.toString());
				ret = sitInfoDB.insert(sitInfo2);

				System.out.println("insert 2개후 전체 출력  : ");
				sitInfo3.setrNo(0);
				sitInfoDB.allListPrint(sitInfo3);

				// find예제+insert예제 boolean
				sitInfo3.setrNo(3);
				if (!sitInfoDB.find(sitInfo3)) {
					System.out.println("입력할 자료 : " + sitInfo3.toString());
					ret = sitInfoDB.insert(sitInfo3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + sitInfo3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				sitInfo3.setrNo(0);
				sitInfoDB.allListPrint(sitInfo3);

				sitInfo3.setrNo(3);
				ret = sitInfoDB.delete(sitInfo3);

				System.out.println("delete 후 ALL 출력  : ");
				sitInfo3.setrNo(0);
				sitInfoDB.allListPrint(sitInfo3);
				// 사용한 디비 닫아줄것
				sitInfoDB.close();

			}

		}
