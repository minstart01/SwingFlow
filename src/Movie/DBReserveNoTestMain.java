package Movie;

import java.util.List;

import Common.MyBatis;

public class DBReserveNoTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/ReserveNo.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * ReserveNoSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<ReserveNo> reserveNoDB = new
				 * MyBatis<ReserveNo>(); 1. 객체를 문저 생성하여 사용할것 2. <ReserveNo> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: reserveNoDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean reserveNoDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<ReserveNo> reserveNoDB = new MyBatis<ReserveNo>("Movie.ReserveNo");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<ReserveNo> luser = null;

				// DB객체생성,값설정
				ReserveNo reserveNo1 = new ReserveNo(1, 8000, 9000);
				ReserveNo reserveNo2 = new ReserveNo(2, 9000, 1000);
				ReserveNo reserveNo3 = new ReserveNo(2, 9000, 9000);

				
				// Test용DB insert

				// drop table
				reserveNoDB.drop();
				reserveNoDB.create();

				// 1
				System.out.println("입력할 자료 : " + reserveNo1.toString());
				ret = reserveNoDB.insert(reserveNo1);
				// 2
				System.out.println("입력할 자료 : " + reserveNo2.toString());
				ret = reserveNoDB.insert(reserveNo2);

				System.out.println("insert 2개후 전체 출력  : ");
				reserveNo3.setrNo(0);
				reserveNoDB.allListPrint(reserveNo3);

				// find예제+insert예제 boolean
				reserveNo3.setrNo(3);
				if (!reserveNoDB.find(reserveNo3)) {
					System.out.println("입력할 자료 : " + reserveNo3.toString());
					ret = reserveNoDB.insert(reserveNo3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + reserveNo3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				reserveNo3.setrNo(0);
				reserveNoDB.allListPrint(reserveNo3);

				reserveNo3.setrNo(3);
				ret = reserveNoDB.delete(reserveNo3);

				System.out.println("delete 후 ALL 출력  : ");
				reserveNo3.setrNo(0);
				reserveNoDB.allListPrint(reserveNo3);
				// 사용한 디비 닫아줄것
				reserveNoDB.close();

			}

		}
