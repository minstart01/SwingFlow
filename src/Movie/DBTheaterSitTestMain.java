package Movie;

import java.util.List;

import Common.MyBatis;

public class DBTheaterSitTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/TheaterSit.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * TheaterSitSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<TheaterSit> theaterSitDB = new
				 * MyBatis<TheaterSit>(); 1. 객체를 문저 생성하여 사용할것 2. <TheaterSit> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: theaterSitDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean theaterSitDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<TheaterSit> theaterSitDB = new MyBatis<TheaterSit>("Movie.TheaterSit");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<TheaterSit> luser = null;

				// DB객체생성,값설정
				TheaterSit theaterSit1 = new TheaterSit(1, 1, "A", 3, 75);
				TheaterSit theaterSit2 = new TheaterSit(1, 2, "B", 3, 75);
				TheaterSit theaterSit3 = new TheaterSit(1, 5, "C", 3, 75);

				
				// Test용DB insert

				// drop table
				theaterSitDB.drop();
				theaterSitDB.create();

				// 1
				System.out.println("입력할 자료 : " + theaterSit1.toString());
				ret = theaterSitDB.insert(theaterSit1);
				// 2
				System.out.println("입력할 자료 : " + theaterSit2.toString());
				ret = theaterSitDB.insert(theaterSit2);

				System.out.println("insert 2개후 전체 출력  : ");
				theaterSit3.settCode(0);
				theaterSitDB.allListPrint(theaterSit3);

				// find예제+insert예제 boolean
				theaterSit3.settCode(3);
				if (!theaterSitDB.find(theaterSit3)) {
					System.out.println("입력할 자료 : " + theaterSit3.toString());
					ret = theaterSitDB.insert(theaterSit3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + theaterSit3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				theaterSit3.settCode(0);
				theaterSitDB.allListPrint(theaterSit3);

				theaterSit3.settCode(10);
				ret = theaterSitDB.delete(theaterSit3);

				System.out.println("delete 후 ALL 출력  : ");
				theaterSit3.settCode(0);
				theaterSitDB.allListPrint(theaterSit3);
				// 사용한 디비 닫아줄것
				theaterSitDB.close();

			}

		}
