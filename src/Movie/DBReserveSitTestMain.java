package Movie;

import java.util.List;

import Common.MyBatis;
import Movie.DTO.ReserveSit;

public class DBReserveSitTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/ReserveSit.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * ReserveSitSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<ReserveSit> reserveSitDB = new
				 * MyBatis<ReserveSit>(); 1. 객체를 문저 생성하여 사용할것 2. <ReserveSit> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: reserveSitDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean reserveSitDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<ReserveSit> reserveSitDB = new MyBatis<ReserveSit>("Movie.DTO.ReserveSit");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<ReserveSit> luser = null;

				// DB객체생성,값설정
				ReserveSit reserveSit1 = new ReserveSit(1, 8000, 9000);
				ReserveSit reserveSit2 = new ReserveSit(2, 9000, 1000);
				ReserveSit reserveSit3 = new ReserveSit(2, 9000, 9000);

				
				// Test용DB insert

				// drop table
				reserveSitDB.drop();
				reserveSitDB.create();

				// 1
				System.out.println("입력할 자료 : " + reserveSit1.toString());
				ret = reserveSitDB.insert(reserveSit1);
				// 2
				System.out.println("입력할 자료 : " + reserveSit2.toString());
				ret = reserveSitDB.insert(reserveSit2);

				System.out.println("insert 2개후 전체 출력  : ");
				reserveSit3.setMiNo(0);
				reserveSitDB.allListPrint(reserveSit3);

				// find예제+insert예제 boolean
				reserveSit3.setMiNo(3);
				if (!reserveSitDB.find(reserveSit3)) {
					System.out.println("입력할 자료 : " + reserveSit3.toString());
					ret = reserveSitDB.insert(reserveSit3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + reserveSit3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				reserveSit3.setMiNo(0);
				reserveSitDB.allListPrint(reserveSit3);

				reserveSit3.setMiNo(10);
				ret = reserveSitDB.delete(reserveSit3);

				System.out.println("delete 후 ALL 출력  : ");
				reserveSit3.setMiNo(0);
				reserveSitDB.allListPrint(reserveSit3);
				// 사용한 디비 닫아줄것
				reserveSitDB.close();

			}

		}
