package Movie;

import java.util.List;

import Common.MyBatis;

public class DBTheaterInfoTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/TheaterInfo.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * TheaterInfoSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<TheaterInfo> theaterInfoDB = new
				 * MyBatis<TheaterInfo>(); 1. 객체를 문저 생성하여 사용할것 2. <TheaterInfo> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: theaterInfoDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean theaterInfoDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<TheaterInfo> theaterInfoDB = new MyBatis<TheaterInfo>("Movie.TheaterInfo");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<TheaterInfo> luser = null;

				// DB객체생성,값설정
				TheaterInfo theaterInfo1 = new TheaterInfo("CGV", 2, "상세주소", 5, 500, "02-123-5678");
				TheaterInfo theaterInfo2 = new TheaterInfo("롯데시네마", 27, "상세주소1", 3, 200, "02-123-5678");
				TheaterInfo theaterInfo3 = new TheaterInfo("CGV", 3, "상세주소2", 4, 300, "02-123-5678");

				
				// Test용DB insert

				// drop table
				theaterInfoDB.drop();
				theaterInfoDB.create();

				// 1
				System.out.println("입력할 자료 : " + theaterInfo1.toString());
				ret = theaterInfoDB.insert(theaterInfo1);
				// 2
				System.out.println("입력할 자료 : " + theaterInfo2.toString());
				ret = theaterInfoDB.insert(theaterInfo2);

				System.out.println("insert 2개후 전체 출력  : ");
				theaterInfo3.settCode(0);
				theaterInfoDB.allListPrint(theaterInfo3);

				// find예제+insert예제 boolean
				theaterInfo3.settCode(3);
				if (!theaterInfoDB.find(theaterInfo3)) {
					System.out.println("입력할 자료 : " + theaterInfo3.toString());
					ret = theaterInfoDB.insert(theaterInfo3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + theaterInfo3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				theaterInfo3.settCode(0);
				theaterInfoDB.allListPrint(theaterInfo3);

				theaterInfo3.settCode(10);
				ret = theaterInfoDB.delete(theaterInfo3);

				System.out.println("delete 후 ALL 출력  : ");
				theaterInfo3.settCode(0);
				theaterInfoDB.allListPrint(theaterInfo3);
				// 사용한 디비 닫아줄것
				theaterInfoDB.close();

			}

		}
